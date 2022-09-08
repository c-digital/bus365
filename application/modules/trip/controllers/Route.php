<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Route extends MX_Controller {

	public function __construct()
	{
		parent::__construct();
		
		$this->load->model(array(
			'route_model',
			'location_model'
		));		 
	}
 
	public function index()
	{   
        $this->permission->method('trip','read')->redirect();
		$data['title']    = display('list'); 
		#-------------------------------#
		$data['routes'] = $this->route_model->read();
		$data['module'] = "trip";
		$data['page']   = "route/list";   
		echo Modules::run('template/layout', $data); 
	}  

 	public function form($id = null)
	{ 
        $this->permission->method('trip','create')->redirect(); 
		$data['title'] = display('add');
		#-------------------------------#
		$this->form_validation->set_rules('name',display('route_name') ,'required|max_length[255]');
		$this->form_validation->set_rules('start_point',display('start_point') ,'required|max_length[50]');
		$this->form_validation->set_rules('end_point',display('end_point') ,'required|max_length[50]');
		$this->form_validation->set_rules('stoppage_points',display('stoppage_points') ,'required');
		$this->form_validation->set_rules('status',display('status') ,'required');
		$start = $this->db->select('*')->from('trip_location')->where('id',$this->input->post('start_point'))->get()->row();

		$end = $this->db->select('*')->from('trip_location')->where('id',$this->input->post('end_point'))->get()->row();
	 $array1 = Array($start->name,$end->name);
     $array2 = explode(',', $this->input->post('stoppage_points'));
     $array3 = array_diff($array2, $array1);
     $output = implode(',', $array3);


			$stopagp =(!empty($this->input->post('stoppage_points'))?$output.','.$start->name.','.$end->name:'');

		#-------------------------------#
		$data['route'] = (Object) $postData = [
			'id' 	 => $this->input->post('id'), 
			'name' 	 => $this->input->post('name'), 
			'start_point' 	 => $this->input->post('start_point'), 
			'end_point' 	 => $this->input->post('end_point'), 
			'stoppage_points' 	 => $stopagp, 
			'distance' 	 => $this->input->post('distance'), 
			'approximate_time' 	 => $this->input->post('approximate_time'),
			'children_seat' 	 => $this->input->post('children_seat'),
			'special_seat' 	 => $this->input->post('special_seat'), 
			'status' => $this->input->post('status'), 
		];  
		#-------------------------------#
		if ($this->form_validation->run()) { 
          

			if (empty($postData['id'])) {

        		$this->permission->method('trip','create')->redirect();

				if ($this->route_model->create($postData)) { 
					$this->session->set_flashdata('message', display('save_successfully'));
				} else {
					$this->session->set_flashdata('exception',  display('please_try_again'));
				}
				redirect("trip/route/form"); 

			} else {

        		$this->permission->method('trip','update')->redirect();

				if ($this->route_model->update($postData)) { 
					$this->session->set_flashdata('message', display('update_successfully'));
				} else {
					$this->session->set_flashdata('exception',  display('please_try_again'));
				}
				redirect("trip/route/form/".$postData['id']);  
			}
 

		} else { 
			if(!empty($id)) {
				$data['title'] = display('update');
				$data['route']   = $this->route_model->findById($id);
			}
			$data['location_list'] = $this->location_model->dropdown();
			$data['stopage'] = $this->location_model->stopage();
			$data['module'] = "trip";
			$data['page']   = "route/form";   
			echo Modules::run('template/layout', $data); 
		}   
	}

 

	public function delete($id = null) 
	{ 
        $this->permission->method('trip','delete')->redirect();

		if ($this->route_model->delete($id)) {
			#set success message
			$this->session->set_flashdata('message',display('delete_successfully'));
		} else {
			#set exception message
			$this->session->set_flashdata('exception',display('please_try_again'));
		}
		redirect('trip/route/index');
	}

	public function startendpoints(){
    $startpoints = $this->input->post('start_point');
    $endpoints = $this->input->post('end_point');
    $data = $this->db->select("*")
			->from('trip_location')
			->where('status', 1) 
			->where('id !=',$startpoints)
			->where('id !=',$endpoints)
			->get()
			->result();
			foreach ($data as $stopages) {
				 $html .="<li><label class='checkbox-inline'><input type='checkbox' class='checkbox-btn' value='".$stopages->name."' onchange='checkCount();'>".$stopages->name."</label></li>";
			}
			 echo json_encode($html);

	}
	 

}
