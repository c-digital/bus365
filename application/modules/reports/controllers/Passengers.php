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
		
		$data['trips'] = $this->db->from('trip')->get()->result();

		if (isset($_GET['trip']) && $_GET['trip'] != '') {
			$booking_date = date_format(date_create($_GET['date']), 'Y-m-d');
			$trip_id = $_GET['trip'];

			$sql = "
				SELECT
					r.name AS route,
					t.trip_title AS trip,
					f.reg_no AS no_fleet,
					f.chasis_no AS no_chasis,
					CONCAT(e1.first_name, ' ', e1.second_name) AS driver_name_1,
					e1.document_id AS driver_ci_1,
					CONCAT(e2.first_name, ' ', e2.second_name) AS driver_name_2,
					e2.document_id AS driver_ci_2,
					CONCAT(e3.first_name, ' ', e3.second_name) AS assistant_name_1,
					e3.document_id AS assistant_ci_1,
					CONCAT(e4.first_name, ' ', e4.second_name) AS assistant_name_2,
					e4.document_id AS assistant_ci_2,
					CONCAT(e5.first_name, ' ', e5.second_name) AS assistant_name_3,
					e5.document_id AS assistant_ci_3
				FROM
					tkt_booking b
						LEFT JOIN trip_route r ON b.trip_route_id = r.id
						LEFT JOIN trip t ON t.trip_id = b.trip_id_no
						LEFT JOIN trip_assign a ON t.trip_id = a.trip
						LEFT JOIN fleet_registration f ON f.id = a.fleet_registration_id
						LEFT JOIN employee_history e1 ON e1.id = a.driver1_id
						LEFT JOIN employee_history e2 ON e2.id = a.driver2_id
						LEFT JOIN employee_history e3 ON e3.id = a.assistant_1
						LEFT JOIN employee_history e4 ON e4.id = a.assistant_2
						LEFT JOIN employee_history e5 ON e5.id = a.assistant_3
				WHERE
					DATE(b.booking_date) = '$booking_date'
					AND b.trip_id_no = '$trip_id'
				LIMIT 1
			";

			$data['info'] = $this->db->query($sql)->row();

			$sql = "
				SELECT
					s.*
				FROM
					tkt_booking b
						LEFT JOIN sales s ON s.booking_id = b.id_no
				WHERE
					DATE(b.booking_date) = '$booking_date'
					AND b.trip_id_no = '$trip_id'
			";

			$data['passengers'] = $this->db->query($sql)->result();
		}

		echo Modules::run('template/layout', $data);
	}

	public function export()
	{
		$booking_date = date_format(date_create($_GET['date']), 'Y-m-d');
		$trip_id = $_GET['trip'];

		$sql = "
			SELECT
				r.name AS route,
				t.trip_title AS trip,
				f.reg_no AS no_fleet,
				f.chasis_no AS no_chasis,
				CONCAT(e1.first_name, ' ', e1.second_name) AS driver_name_1,
				e1.document_id AS driver_ci_1,
				CONCAT(e2.first_name, ' ', e2.second_name) AS driver_name_2,
				e2.document_id AS driver_ci_2,
				CONCAT(e3.first_name, ' ', e3.second_name) AS assistant_name_1,
				e3.document_id AS assistant_ci_1,
				CONCAT(e4.first_name, ' ', e4.second_name) AS assistant_name_2,
				e4.document_id AS assistant_ci_2,
				CONCAT(e5.first_name, ' ', e5.second_name) AS assistant_name_3,
				e5.document_id AS assistant_ci_3
			FROM
				tkt_booking b
					LEFT JOIN trip_route r ON b.trip_route_id = r.id
					LEFT JOIN trip t ON t.trip_id = b.trip_id_no
					LEFT JOIN trip_assign a ON t.trip_id = a.trip
					LEFT JOIN fleet_registration f ON f.id = a.fleet_registration_id
					LEFT JOIN employee_history e1 ON e1.id = a.driver1_id
					LEFT JOIN employee_history e2 ON e2.id = a.driver2_id
					LEFT JOIN employee_history e3 ON e3.id = a.assistant_1
					LEFT JOIN employee_history e4 ON e4.id = a.assistant_2
					LEFT JOIN employee_history e5 ON e5.id = a.assistant_3
			WHERE
				DATE(b.booking_date) = '$booking_date'
				AND b.trip_id_no = '$trip_id'
			LIMIT 1
		";

		$data['info'] = $this->db->query($sql)->row();

		$sql = "
			SELECT
				s.*
			FROM
				tkt_booking b
					LEFT JOIN sales s ON s.booking_id = b.id_no
			WHERE
				DATE(b.booking_date) = '$booking_date'
				AND b.trip_id_no = '$trip_id'
		";

		$data['passengers'] = $this->db->query($sql)->result();

		return $this->load->view('passengers/print', $data);
	}

	public function excel()
	{
		header("Content-Type: application/vnd.ms-excel");
		header("Content-Disposition: attachment; filename=export.xls");

		$booking_date = date_format(date_create($_GET['date']), 'Y-m-d');
		$trip_id = $_GET['trip'];

		$sql = "
			SELECT
				r.name AS route,
				t.trip_title AS trip,
				f.reg_no AS no_fleet,
				f.chasis_no AS no_chasis,
				CONCAT(e1.first_name, ' ', e1.second_name) AS driver_name_1,
				e1.document_id AS driver_ci_1,
				CONCAT(e2.first_name, ' ', e2.second_name) AS driver_name_2,
				e2.document_id AS driver_ci_2,
				CONCAT(e3.first_name, ' ', e3.second_name) AS assistant_name_1,
				e3.document_id AS assistant_ci_1,
				CONCAT(e4.first_name, ' ', e4.second_name) AS assistant_name_2,
				e4.document_id AS assistant_ci_2,
				CONCAT(e5.first_name, ' ', e5.second_name) AS assistant_name_3,
				e5.document_id AS assistant_ci_3
			FROM
				tkt_booking b
					LEFT JOIN trip_route r ON b.trip_route_id = r.id
					LEFT JOIN trip t ON t.trip_id = b.trip_id_no
					LEFT JOIN trip_assign a ON t.trip_id = a.trip
					LEFT JOIN fleet_registration f ON f.id = a.fleet_registration_id
					LEFT JOIN employee_history e1 ON e1.id = a.driver1_id
					LEFT JOIN employee_history e2 ON e2.id = a.driver2_id
					LEFT JOIN employee_history e3 ON e3.id = a.assistant_1
					LEFT JOIN employee_history e4 ON e4.id = a.assistant_2
					LEFT JOIN employee_history e5 ON e5.id = a.assistant_3
			WHERE
				DATE(b.booking_date) = '$booking_date'
				AND b.trip_id_no = '$trip_id'
			LIMIT 1
		";

		$data['info'] = $this->db->query($sql)->row();

		$sql = "
			SELECT
				s.*
			FROM
				tkt_booking b
					LEFT JOIN sales s ON s.booking_id = b.id_no
			WHERE
				DATE(b.booking_date) = '$booking_date'
				AND b.trip_id_no = '$trip_id'
		";

		$data['passengers'] = $this->db->query($sql)->result();

		return $this->load->view('passengers/export', $data);
	}

	public function pdf()
	{
		$this->load->library('pdfgenerator');

		ob_start();

		$booking_date = date_format(date_create($_GET['date']), 'Y-m-d');
		$trip_id = $_GET['trip'];

		$sql = "
			SELECT
				r.name AS route,
				t.trip_title AS trip,
				f.reg_no AS no_fleet,
				f.chasis_no AS no_chasis,
				CONCAT(e1.first_name, ' ', e1.second_name) AS driver_name_1,
				e1.document_id AS driver_ci_1,
				CONCAT(e2.first_name, ' ', e2.second_name) AS driver_name_2,
				e2.document_id AS driver_ci_2,
				CONCAT(e3.first_name, ' ', e3.second_name) AS assistant_name_1,
				e3.document_id AS assistant_ci_1,
				CONCAT(e4.first_name, ' ', e4.second_name) AS assistant_name_2,
				e4.document_id AS assistant_ci_2,
				CONCAT(e5.first_name, ' ', e5.second_name) AS assistant_name_3,
				e5.document_id AS assistant_ci_3
			FROM
				tkt_booking b
					LEFT JOIN trip_route r ON b.trip_route_id = r.id
					LEFT JOIN trip t ON t.trip_id = b.trip_id_no
					LEFT JOIN trip_assign a ON t.trip_id = a.trip
					LEFT JOIN fleet_registration f ON f.id = a.fleet_registration_id
					LEFT JOIN employee_history e1 ON e1.id = a.driver1_id
					LEFT JOIN employee_history e2 ON e2.id = a.driver2_id
					LEFT JOIN employee_history e3 ON e3.id = a.assistant_1
					LEFT JOIN employee_history e4 ON e4.id = a.assistant_2
					LEFT JOIN employee_history e5 ON e5.id = a.assistant_3
			WHERE
				DATE(b.booking_date) = '$booking_date'
				AND b.trip_id_no = '$trip_id'
			LIMIT 1
		";

		$data['info'] = $this->db->query($sql)->row();

		$sql = "
			SELECT
				s.*
			FROM
				tkt_booking b
					LEFT JOIN sales s ON s.booking_id = b.id_no
			WHERE
				DATE(b.booking_date) = '$booking_date'
				AND b.trip_id_no = '$trip_id'
		";

		$data['passengers'] = $this->db->query($sql)->result();

		$this->load->view('passengers/export', $data);

		$dompdf = new DOMPDF();
        $dompdf->load_html(utf8_encode(ob_get_clean()));
        $dompdf->render();
        $dompdf->stream('export.pdf');
	}
}
