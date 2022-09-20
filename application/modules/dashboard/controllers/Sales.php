<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Sales extends MX_Controller
{
	public function __construct()
 	{
 		parent::__construct();

 		$this->load->model(array(
			'sales_model'
		));

		if (!$this->session->userdata('isLogIn')) {
			redirect('login');
		}
 	}

 	public function index()
 	{
 		$data['module'] = "dashboard";
		$data['page']   = "sales/index";

		$data['sales'] = $this->db->select('*')
							->from('sales')
							->get()
							->result();

		echo Modules::run('template/layout', $data);
 	}

 	public function create()
 	{
 		$data['location_dropdown'] = $this->sales_model->location_dropdown();

 		$getStartPoint = $this->input->get('start_point');
 		$getEndPoint = $this->input->get('end_point');
 		$getDate = $this->input->get('date');
 		$getFleetType = $this->input->get('fleet_type');

 		$data['b_date'] =  date('Y-m-d', strtotime($getDate));

 		$data['search'] = (object) $postData = array(
			'start_point' => (!empty($postStartPoint)?$postStartPoint:$getStartPoint),
			'end_point'   => (!empty($postEndPoint)?$postEndPoint:$getEndPoint),
			'date'        => date("Y-m-d", strtotime(!empty($getDate)?$getDate:date('Y-m-d'))),
			'fleet_type'  => (!empty($postFleetType)?$postFleetType:$getFleetType),
		);

		$data['fleet_dropdown'] = $this->sales_model->fleet_dropdown();

		if ($getStartPoint && $getEndPoint && $getDate && $getFleetType) {
			$data['trip_list'] = $this->sales_model->trip_list($postData);
		}

		$data['appSetting'] = $this->sales_model->read_setting();

 		$data['module'] = "dashboard";
		$data['page']   = "sales/create";

		echo Modules::run('template/layout', $data);
 	}

 	public function getInfo()
 	{
 		$nid = $this->input->get('nid');

 		$select = "
 			CONCAT(firstname, ' ', lastname) AS name,
 			phone,
 			date_birth AS birth
 		";

 		$result = $this->db->select($select)
 			->from('tkt_passenger')
 			->where('nid', $nid)
 			->get()
 			->row();

 		echo json_encode($result);
 	}

 	public function ticket($id)
 	{
 		$select = "
 			s.booking_id
 		";

 		$data['sale'] = $this->db->select($select)
 			->from('sales s')
 			->where('id', $id)
 			->get()
 			->row();

 		echo $this->load->view('print', $data);
 	}
}
