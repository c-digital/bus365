<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Notice_model extends CI_Model {
 
	public function update($data = [])
	{
		return $this->db->where('id',$data['id'])
			->update('ticket_notification',$data); 
	} 
 

public function booking_notice_details($id)
	{
		
		return $this->db->select('*')
		->from('ticket_notification')
		->where('id',$id)
		->get()
		->row();

	}
	// all update 
	public function all_update_admin($data = [])
	{
		return $this->db->where('admin_seen',0)
			->update('ticket_notification',$data); 
	} 
 public function all_update_user($data = [])
	{
		return $this->db->where('is_seen',0)
			->update('ticket_notification',$data); 
	} 
	
}