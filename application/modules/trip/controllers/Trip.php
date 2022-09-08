<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Trip extends MX_Controller {

	public function __construct()
	{
		parent::__construct();
		
		$this->load->model(array(
			'trip_model',
			'location_model'
		));	
		$this->permission->module()->redirect();	 
	}
 
	public function index()
	{   
         $this->permission->module()->read()->redirect();
		$data['title']    = display('list'); 
		#-------------------------------#
		$data['trps'] = $this->trip_model->read();
		$data['module'] = "trip";
		$data['page']   = "trip/list";   
		echo Modules::run('template/layout', $data); 
	}  

 	public function form($id = null)
	{ 
        $this->permission->module()->create()->redirect(); 
		$data['title'] = display('add');
		#-------------------------------#
		$this->form_validation->set_rules('status',display('status') ,'required');
		$shels = $this->input->post('shedule');
		$shd = explode("-", $shels);
		$strt = $shd[0];
		$ends = $shd[1];
		//$test = $this->db->select('*')->from('trip_route')->where('start_point',6)->where('end_point',3)->get()->row();
		$routes = $this->db->select('*')->from('trip_route')->where('name',$this->input->post('route'))->get()->row();
		$types = $this->db->select('*')->from('fleet_type')->where('type',$this->input->post('types'))->get()->row();
		$shedule = $this->db->select('*')->from('shedule')->where('start',$strt)->get()->row();
		$weekend = $this->input->post("weekend");
		$weekday = implode(',' , $weekend);

		#-------------------------------#
		$data['tripe'] = (Object) $postData = [
			'trip_id' 	         => $this->input->post('trip_id'), 
			'trip_title' 	     => $this->input->post('trip_title'), 
			'route' 	         => $routes->id, 
			'shedule_id' 	     => $shedule->shedule_id, 
			'type' 	             => $types->id,
			'weekend'            => (!empty($weekday)?$weekday:8),
			'status'             => $this->input->post('status'), 
		];  

		#-------------------------------#
		if ($this->form_validation->run()) { 
			if (empty($postData['trip_id'])) {
             
        		$this->permission->method('trip','create')->redirect();

				if ($this->trip_model->create($postData)) { 
					$this->session->set_flashdata('message', display('save_successfully'));
				} else {
					$this->session->set_flashdata('exception',  display('please_try_again'));
				}
				redirect("trip/trip/form"); 

			} else {

        		$this->permission->method('trip','update')->redirect();

				if ($this->trip_model->update($postData)) { 
					$this->session->set_flashdata('message', display('update_successfully'));
				} else {
					$this->session->set_flashdata('exception',  display('please_try_again'));
				}
				redirect("trip/trip/form/".$postData['trip_id']);  
			}
 

		} else { 
			if(!empty($id)) {
				$data['title']  = display('update');
				$data['trips']  = $this->trip_model->findById($id);
				$data['weekdaylist'] = array(
				'1' => 'Sunday', 
				'2' => 'Monday', 
				'3' => 'Tuesday',
				'4' => 'Wednesday',
				'5' => 'Thusday',
				'6' => 'Friday',
				'7' => 'Satarday',
				);
			}
			$data['route_list'] = $this->trip_model->dropdown();
			$data['shedule']    = $this->trip_model->shedules();
			$data['types']      = $this->trip_model->types();
			$data['weekdaylist'] = array(
				'1' => 'Sunday', 
				'2' => 'Monday', 
				'3' => 'Tuesday',
				'4' => 'Wednesday',
				'5' => 'Thusday',
				'6' => 'Friday',
				'7' => 'Satarday',
				);
			$data['module']     = "trip";
			$data['page']       = "trip/form";   
			echo Modules::run('template/layout', $data); 
		}   
	}

 

	public function delete($id = null) 
	{ 
       $this->permission->module()->delete()->redirect();

		if ($this->trip_model->delete($id)) {
			#set success message
			$this->session->set_flashdata('message',display('delete_successfully'));
		} else {
			#set exception message
			$this->session->set_flashdata('exception',display('please_try_again'));
		}
		redirect('trip/trip/index');
	}
	 

}
