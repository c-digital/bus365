<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Agent_model extends CI_Model {
 
    public function agent_view($limit = null, $start = null)
	{
		
  $this->db->select('*');
  $this->db->from('agent_info');
  if($this->session->userdata('isAdmin')==0){
 $this->db->where('agent_email',$this->session->userdata('email'));
  }
  $this->db->limit($limit, $start);
  $this->db->order_by('agent_id', 'desc');
  $query=$this->db->get();
     if($query->num_rows() > 0){
      return $query->result();
     }
     return false;	
			


	}
	public function agent_create($data = array())
	{
		return $this->db->insert('agent_info', $data);
	}

	public function delete_agent($id = null)
	{
	    $email = $this->db->select('*')->from('agent_info')->where('agent_id',$id)->get()->row();
	    $user_email = $email->agent_email;
		$this->db->where('agent_id',$id)
			->delete('agent_info');

		if ($this->db->affected_rows()) {
		    $this->db->where('email',$user_email)
			->delete('user');
			return true;
		} else {
			return false;
		}
	} 

   public  function get_id($id)
    {
        $query=$this->db->get_where('agent_info',array('agent_id'=>$id));
        return $query->row_array();
    } 

public function update_agent($data = array())
	{
		return $this->db->where('agent_id', $data["agent_id"])
			->update("agent_info", $data);
	}
	public function agent_updateForm($id){
        $this->db->where('agent_id',$id);
        $query = $this->db->get('agent_info');
        return $query->row();
    }


	

public function details($id)
	{
		return $this->db->select('*')	
			->from('agent_info')
			->where('agent_id',$id)
			->get()
			->result();
	}
	public function agent_ledger($id){
		return $this->db->select('*')	
			->from('agent_ledger')
			->where('agent_id',$id)
			->order_by('id','desc')
			->get()
			->result();
	}

	public function agent_inf($id)
	{
		return $this->db->select('*')	
			->from('agent_info')
			->where('agent_id',$id)
			->get()
			->row();
	}
	 public function retrieve_setting_editdata()
    {
        $this->db->select('*');
        $this->db->from('ws_setting');
        $this->db->where('id',1);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->row();  
        }
        return false;
    }

}
