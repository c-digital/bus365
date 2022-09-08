<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Assign_model extends CI_Model {
 
	private $table = "trip_assign";


	public function create($data = [])
	{	 
		//print_r($data);exit;
		return $this->db->insert($this->table, $data);
	}

	public function read($limit = null, $start = null)
	{
	return $this->db->select("a.*,b.reg_no,c.*,CONCAT_WS(' ', d.first_name, d.second_name) AS driver_name,CASE WHEN a.closed_by_id THEN 'bg-success' ELSE NULL END AS isClosed,e.name AS trip_route_name")
	      ->from("trip_assign a")
	      ->join('trip c','a.trip = c.trip_id','left')
          ->join('fleet_registration b','a.fleet_registration_id = b.id','left')
          ->join('employee_history d','a.driver_id = d.id','left')
          ->join('trip_route e','c.route = e.id','left')
          ->order_by('a.id','desc')
          ->limit($limit, $start)
		  ->get()
		  ->result();

	} 

	public function findById($id = null)
	{
		return $this->db->select("
			a.*,
			c.*, 
			b.reg_no AS fleet_registration_name,
			e.name AS trip_route_name,
			CONCAT_WS(' ', d.first_name, d.second_name) AS driver_name,
			CONCAT_WS(' ', a1.first_name, a1.second_name) AS assistant_1_name, 
			CONCAT_WS(' ', a2.first_name, a2.second_name) AS assistant_2_name, 
			CONCAT_WS(' ', a3.first_name, a3.second_name) AS assistant_3_name,
			CONCAT_WS(' ', u.firstname, u.lastname) AS closed_by_id
		")
		->from("trip_assign a")
	    ->join('trip c','a.trip = c.trip_id','left')
	    ->join('trip_route e','c.route = e.id','left')
        ->join('fleet_registration b','a.fleet_registration_id = b.id','left')
        ->join('employee_history d','a.driver_id = d.id','left')
		->join('employee_history AS a1', 'a1.id = a.assistant_1', 'left')
		->join('employee_history AS a2', 'a2.id = a.assistant_2', 'left')
		->join('employee_history AS a3', 'a3.id = a.assistant_3', 'left')
		->join('user AS u', 'u.id = a.closed_by_id', 'left')
		->where('a.id', $id)
		->get()
		->row();
	} 
 

	public function findByIdNo($id_no = null)
	{
		return $this->db->select("
			t.*, 
			fr.reg_no AS fleet_registration_name,
			tr.name AS trip_route_name,
			CONCAT_WS(' ', d.first_name, d.second_name) AS driver_name,
			CONCAT_WS(' ', a1.first_name, a1.second_name) AS assistant_1_name, 
			CONCAT_WS(' ', a2.first_name, a2.second_name) AS assistant_2_name, 
			CONCAT_WS(' ', a3.first_name, a3.second_name) AS assistant_3_name,
			CONCAT_WS(' ', u.firstname, u.lastname) AS closed_by_id
		")->from("trip_assign AS t")
		->join('trip AS tp', 'tp.trip_id = t.trip', 'left')
		->join('fleet_registration AS fr', 't.fleet_registration_id =fr.id', 'left')
		->join('trip_route AS tr', 'tr.id = tp.route', 'left')
		->join('employee_history AS d', 'd.id = t.driver_id', 'left')
		->join('employee_history AS a1', 'a1.id = t.assistant_1', 'left')
		->join('employee_history AS a2', 'a2.id = t.assistant_2', 'left')
		->join('employee_history AS a3', 'a3.id = t.assistant_3', 'left')
		->join('user AS u', 'u.id = t.closed_by_id', 'left')
		->where('t.id_no', $id_no)
		->get()
		->row();
	} 
 
	public function update($data = [])
	{
		return $this->db->where('id',$data['id'])
			->update($this->table,$data); 
	} 


	public function delete($id = null)
	{
		$this->db->where('id',$id)
			->delete($this->table);

		if ($this->db->affected_rows()) {
			return true;
		} else {
			return false;
		}
	} 

 
	public function readOnlyClosedTrip($limit = null, $start = null)
	{
		return $this->db->select("a.*,b.reg_no,c.*,CONCAT_WS(' ', d.first_name, d.second_name) AS driver_name,e.name AS trip_route_name")
	      ->from("trip_assign a")
	      ->join('trip c','a.trip = c.trip_id','left')
          ->join('fleet_registration b','a.fleet_registration_id = b.id','left')
          ->join('employee_history d','a.driver_id = d.id','left')
          ->join('trip_route e','c.route = e.id','left')
		 ->where_not_in('a.closed_by_id', ['', 0])
         ->limit($limit, $start)
		 ->get()
		 ->result();
	} 



	public function fleet_dropdown()
	{
		$data = $this->db->select("*")
			->from("fleet_registration")
			->where('is_assign',0)
			->where('status',1)
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
	// Fleet List for update
	public function fleet_dropdown_update()
	{
		$data = $this->db->select("*")
			->from("fleet_registration")
			->where('status',1)
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

	public function driver_dropdown()
	{

    $data = $this->db->select("id, CONCAT_WS(' ',first_name, second_name) AS name")
			->from("employee_history")
			->where('position','Driver')
			->where('is_assign',0)
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
	// update driver dropdown
	public function driver_dropdown_update()
	{

    $data = $this->db->select("id, CONCAT_WS(' ',first_name, second_name) AS name")
			->from("employee_history")
			->where('position','Driver')
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

	public function assistant_dropdown()
	{
		 $data = $this->db->select("id, CONCAT_WS(' ',first_name, second_name) AS name")
			->from("employee_history")
			->where('position','Assistant')
			->where('is_assign',0)
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
	
	// Update dropdowdn
	public function assistant_dropdown_update()
	{
		 $data = $this->db->select("id, CONCAT_WS(' ',first_name, second_name) AS name")
			->from("employee_history")
			->where('position','Assistant')
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
// insert shedule
public function create_shedule($data = [])
	{	 
		return $this->db->insert('shedule', $data);
	}
	public function update_shedule($data = [])
	{
		return $this->db->where('shedule_id',$data['shedule_id'])
			->update('shedule',$data); 
	} 

	public function findById_shedule($id = null)
	{
		return $this->db->select("*")->from("shedule ")
		->where('shedule_id', $id)
		->get()
		->row();
	} 
	public function shedule_list(){
		return $this->db->select("*")
					->from("shedule ")
					->get()
					->result();
	}

	public function delete_shedule($id = null)
	{
		$this->db->where('shedule_id',$id)
			->delete('shedule');

		if ($this->db->affected_rows()) {
			return true;
		} else {
			return false;
		}
	} 

	public function shedule_dropdown()
	{
		$data = $this->db->select("shedule_id, CONCAT_WS(' - ', start, end) AS shedule_time")
			->from("shedule")
			->get()
			->result();

		$list[''] = display('select_option');
		if (!empty($data)) {
			foreach($data as $value)
				$list[$value->shedule_id] = $value->shedule_time;
			return $list;
		} else {
			return false; 
		}
	}

	public function trip_dropdown()
	{
		$data = $this->db->select("*")
			->from("trip")
			->where('status', 1) 
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
}
