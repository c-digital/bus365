<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Agent_model extends CI_Model {
// Agent Log/Agent summary
 public function agent_log($limit, $start){
  $this->db->select('a.*,count(b.booking_id) as booking_id,sum(b.total_price*b.	commission_rate/100) as total_commission,sum(b.total_price) as total_amount');
  $this->db->from('agent_info a');
  $this->db->join('agent_ledger b','b.agent_id=a.agent_id','left');
  if($this->session->userdata('isAdmin')==0){
 $this->db->where('a.agent_id',$this->session->userdata('id'));
  }
  $this->db->where('b.booking_id !=','');
  $this->db->limit($limit, $start);
  $this->db->group_by('b.agent_id');
  $this->db->order_by('a.agent_id', 'desc');
  $query=$this->db->get();
     if($query->num_rows() > 0){
      return $query->result();
     }
     return false;	
}

// Agent drop down
public function agent_list(){
	 $this->db->select('*');
	        $this->db->from('agent_info');
           if($this->session->userdata('isAdmin')==0){
         $this->db->where('agent_email',$this->session->userdata('email'));
  } 
          $query = $this->db->get();
           $data =$query->result();
           $list[''] = display('select_option');
		if (!empty($data)) {
			foreach($data as $value)
				$list[$value->agent_id] = $value->agent_first_name.' '.$value->agent_second_name;
			return $list;
		} else {
			return false; 
		}

}    
// Agent date to date report 
public function agent_details($id,$start_date,$end_date){
  $this->db->select('*');
  $this->db->from('agent_ledger');
  $this->db->where('agent_id',$id);
  $this->db->where('booking_id !=','');
  $this->db->where("date >=",$start_date);
  $this->db->where("date <=",$end_date);
  // $this->db->order_by('id', 'desc');
  $query=$this->db->get();
  //print_r($query->result());exit();
     if($query->num_rows() > 0){
     	
      return $query->result();
     }
     return false;		
}
public function agent_inf($id)
	{
		return $this->db->select('*')	
			->from('agent_info')
			->where('agent_id',$id)
			->get()
			->row();
	}
}