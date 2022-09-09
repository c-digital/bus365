<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Companies extends MX_Controller {
 	
 	public function __construct()
 	{
 		parent::__construct();

 		$this->load->model(array(
 			'company_model' 
 		)); 

		if (! $this->session->userdata('isLogIn'))
			redirect('login');
 	}
 
	public function index()
	{    
		$data['title'] = display('companies'); 

		#-------------------------------#
        $config["per_page"] = 10;
        $config["uri_segment"] = 3;
        $config["num_links"] = 5;

        /* This Application Must Be Used With BootStrap 3 * */
        $config['full_tag_open'] = "<ul class='pagination'>";
        $config['full_tag_close'] = "</ul>";
        $config['num_tag_open'] = '<li>';
        $config['num_tag_close'] = '</li>';
        $config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";
        $config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";
        $config['next_tag_open'] = "<li>";
        $config['next_tag_close'] = "</li>";
        $config['prev_tag_open'] = "<li>";
        $config['prev_tagl_close'] = "</li>";
        $config['first_tag_open'] = "<li>";
        $config['first_tagl_close'] = "</li>";
        $config['last_tag_open'] = "<li>";
        $config['last_tagl_close'] = "</li>";
        /* ends of bootstrap */

        $this->pagination->initialize($config);
        $page = ($this->uri->segment(4)) ? $this->uri->segment(4) : 0;

        $data['companies'] = $this->company_model->read();

		$data['module'] = "dashboard";
		$data['page']   = "companies/index";   
		echo Modules::run('template/layout', $data);
	}

    public function create()
    {
        $data['title'] = display('companies');
        $data['module'] = "dashboard";
        $data['page']   = "companies/create";
        
        echo Modules::run('template/layout', $data);
    }

    public function store()
    {
        $config['upload_path'] = './uploads/';
        $config['allowed_types'] = 'gif|jpg|png|jpeg';

        $this->load->library('upload', $config);
        $this->upload->do_upload('logo');

        $filename = $this->upload->data()['file_name'];

        print_r($this->input->post('nit'));
        exit;

        $this->company_model->create([
            'logo' => '',
        ]);

        return redirect('/dashboard/companies');
    }
}
