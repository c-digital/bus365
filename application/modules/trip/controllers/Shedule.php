<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Shedule extends MX_Controller {

	public function __construct()
	{
		parent::__construct();
		
		$this->load->model(array(
			'shedule_model',
			'route_model'
		));		 
	}
 

	public function add_shedule($id = null)
	{ 
		$data['title'] = 'Add Shedule';
		//echo 'sdfsdf';exit;
		#-------------------------------#
		$this->form_validation->set_rules('start',display('start') ,'required');
		$this->form_validation->set_rules('end', display('end') ,'required');
		#-------------------------------#
		$data['fleet_registration'] = (Object) $postData = [
			'shedule_id' 	 => $this->input->post('shedule_id'), 
			'start' 	     => $this->input->post('start'), 
			'end'            => $this->input->post('end'), 
			'duration' 	     => $this->input->post('duration')
		];  
		#-------------------------------#
		if ($this->form_validation->run()) { 

			if (empty($postData['shedule_id'])) {

        		$this->permission->method('trip','create')->redirect();

				if ($this->shedule_model->create_shedule($postData)) { 
					$this->session->set_flashdata('message', display('save_successfully'));
				} else {
					$this->session->set_flashdata('exception',  display('please_try_again'));
				}
				redirect("trip/shedule/shedule_list"); 

			} else {

        		$this->permission->method('trip','update')->redirect();

				if ($this->shedule_model->update_shedule($postData)) { 
					$this->session->set_flashdata('message', display('update_successfully'));
				} else {
					$this->session->set_flashdata('exception',  display('please_try_again'));
				}
				redirect("trip/shedule/add_shedule/".$postData['id']);  
			}
 

		} else { 
			if(!empty($id)) {
			$data['title'] = display('update');
			 $data['sheduledata']   = $this->shedule_model->findById_shedule($id);
			 }
			$data['module'] = "trip";
			$data['page']   = "shedule/shedule_form";   
			echo Modules::run('template/layout', $data); 
		}   
}

// shedule list
public function shedule_list() 
	{ 
        $this->permission->method('trip','read')->redirect();
        $data['title'] = display('shedule_list');
		$data['shedule'] = $this->shedule_model->shedule_list();
		$data['module'] = "trip";
		$data['page']   = "shedule/list";   
		echo Modules::run('template/layout', $data); 
	}
	// shedule delete
	public function delete_shedule($id = null) 
	{ 
        $this->permission->method('trip','delete')->redirect();

		if ($this->shedule_model->delete_shedule($id)) {
			#set success message
			$this->session->set_flashdata('message',display('delete_successfully'));
		} else {
			#set exception message
			$this->session->set_flashdata('exception',display('please_try_again'));
		}
		redirect('trip/shedule/shedule_list');
	}
}