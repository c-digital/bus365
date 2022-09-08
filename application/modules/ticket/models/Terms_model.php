<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Terms_model extends CI_Model {
 

// terms and condition  info
	public function terms_and_cond_data($id = null)
	{
		
		// return booking data
    	return $this->db->select("*")
            ->from('payment_informations')
            ->where('id',$id)
            ->get()
            ->row();
	}
	public function term_and_condition_list(){
		return $terms = $this->db->select('*')
		                  ->from('payment_informations')
		                  ->get()
		                  ->result();
	}
	// terms delete
	public function terms_delete($id = null)
	{
		$this->db->where('id',$id)
			->delete('payment_informations');

		if ($this->db->affected_rows()) {
			return true;
		} else {
			return false;
		}
	} 
// update terms and condition
	public function update_condition($data = [])
	{
		return $this->db->where('id',$data['id'])
			->update('payment_informations',$data); 
	} 
	//create_terms
	public function create_terms($data = [])
	{	 
		return $this->db->insert('payment_informations',$data);
	}

		public function fleet_dropdown()
	{
		$data = $this->db->select("*")
			->from("fleet_type")
			->where('status', 1) 
			->get()
			->result();

		$list[''] = display('select_option');
		if (!empty($data)) {
			foreach($data as $value)
				$list[$value->id] = $value->type;
		} 
		return $list;
	}
	// How to part Start

		public function create_howtouse($data = [])
	{	 
		return $this->db->insert('how_to_use',$data);
	}

		public function update_howtouse($data = [])
	{
		return $this->db->where('id',$data['id'])
			->update('how_to_use',$data); 
	}
	public function howtouseinfo($id){
    return $this->db->select("*")
            ->from('how_to_use')
            ->where('id',$id)
            ->get()
            ->row();

	}
}

 