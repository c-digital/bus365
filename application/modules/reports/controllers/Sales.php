<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Sales extends MX_Controller
{
	public function __construct()
	{
		parent::__construct();	 
	}

	public function index()
	{
		$data['title']    = display('reports');

		$data['module'] = "reports";
		$data['page']   = "sales/index";

		$where = [];

		if (isset($_GET['inicio']) && $_GET['inicio']) {
			$inicio = $_GET['inicio'];
			$where[] = "DATE(fecha) >= $inicio";
		}

		if (isset($_GET['fin']) && $_GET['fin']) {
			$fin = $_GET['fin'];
			$where[] = "DATE(fecha) <= $fin";
		}

		if (isset($_GET['empresa']) && $_GET['empresa']) {
			$empresa = $_GET['empresa'];
			$where[] = "empresa = '$empresa'";
		}

		if (isset($_GET['tipo']) && $_GET['tipo']) {
			$tipo = $_GET['tipo'];
			$where[] = "tipo = '$tipo'";
		}

		$where[] = "1";

		$where = implode(' AND ', $where);

		$sql = "
			SELECT
				*
			FROM
				sales s
					LEFT JOIN ws_booking_history wbh ON s.booking_id = wbh.id_no
			WHERE
				$where
		";

		$data['sales'] = $this->db->query($sql);

		echo Modules::run('template/layout', $data); 
	}
}
