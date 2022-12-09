<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class SalesByCompany extends MX_Controller
{
	public function __construct()
	{
		parent::__construct();	 
	}

	public function index()
	{
		$data['title']    = display('reports');

		$data['module'] = "reports";
		$data['page']   = "salesByCompany/index";

		$data['empresas'] = $this->db->from('companies')->get()->result();

		echo Modules::run('template/layout', $data); 
	}

	public function pdf()
	{
		$this->load->library('pdfgenerator');

		ob_start();

		$data['empresas'] = $this->db->from('companies')->get()->result();

		$this->load->view('salesByCompany/export', $data);

		$dompdf = new DOMPDF();
        $dompdf->load_html(utf8_encode(ob_get_clean()));
        $dompdf->render();
        $dompdf->stream('export.pdf');
	}

	public function excel()
	{
		header("Content-Type: application/vnd.ms-excel");
		header("Content-Disposition: attachment; filename=export.xls");
		
		$data['title']    = display('reports');

		$data['module'] = "reports";
		$data['page']   = "salesByCompany/index";

		$data['empresas'] = $this->db->from('companies')->get()->result();

		$this->load->view('salesByCompany/export', $data);
	}

	public function export()
	{
		$data['title']    = display('reports');

		$data['module'] = "reports";
		$data['page']   = "salesByCompany/index";

		$data['empresas'] = $this->db->from('companies')->get()->result();

		$this->load->view('salesByCompany/export', $data);
	}
}
