<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Passengers extends MX_Controller
{
	public function __construct()
	{
		parent::__construct();

		$this->db->query("SET sql_mode=''");
	}

	public function index()
	{
		$data['title']    = display('reports');

		$data['module'] = "reports";
		$data['page']   = "passengers/index";


		";

		$data['passengers'] = $this->db->query($sql)->result();

		$this->load->view('passengers/export', $data);

		$dompdf = new DOMPDF();
        $dompdf->load_html(utf8_encode(ob_get_clean()));
        $dompdf->render();
        $dompdf->stream('export.pdf');
	}
}
