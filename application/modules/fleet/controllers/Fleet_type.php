<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Fleet_type extends MX_Controller {

	public function __construct()
	{
		parent::__construct();
		 $this->permission->module('fleet')->redirect();
		$this->load->model(array(
			'fleet_type_model'
		));		 
	}
 
	public function index()
	{   
        $this->permission->method('fleet','read')->redirect();
		$data['title']    = display('list'); 
		#-------------------------------#
		$data['fleet_types'] = $this->fleet_type_model->read();
		$data['module'] = "fleet";
		$data['page']   = "type/list";   
		echo Modules::run('template/layout', $data); 
	}  

 	public function form($id = null)
	{ 
		$this->permission->method('fleet','create')->redirect();
		$data['title'] = display('add');
		#-------------------------------#
		$this->form_validation->set_rules('type',display('fleet_type')  ,'required|max_length[255]');
		$this->form_validation->set_rules('status',display('status') ,'required');
		$facilities = $this->input->post('fleet_facilities');
		$facilities = implode(',' , $facilities);
		#-------------------------------#
		$data['fleet_type'] = (Object) $postData = [
			'id' 	         => $this->input->post('id'), 
			'type' 	         => $this->input->post('type'),
			'layout'         => $this->input->post('layout'),
			'lastseat' 	     => (!empty($this->input->post('lastseat'))?$this->input->post('lastseat'):0),
			'total_seat' 	 => $this->input->post('total_seat'), 
			'seat_numbers' 	 => $this->input->post('seat_numbers'),
			'fleet_facilities'=> $facilities,   
			'status' => $this->input->post('status'), 
		];  
	
		#-------------------------------#
		if ($this->form_validation->run()) { 
			
			if (empty($postData['id'])) {

        		$this->permission->method('fleet','create')->redirect();

				if ($this->fleet_type_model->create($postData)) { 
					$this->session->set_flashdata('message', display('save_successfully'));
				} else {
					$this->session->set_flashdata('exception',  display('please_try_again'));
				}
				redirect("fleet/fleet_type/form"); 

			} else {

        		$this->permission->method('fleet','update')->redirect();

				if ($this->fleet_type_model->update($postData)) { 
					$this->session->set_flashdata('message', display('update_successfully'));
				} else {
					$this->session->set_flashdata('exception',  display('please_try_again'));
				}
				redirect("fleet/fleet_type/form/".$postData['id']);  
			}
 

		} else { 
			if(!empty($id)) {
				$data['title'] = display('update');
				$data['fleet_type']   = $this->fleet_type_model->findById($id);
			}
			$data['module'] = "fleet";
			$data['facilities'] = $this->fleet_type_model->facilites();
			$data['page']   = "type/form";   
			echo Modules::run('template/layout', $data); 
		}   
	}

 

	public function delete($id = null) 
	{ 
        $this->permission->method('fleet','delete')->redirect();

		if ($this->fleet_type_model->delete($id)) {
			#set success message
			$this->session->set_flashdata('message',display('delete_successfully'));
		} else {
			#set exception message
			$this->session->set_flashdata('exception',display('please_try_again'));
		}
		redirect('fleet/fleet_type/index');
	}
	 

}
