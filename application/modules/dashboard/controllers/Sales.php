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
 			name,
 			phone,
 			birth
 		";

 		$result = [];

 		$name = $this->db->select($select)
 			->from('sales')
 			->where('ci', $nid)
 			->where('name !=', '')
 			->get()
 			->row()
 			->name;

 		$phone = $this->db->select($select)
 			->from('sales')
 			->where('ci', $nid)
 			->where('phone !=', '')
 			->get()
 			->row()
 			->phone;

 		$birth = $this->db->select($select)
 			->from('sales')
 			->where('ci', $nid)
 			->where('birth !=', '')
 			->get()
 			->row()
 			->birth;

 		$result['name'] = $name;
 		$result['phone'] = $phone;
 		$result['birth'] = $birth;

 		echo json_encode($result);
 	}

 	public function ticket($id)
 	{
 		$select = "
 			s.booking_id,
 			c.logo AS company_logo,
 			c.name AS company_name,
 			c.nit AS company_nit,
 			c.address AS company_address,
 			b.booking_date AS date,
 			CONCAT(u.agent_first_name, ' ', u.agent_second_name) AS agent
 		";

 		$data['sale'] = $this->db->select($select)
 			->from('sales s')
 			->join('ws_booking_history b', 'b.id_no = s.booking_id', 'left')
 			->join('trip_assign a', 'b.trip_id_no = a.trip', 'left')
 			->join('companies c', 'a.company_id = c.id', 'left')
 			->join('agent_info u', 'b.agent_id = u.agent_id', 'left')
 			->where('s.id', $id)
 			->get()
 			->row();

 		echo $this->load->view('print', $data);
 	}
}
