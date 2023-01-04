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
			$where[] = "DATE(booking_date) >= $inicio";
		}

		if (isset($_GET['fin']) && $_GET['fin']) {
			$fin = $_GET['fin'];
			$where[] = "DATE(booking_date) <= $fin";
		}

		if (isset($_GET['empresa']) && $_GET['empresa'] != 'Todas') {
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
					LEFT JOIN tkt_booking wbh ON s.booking_id = wbh.id_no
			WHERE
				$where
		";

		echo $sql;
		exit;

		$data['sales'] = $this->db->query($sql);

		echo Modules::run('template/layout', $data); 
	}
}
