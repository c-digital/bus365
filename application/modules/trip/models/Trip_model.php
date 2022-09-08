<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Trip_model extends CI_Model {
 
	private $table = "trip";


	public function create($data = [])
	{	 
		return $this->db->insert($this->table,$data);
	}


	public function read()
	{
		return $this->db->select("
			a.*,b.*,c.*,d.*")
		->from("trip AS a")
		->join('fleet_type AS b', 'a.type = b.id')
		->join('trip_route AS c', 'a.route = c.id')
		->join('shedule AS d', 'a.shedule_id = d.shedule_id')
        ->limit($limit, $start)
		->get()
		->result();
	} 


	public function findById($id = null)
	{
		return $this->db->select("a.*,b.type as types,c.name as route_id,CONCAT_WS(' - ', d.start, d.end) AS shedule")
			->from('trip a')
			->join('fleet_type b','a.type = b.id')
			->join('trip_route c','a.route = c.id')
			->join('shedule d','a.shedule_id = d.shedule_id')
			->where('a.trip_id',$id) 
			->get()
			->row();
	} 
 
	public function update($data = [])
	{
		return $this->db->where('trip_id',$data['trip_id'])
			->update($this->table,$data); 
	} 


	public function delete($id = null)
	{
		$this->db->where('trip_id',$id)
			->delete($this->table);

		if ($this->db->affected_rows()) {
			return true;
		} else {
			return false;
		}
	} 

		public function dropdown()
	{
		$data = $this->db->select("*")
			->from('trip_route')
			->where('status', 1) 
			->order_by('name', 'desc')
			->get()
			->result();

		$list[''] = display('select_option');
		if (!empty($data)) {
			foreach($data as $value)
				$list[$value->name] = $value->name;
			return $list;
		} else {
			return false; 
		}
	}


	public function shedules()
	{
		$data = $this->db->select("*")
			->from('shedule')
			->order_by('shedule_id', 'desc')
			->get()
			->result();

		$list[''] = display('select_option');
		if (!empty($data)) {
			foreach($data as $value)
				$list[$value->start.' - '.$value->end] = $value->start.' - '.$value->end;
			return $list;
		} else {
			return false; 
		}
	}

	public function types()
	{
		$data = $this->db->select("*")
			->from('fleet_type')
			->order_by('id', 'desc')
			->get()
			->result();

		$list[''] = display('select_option');
		if (!empty($data)) {
			foreach($data as $value)
				$list[$value->type] = $value->type;
			return $list;
		} else {
			return false; 
		}
	}

}
