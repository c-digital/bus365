<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Cash extends MX_Controller
{
	public function __construct()
	{
		parent::__construct();	 
	}

	public function index()
	{
		$data['title']    = display('reports');

		$data['module'] = "reports";
		$data['page']   = "cash/index";

		// Ticket

		$where = [];

		if (isset($_GET['inicio']) && $_GET['inicio']) {
			$inicio = $_GET['inicio'];
			$where[] = "DATE(fecha) >= $inicio";
		}

		if (isset($_GET['fin']) && $_GET['fin']) {
			$fin = $_GET['fin'];
			$where[] = "DATE(fecha) >= $fin";
		}

		if (isset($_GET['cajero']) && $_GET['cajero']) {
			$cajero = $_GET['cajero'];
			$where[] = "cajero = '$cajero'";
		}

		$where[] = "concepto LIKE '%ticket%'";
		$where[] = "tipo_movimiento = 'Entrada'";

		$where = implode(' AND ', $where);

		$sql = "
			SELECT
				*
			FROM
				caja
			WHERE
				$where
		";

		$data['ticket'] = $this->db->query($sql)->result();

		// Mercaderia

		$where = [];

		if (isset($_GET['inicio']) && $_GET['inicio']) {
			$inicio = $_GET['inicio'];
			$where[] = "DATE(fecha) >= $inicio";
		}

		if (isset($_GET['fin']) && $_GET['fin']) {
			$fin = $_GET['fin'];
			$where[] = "DATE(fecha) >= $fin";
		}

		if (isset($_GET['cajero']) && $_GET['cajero']) {
			$cajero = $_GET['cajero'];
			$where[] = "cajero = '$cajero'";
		}

		$where[] = "concepto LIKE '%mercaderia%'";
		$where[] = "tipo_movimiento = 'Entrada'";

		$where = implode(' AND ', $where);

		$sql = "
			SELECT
				*
			FROM
				caja
			WHERE
				$where
		";

		$data['mercaderia'] = $this->db->query($sql)->result();

		// Salidas

		$where = [];

		if (isset($_GET['inicio']) && $_GET['inicio']) {
			$inicio = $_GET['inicio'];
			$where[] = "DATE(fecha) >= $inicio";
		}

		if (isset($_GET['fin']) && $_GET['fin']) {
			$fin = $_GET['fin'];
			$where[] = "DATE(fecha) >= $fin";
		}

		if (isset($_GET['cajero']) && $_GET['cajero']) {
			$cajero = $_GET['cajero'];
			$where[] = "cajero = '$cajero'";
		}

		$where[] = "tipo_movimiento = 'Salida'";
		$where[] = "monto NOT LIKE '%{%'";

		$where = implode(' AND ', $where);

		$sql = "
			SELECT
				*
			FROM
				caja
			WHERE
				$where
		";

		$data['salida'] = $this->db->query($sql)->result();

		echo Modules::run('template/layout', $data); 
	}
}
