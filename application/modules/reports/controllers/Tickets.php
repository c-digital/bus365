<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Tickets extends MX_Controller
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
		$data['page']   = "tickets/index";

		$where = [];

		if (isset($_GET['inicio']) && $_GET['inicio']) {
			$inicio = $_GET['inicio'];
			$where[] = "DATE(b.booking_date) >= $inicio";
		}

		if (isset($_GET['fin']) && $_GET['fin']) {
			$fin = $_GET['fin'];
			$where[] = "DATE(b.booking_date) <= $fin";
		}

		if (isset($_GET['empresa']) && $_GET['empresa']) {
			$empresa = $_GET['empresa'];
			$where[] = "a.company_id = '$empresa'";
		}

		if (isset($_GET['metodo_pago']) && $_GET['metodo_pago']) {
			$metodo_pago = $_GET['metodo_pago'];
			$where[] = "b.booking_type = '$metodo_pago'";
		}

		$where[] = "1";

		$where = implode(' AND ', $where);

		$sql = "
			SELECT
				CONCAT(s.booking_id, '-', s.id) AS numero_ticket,
				c.name AS empresa,
				s.name AS pasajero,
				h.price AS valor_pagado
			FROM
				sales s
					LEFT JOIN tkt_booking b ON s.booking_id = b.id_no
					LEFT JOIN ws_booking_history h ON s.booking_id = h.id_no
					LEFT JOIN trip_assign a ON h.trip_id_no = a.trip
					LEFT JOIN companies c ON c.id = a.company_id
			WHERE
				$where
		";

		$data['tickets'] = $this->db->query($sql)->result();

		$data['empresas'] = $this->db->query("SELECT id, name AS nombre FROM companies")->result();

		echo Modules::run('template/layout', $data);
	}
}
