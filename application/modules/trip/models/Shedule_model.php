<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Shedule_model extends CI_Model {
 


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
