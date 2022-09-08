<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Notice extends MX_Controller {

	public function __construct()
	{
		parent::__construct();
		
		$this->load->model(array(
            'notice_model' 
		));   
        
        if (!$this->session->userdata('isLogIn')) 
        redirect('login'); 
	}
 
   

    public function booking_notice($id = null)
    {  

        $noticeinfo = $this->db->select('*')
        ->from('ticket_notification')
        ->where('id',$id)
        ->get()
        ->row();

         if($this->session->userdata('isAdmin')==1){
            $this->notice_model->update(
            array(
                'id' => $id, 
                'admin_seen'=> $this->session->userdata('id')
            )
        );
         }

         if($this->session->userdata('isAdmin')==0){
           
             $this->notice_model->update(
            array(
                'id' => $id, 
                'is_seen'   => $this->session->userdata('id')
            )
        );
         }


        #-------------------------------#
        #-------------------------------#
        $data['b'] = $noticeinfo;
        $data['module'] = "dashboard";
        $data['page']   = "notice/notice";
        echo Modules::run('template/layout', $data); 
    }
// Sea all notice
       public function sea_all()
    {  

         $this->db->select('*');
         $this->db->from('ticket_notification');
         if($this->session->userdata('isAdmin')==1){
          $this->db->where('admin_seen',0);   
         }
         if($this->session->userdata('isAdmin')==0){
          $this->db->where('is_seen',0);   
         }
         $query = $this->db->get();
         $noticeinfo = $query->result();
       
         if($this->session->userdata('isAdmin')==1){
            $this->notice_model->all_update_admin(
            array(
                'admin_seen'=> $this->session->userdata('id')
            )
        );
         }

         if($this->session->userdata('isAdmin')==0){
           
             $this->notice_model->all_update_user(
            array(
                'is_seen'   => $this->session->userdata('id')
            )
        );
         }


        #-------------------------------#
        #-------------------------------#
        $data['b'] = $noticeinfo;
        $data['module'] = "dashboard";
        $data['page']   = "notice/sea_all";
        echo Modules::run('template/layout', $data); 
    }
    
	
}
