<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Mobile extends MX_Controller {
 	
 	public function __construct()
 	{
 		parent::__construct();

 		$this->load->model(array(
			'website_model',
			'template_model',
			//'home_model'
		));
 	}

 	public function languageList()
    { 
        if ($this->db->table_exists("language")) { 

                $fields = $this->db->field_data("language");

                $i = 1;
                $result[] = 'Select Language';
                foreach ($fields as $field)
                {  
                    if ($i++ > 2)
                    $result[$field->name] = ucfirst($field->name);
                }

                if (!empty($result)) return $result;
 

        } else {
            return false; 
        }
    }

	public function index()
	{		
		$data['title'] = display("home");
		#---------------GET DATA------------------
		$getStartPoint = $this->input->get('start_point');
		$getEndPoint   = $this->input->get('end_point');
		$getDate       = $this->input->get('date');
		$getFleetType  = $this->input->get('fleet_type');
		#---------------POST DATA------------------
		$postStartPoint = $this->input->post('start_point');
		$postEndPoint   = $this->input->post('end_point');
		$postDate       = $this->input->post('date');
		$postFleetType  = $this->input->post('fleet_type');
		#---------------FINAL DATA------------------
		$data['search'] = (object) $postData = array(
			'start_point' => (!empty($postStartPoint)?$postStartPoint:$getStartPoint),
			'end_point'   => (!empty($postEndPoint)?$postEndPoint:$getEndPoint),
			'date'        => (!empty($postDate)?$postDate:$getDate),
			'fleet_type'  => (!empty($postFleetType)?$postFleetType:$getFleetType),
		);
		#--------------------------------------------- 
		$data['location_dropdown'] = $this->website_model->location_dropdown();
		$data['fleet_dropdown']    = $this->website_model->fleet_dropdown();
		$data['ratings']           = $this->website_model->read_rating();
		$data['offers']            = $this->website_model->read_offer();
		$data['notifications']     = $this->website_model->read_notification();
		$data['appSetting'] = $this->website_model->read_setting();
		$data['languageList']      = $this->languageList(); 
		#-----------------------------------
		$data['module'] = "mobile";
		$data['page']   = "pages/home";   
		$this->load->view('layout', $data);
	}

	public function userlog()
	{
		$data['title']    = display('login'); 
		$data['module'] = "mobile";
		return $this->load->view('userlog', $data);
	}

	public function login()
	{
		$data['setting'] = $this->template_model->setting();
		return $this->load->view('login', $data);
	}
}
