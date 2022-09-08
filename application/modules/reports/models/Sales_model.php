<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Sales_model extends CI_Model {
public function read($data= array())
	{
		$start_date = date('Y-m-d', strtotime($data->start_date));
		$end_date   = date('Y-m-d', strtotime($data->end_date));


		$this->db->select("
				tb.*, 
				tr.name AS route_name, 
				trp.trip_title
			")
			->from("tkt_booking AS tb")
			->join("trip_route AS tr", "tr.id = tb.trip_route_id", "left") 
			->join("trip AS trp", "trp.trip_id = tb.trip_id_no", "left") 
            ->group_start()
                ->where("tb.tkt_refund_id IS NULL", null, false)
                ->or_where("tb.tkt_refund_id", 0)
                ->or_where("tb.tkt_refund_id", null)
            ->group_end();
 
		switch ($data->filter) 
		{
    		case 'trip':
    			$this->db->where('tb.trip_id_no', $data->trip);
    			break; 
    		case 'route':
    			$this->db->where('tb.trip_route_id', $data->route);
    			break; 
    	} 
        $this->db->where("DATE(tb.booking_date) BETWEEN '$start_date' AND '$end_date'", null, false);


        return $this->db->limit($data->limit, $data->offset)
        	->order_by('booking_date', 'desc')
			->get()
			->result(); 
	} 

	public function countRecord($data= array())
	{
		$start_date = date('Y-m-d', strtotime($data->start_date));
		$end_date   = date('Y-m-d', strtotime($data->end_date));


		$this->db->select("
				tb.*, 
				tr.name AS route_name,
				trp.trip_title 
			")
			->from("tkt_booking AS tb")
			->join("trip_route AS tr", "tr.id = tb.trip_route_id", "left") 
			->join("trip AS trp", "trp.trip_id = tb.trip_id_no", "left") 
            ->group_start()
                ->where("tb.tkt_refund_id IS NULL", null, false)
                ->or_where("tb.tkt_refund_id", 0)
                ->or_where("tb.tkt_refund_id", null)
            ->group_end();
 
		switch ($data->filter) 
		{
    		case 'trip':
    			$this->db->where('tb.trip_id_no', $data->trip);
    			break; 
    		case 'route':
    			$this->db->where('tb.trip_route_id', $data->route);
    			break; 
    	} 
        $this->db->where("DATE(tb.booking_date) BETWEEN '$start_date' AND '$end_date'", null, false);


        return $this->db->get()->num_rows();
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
	//company information

	public function company_info(){
		return $this->db->select('*')
		                ->from('ws_setting')
		                ->get()
		                ->row();
	}
}