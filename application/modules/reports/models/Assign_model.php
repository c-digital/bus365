<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Assign_model extends CI_Model {
 
	public function read($data= array())
	{
		$start_date = date('Y-m-d', strtotime($data->start_date));
		$end_date   = date('Y-m-d', strtotime($data->end_date));

		 $this->db->select("a.*,b.reg_no,c.*,CONCAT_WS(' ', d.first_name, d.second_name) AS driver_name,CASE WHEN a.closed_by_id THEN 'bg-success' ELSE NULL END AS isClosed,e.name AS trip_route_name")
	      ->from("trip_assign a")
	      ->join('trip c','a.trip = c.trip_id','left')
          ->join('fleet_registration b','a.fleet_registration_id = b.id','left')
          ->join('employee_history d','a.driver_id = d.id','left')
          ->join('trip_route e','c.route = e.id','left')
		  ->where('a.status', 1)
		  ->order_by('a.id','desc');

		switch ($data->filter) 
		{
    		case 'trip':
    			$this->db->where('a.trip', $data->trip);
    			break; 
    		case 'fleet':
    			$this->db->where('a.fleet_registration_id', $data->fleet);
    			break; 
    		case 'route':
    			$this->db->where('c.route', $data->route);
    			break; 
    		case 'driver':
    			$this->db->where('d.id', $data->driver);
    			break; 
    	} 
        $this->db->where("DATE(a.assign_time) BETWEEN '$start_date' AND '$end_date'", null, false);
		 
        return $this->db->limit($data->limit, $data->offset)
			->get()
			->result(); 
	}   
// trip list
	public function tripList()
	{
		$data = $this->db->select("*")
			->from('trip')
			->where('status', 1) 
			->order_by('trip_id', 'desc')
			->get()
			->result();

		$list[''] = display('select_option');
		if (!empty($data)) {
			foreach($data as $value)
				$list[$value->trip_id] = $value->trip_title;
			return $list;
		} else {
			return false; 
		}
	}
 
	public function countRecord($data= array())
	{

		$start_date = date('Y-m-d', strtotime($data->start_date));
		$end_date   = date('Y-m-d', strtotime($data->end_date));

		 $this->db->select("a.*,b.reg_no,c.*,CONCAT_WS(' ', d.first_name, d.second_name) AS driver_name,CASE WHEN a.closed_by_id THEN 'bg-success' ELSE NULL END AS isClosed,e.name AS trip_route_name")
	      ->from("trip_assign a")
	      ->join('trip c','a.trip = c.trip_id','left')
          ->join('fleet_registration b','a.fleet_registration_id = b.id','left')
          ->join('employee_history d','a.driver_id = d.id','left')
          ->join('trip_route e','c.route = e.id','left')
		  ->where('a.status', 1);

		switch ($data->filter) 
		{
    		case 'trip':
    			$this->db->where('a.trip', $data->trip);
    			break; 
    		case 'fleet':
    			$this->db->where('a.fleet_registration_id', $data->fleet);
    			break; 
    		case 'route':
    			$this->db->where('e.id', $data->route);
    			break; 
    		case 'driver':
    			$this->db->where('d.id', $data->driver);
    			break; 
    	} 
        $this->db->where("DATE(a.assign_time) BETWEEN '$start_date' AND '$end_date'", null, false);
		  
        return $this->db->get()->num_rows(); 
	}   



	public function fleetList()
	{
		$data = $this->db->select("*")
			->from('fleet_registration')
			->where('status', 1) 
			->get()
			->result();

		$list[''] = display('select_option');
		if (!empty($data)) {
			foreach($data as $value)
				$list[$value->id] = $value->reg_no;
			return $list;
		} else {
			return false; 
		}
	}  


	public function routeList()
	{
		$data = $this->db->select("*")
			->from('trip_route')
			->where('status', 1) 
			->order_by('name', 'ASC')
			->get()
			->result();

		$list[''] = display('select_option');
		if (!empty($data)) {
			foreach($data as $value)
				$list[$value->id] = $value->name;
			return $list;
		} else {
			return false; 
		}
	}

	public function driverList()
	{
		$data = $this->db->select("id, CONCAT_WS(' ', first_name, second_name) AS name")
			->from("employee_history")
			->like('position','driver', 'both')
			->get()
			->result();

		$list[''] = display('select_option');
		if (!empty($data)) {
			foreach($data as $value)
				$list[$value->id] = $value->name;
			return $list;
		} else {
			return false; 
		}
	}


}

