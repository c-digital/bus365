<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Terms extends MX_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model(array(
            'terms_model',  
		));		 
	}
 

    //payment term and condition
    public function terms_and_condition_form($id = null)
 {
  $this->permission->method('ticket','create')->redirect();
  $data['title'] = display('add');
  #-------------------------------#
  $this->form_validation->set_rules('how_to_pay', display('how_to_pay')  ,'required|max_length[1000]');
  $this->form_validation->set_rules('terms_and_condition', display('terms_and_condition')  ,'max_length[1000]');
  #-------------------------------#
     $data['term']   = (Object) $postData = [
        'id'                 => $this->input->post('id'), 
   'how_to_pay'              => $this->input->post('how_to_pay'), 
   'terms_and_condition'     => $this->input->post('terms_and_condition')
  ];

  if ($this->form_validation->run()) { 

   if (empty($postData['id'])) {

          $this->permission->method('ticket','create')->redirect();
       
    if ($this->terms_model->create_terms($postData)) { 
     $this->session->set_flashdata('message', display('save_successfully'));
     redirect('ticket/terms/terms_and_condition_list');
    } else {
     $this->session->set_flashdata('exception',  display('please_try_again'));
    }
    redirect("ticket/terms/terms_and_condition_form"); 

   } else {

    $this->permission->method('ticket','update')->redirect();

    if ($this->terms_model->update_condition($postData)) { 
    
     $this->session->set_flashdata('message', display('update_successfully'));
    } else {
     $this->session->set_flashdata('exception',  display('please_try_again'));
    }
    redirect("ticket/terms/terms_and_condition_form/".$postData['id']);  
   }
 

  } else { 
   if(!empty($id)) {
    $data['title'] = display('update');
    $data['terms']   = $this->terms_model->terms_and_cond_data($id);
   }
   $data['module'] = "ticket";
   $data['page']   = "booking/terms_form";   
   echo Modules::run('template/layout', $data); 
   }   
 }

// terms and condition list
  public function terms_and_condition_list()
    {   
        $data["terms"]  = $this->terms_model->term_and_condition_list();
        $data['module'] = "ticket";
        $data['page']   = "booking/term_condition_list";   
        echo Modules::run('template/layout', $data); 
    }
    //terms_delete
     public function terms_delete($id = null) 
    { 

    if ($this->terms_model->terms_delete($id)) {
        #set success message
        $this->session->set_flashdata('message',display('delete_successfully'));
    } else {
        #set exception message
        $this->session->set_flashdata('exception',display('please_try_again'));
    }
     redirect("ticket/terms/terms_and_condition_list");
    } 
}
