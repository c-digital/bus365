<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Template_model extends CI_Model {

	public function notifications($id = null)
	{
		return  $this->db->select(" 
			COUNT(receiver_id) as total
		")
			->from('message')
			->where('receiver_id', $id)
			->where('receiver_status', 0)
			->group_by('receiver_status')
			->get()
			->row();
	}

	public function messages($id = null)
	{
		return $this->db->select("
				message.id, 
				message.subject, 
				message.message, 
				message.datetime, 
				user.image, 
				IF (ISNULL(user.firstname) || ISNULL(user.lastname), 'Unauthorized', CONCAT_WS(' ', user.firstname, user.lastname)) AS sender_name
			")
			->from("message")
			->join('user', 'user.id = message.sender_id','left')
			->where('message.receiver_id', $id)
			->where('message.receiver_status', 0)
			->order_by('message.datetime','desc')
			->get()
			->result();
	} 
 
	public function setting()
	{
		return $this->db->get('setting')->row();
	}

	public function fleetbus()
	{
		return  $this->db->select(" 
			COUNT(fleet_registration_id) as total
		")
			->from('trip_assign')
			->where('closed_by_id', 0)
			->get()
			->row();
	}

// booking notice 
	public function booking_n()
	{
		$this->db->select('count(id) as booked_n');
		$this->db->from('ticket_notification');
		
		if($this->session->userdata('isAdmin')==1){
		$this->db->where('admin_seen',0);
		}
		if($this->session->userdata('isAdmin')==0){
		$this->db->where('is_seen',0);
		}
		$this->db->where('booked_by',0);
		 $query =$this->db->get();
		 return $query->row();
	}
	public function booking_notice_details()
	{
		$this->db->select('a.*,b.name');
		$this->db->from('ticket_notification a');
		$this->db->join('trip_route b','a.route_id = b.id');
		if($this->session->userdata('isAdmin')==1){
		$this->db->where('a.admin_seen',0);
		}
		if($this->session->userdata('isAdmin')==0){
		$this->db->where('a.is_seen',0);
		}
		$this->db->where('booked_by',0);
		 $query =$this->db->get();
		 return $query->result();
	}
	public function fitness_expire(){
	    $this->db->select('count(id) as expire');
		$this->db->from('ftn_fitness_period');
		$this->db->where('end_date <=',date('Y-m-d'));
		 $query =$this->db->get();
		 return $query->row();
	}
}
 