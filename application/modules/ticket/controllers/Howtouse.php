<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Howtouse extends MX_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model(array(
            'terms_model',  
		));		 
	}
 
    //payment term and condition
    public function form($id = 1)
 {
  $this->permission->method('ticket','create')->redirect();
  $data['title'] = display('add');
  #-------------------------------#
  $this->form_validation->set_rules('how_to_use', display('how_to_use')  ,'required');
  #-------------------------------#
     $data['howuse']   = (Object) $postData = [
        'id'                 => $this->input->post('id'), 
   'description'             => $this->input->post('how_to_use')
  ];

  if ($this->form_validation->run()) { 

   if (empty($postData['id'])) {

          $this->permission->method('ticket','create')->redirect();
       
    if ($this->terms_model->create_howtouse($postData)) { 
     $this->session->set_flashdata('message', display('save_successfully'));
     redirect('ticket/howtouse/form');
    } else {
     $this->session->set_flashdata('exception',  display('please_try_again'));
    }
    redirect("ticket/howtouse/form"); 
   } else {

    $this->permission->method('ticket','update')->redirect();

    if ($this->terms_model->update_howtouse($postData)) { 
    
     $this->session->set_flashdata('message', display('update_successfully'));
    } else {
     $this->session->set_flashdata('exception',  display('please_try_again'));
    }
    redirect("ticket/howtouse/form/".$postData['id']);  
   }
  } else { 
   if(!empty($id)) {
    $data['title'] = display('update');
    $data['huse']   = $this->terms_model->howtouseinfo($id);
   }
   $data['module'] = "ticket";
   $data['page']   = "booking/how_to_use";   
   echo Modules::run('template/layout', $data); 
   }   
 }

// terms and condition list
  public function terms_and_condition_list()
    {   
        $data["terms"] = $this->terms_model->term_and_condition_list();
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
