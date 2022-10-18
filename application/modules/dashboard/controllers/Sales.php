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

		$this->db->query("SET sql_mode = ''");
 	}

 	public function index()
 	{
 		if (!$this->session->userdata('isLogIn')) {
			redirect('login');
		}

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
 		if (!$this->session->userdata('isLogIn')) {
			redirect('login');
		}

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
 		if (!$this->session->userdata('isLogIn')) {
			redirect('login');
		}
		
 		$select = "
 			s.id,
 			s.booking_id,
 			r.name AS route,
 			r.id AS route_id,
 			s.name AS name,
 			s.ci AS ci,
 			s.seat_type,
 			b.booking_date AS date,
 			TIMESTAMPDIFF(YEAR, s.birth, CURDATE()) AS age,
 			ls.name AS shipment,
 			ld.name AS disembarkation,
 			b.agent_id AS agent,
 			c.logo,
 			c.name AS title,
 			c.address,
 			c.nit,
 			c.lane
 		";

 		$data['sale'] = $this->db->select($select)
 			->from('sales s')
 			->join('ws_booking_history b', 'b.id_no = s.booking_id', 'left')
 			->join('trip_route r', 'r.id = b.trip_route_id', 'left')
 			->join('trip_location ls', 'ls.id = r.start_point', 'left')
 			->join('trip_location ld', 'ld.id = r.end_point', 'left')
 			->join('trip_assign ta', 'ta.trip = b.trip_id_no', 'left')
 			->join('companies c', 'ta.company_id = c.id', 'left')
 			->where('s.booking_id', $id)
 			->get()
 			->row();

 		$data['bookings'] = $this->db->from('ws_booking_history')->where('id_no', $id)->get()->row();

 		$data['seats'] = explode(',', $data['bookings']->seat_numbers);
 		$data['seats'] = array_map('trim', $data['seats']);
 		$data['seats'] = array_filter($data['seats']);

 		$data['module'] = "dashboard";
		$data['page']   = "sales/print";

		echo Modules::run('template/layout', $data);
 	}
}
