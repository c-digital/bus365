<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Passengers extends MX_Controller
{
	public function __construct()
	{
		parent::__construct();	 
	}

	public function index()
	{
		$data['title']    = display('reports');

		$data['module'] = "reports";
		$data['page']   = "passengers/index";

		$where = [];

		if (isset($_GET['trip']) && $_GET['trip'] != '') {
			$trip = $_GET['trip'];
			$where[] = "ta.id = '$trip'";
		}

		if (isset($_GET['date']) && $_GET['date'] != '') {
			$date = $_GET['date'];
			$where[] = "ta.date = '$date'";
		}

		$where = implode(' AND ', $where);
		$where = $where . " AND 1";

		$sql = "
			SELECT
				ta.id,
				tr.name AS ruta,
				t.trip_title AS viaje,
				ta.date AS fecha,
				fr.reg_no AS numero_bus,
				fr.chasis_no AS numero_chasis,
				CONCAT(eh1.first_name, ' ', eh1.second_name) AS nombre_conductor_1,
				eh1.document_id AS ci_conductor_1,
				CONCAT(eh2.first_name, ' ', eh2.second_name) AS nombre_conductor_2,
				eh2.document_id AS ci_conductor_2,
				CONCAT(eh3.first_name, ' ', eh3.second_name) AS nombre_asistente_1,
				eh3.document_id AS ci_asistente_1,
				CONCAT(eh4.first_name, ' ', eh4.second_name) AS nombre_asistente_2,
				eh4.document_id AS ci_asistente_2,
				CONCAT(eh5.first_name, ' ', eh5.second_name) AS nombre_asistente_3,
				eh4.document_id AS ci_asistente_3,
				(SELECT COUNT(1) FROM tkt_booking tb WHERE tb.trip_id_no = t.trip_id) AS cantidad_pasajeros
			FROM
				trip t
					LEFT JOIN trip_route tr ON t.route = tr.id
					LEFT JOIN trip_assign ta ON t.trip_id = ta.trip
					LEFT JOIN fleet_registration fr ON ta.fleet_registration_id = fr.id
					LEFT JOIN employee_history eh1 ON ta.driver1_id = eh1.id
					LEFT JOIN employee_history eh2 ON ta.driver2_id = eh2.id
					LEFT JOIN employee_history eh3 ON ta.assistant_1 = eh3.id
					LEFT JOIN employee_history eh4 ON ta.assistant_2 = eh4.id
					LEFT JOIN employee_history eh5 ON ta.assistant_3 = eh5.id
			WHERE
				$where;
		";

		$data['trips'] = $this->db->query($sql)->result();

		$data['routes'] = $this->db->from('trip_route')->get()->result();

		echo Modules::run('template/layout', $data); 
	}
}
