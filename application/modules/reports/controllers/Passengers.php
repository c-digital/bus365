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
			$trip_id = $_GET['trip'];

			$sql = "
				SELECT
					t.trip_title,
					c.logo,
					c.name,
					c.address,
					c.nit,
					fr.reg_no,
					fr.model_no,
					fr.engine_no,
					fr.chasis_no,
					CONCAT(eh1.first_name, ' ', eh1.second_name) AS driver_1,
					CONCAT(eh2.first_name, ' ', eh2.second_name) AS driver_2,
					CONCAT(eh3.first_name, ' ', eh3.second_name) AS assistant_1,
					CONCAT(eh4.first_name, ' ', eh4.second_name) AS assistant_2
				FROM
					trip t
						LEFT JOIN trip_assign ta ON ta.trip = t.trip_id
						LEFT JOIN companies c ON c.id = ta.company_id
						LEFT JOIN employee_history eh1 ON eh1.id = ta.driver1_id
						LEFT JOIN employee_history eh2 ON eh2.id = ta.driver2_id
						LEFT JOIN employee_history eh3 ON eh3.id = ta.assistant_1
						LEFT JOIN employee_history eh4 ON eh4.id = ta.assistant_2
						LEFT JOIN fleet_registration fr ON fr.id = ta.fleet_registration_id
				WHERE
					t.trip_id = '$trip_id'
			";

			$data['trip'] = $this->db->query($sql)->row();

			$data['ruta'] = $data['trip']->trip_title;

			$data['company_logo'] = $data['trip']->logo;
			$data['company_name'] = $data['trip']->name;
			$data['company_address'] = $data['trip']->address;
			$data['company_nit'] = $data['trip']->nit;

			$data['numero_interno'] = $data['trip']->reg_no;
			$data['modelo'] = $data['trip']->model_no;
			$data['placa'] = $data['trip']->engine_no;
			$data['chasis'] = $data['trip']->chasis_no;

			$data['driver_1'] = $data['trip']->driver_1;
			$data['driver_2'] = $data['trip']->driver_2;

			$data['ayudante_1'] = $data['trip']->assistant_1;
			$data['ayudante_2'] = $data['trip']->assistant_2;

			$sql = "
				SELECT
					tb.seat_numbers AS potrona,
					s.name AS nombre,
					s.ci AS carnet,
					s.phone AS telefono,
					tl1.name AS embarque,
					tl2.name AS desembarque
				FROM
					tkt_booking tb
						LEFT JOIN sales s ON s.booking_id = tb.id_no
						LEFT JOIN trip_route tr ON tb.trip_route_id = tr.id
						LEFT JOIN trip_location tl1 ON tr.start_point = tl1.id
						LEFT JOIN trip_location tl2 ON tr.end_point = tl2.id
				WHERE
					tb.trip_id_no = '$trip_id'
			";

			$data['passengers'] = $this->db->query($sql)->result();
		}

		echo Modules::run('template/layout', $data);
	}

	public function export()
	{
		if (isset($_GET['trip']) && $_GET['trip'] != '') {
			$trip_id = $_GET['trip'];

			$sql = "
				SELECT
					t.trip_title,
					c.logo,
					c.name,
					c.address,
					c.nit,
					fr.reg_no,
					fr.model_no,
					fr.engine_no,
					fr.chasis_no,
					CONCAT(eh1.first_name, ' ', eh1.second_name) AS driver_1,
					CONCAT(eh2.first_name, ' ', eh2.second_name) AS driver_2,
					CONCAT(eh3.first_name, ' ', eh3.second_name) AS assistant_1,
					CONCAT(eh4.first_name, ' ', eh4.second_name) AS assistant_2
				FROM
					trip t
						LEFT JOIN trip_assign ta ON ta.trip = t.trip_id
						LEFT JOIN companies c ON c.id = ta.company_id
						LEFT JOIN employee_history eh1 ON eh1.id = ta.driver1_id
						LEFT JOIN employee_history eh2 ON eh2.id = ta.driver2_id
						LEFT JOIN employee_history eh3 ON eh3.id = ta.assistant_1
						LEFT JOIN employee_history eh4 ON eh4.id = ta.assistant_2
						LEFT JOIN fleet_registration fr ON fr.id = ta.fleet_registration_id
				WHERE
					t.trip_id = '$trip_id'
			";

			$data['trip'] = $this->db->query($sql)->row();

			$data['ruta'] = $data['trip']->trip_title;

			$data['company_logo'] = $data['trip']->logo;
			$data['company_name'] = $data['trip']->name;
			$data['company_address'] = $data['trip']->address;
			$data['company_nit'] = $data['trip']->nit;

			$data['numero_interno'] = $data['trip']->reg_no;
			$data['modelo'] = $data['trip']->model_no;
			$data['placa'] = $data['trip']->engine_no;
			$data['chasis'] = $data['trip']->chasis_no;

			$data['driver_1'] = $data['trip']->driver_1;
			$data['driver_2'] = $data['trip']->driver_2;

			$data['ayudante_1'] = $data['trip']->assistant_1;
			$data['ayudante_2'] = $data['trip']->assistant_2;

			$sql = "
				SELECT
					tb.seat_numbers AS potrona,
					s.name AS nombre,
					s.ci AS carnet,
					s.phone AS telefono,
					tl1.name AS embarque,
					tl2.name AS desembarque
				FROM
					tkt_booking tb
						LEFT JOIN sales s ON s.booking_id = tb.id_no
						LEFT JOIN trip_route tr ON tb.trip_route_id = tr.id
						LEFT JOIN trip_location tl1 ON tr.start_point = tl1.id
						LEFT JOIN trip_location tl2 ON tr.end_point = tl2.id
				WHERE
					tb.trip_id_no = '$trip_id'
			";

			$data['passengers'] = $this->db->query($sql)->result();
		}

		return $this->load->view('passengers/print', $data);
	}

	public function excel()
	{
		header("Content-Type: application/vnd.ms-excel");
		header("Content-Disposition: attachment; filename=export.xls");

		if (isset($_GET['trip']) && $_GET['trip'] != '') {
			$trip_id = $_GET['trip'];

			$sql = "
				SELECT
					t.trip_title,
					c.logo,
					c.name,
					c.address,
					c.nit,
					fr.reg_no,
					fr.model_no,
					fr.engine_no,
					fr.chasis_no,
					CONCAT(eh1.first_name, ' ', eh1.second_name) AS driver_1,
					CONCAT(eh2.first_name, ' ', eh2.second_name) AS driver_2,
					CONCAT(eh3.first_name, ' ', eh3.second_name) AS assistant_1,
					CONCAT(eh4.first_name, ' ', eh4.second_name) AS assistant_2
				FROM
					trip t
						LEFT JOIN trip_assign ta ON ta.trip = t.trip_id
						LEFT JOIN companies c ON c.id = ta.company_id
						LEFT JOIN employee_history eh1 ON eh1.id = ta.driver1_id
						LEFT JOIN employee_history eh2 ON eh2.id = ta.driver2_id
						LEFT JOIN employee_history eh3 ON eh3.id = ta.assistant_1
						LEFT JOIN employee_history eh4 ON eh4.id = ta.assistant_2
						LEFT JOIN fleet_registration fr ON fr.id = ta.fleet_registration_id
				WHERE
					t.trip_id = '$trip_id'
			";

			$data['trip'] = $this->db->query($sql)->row();

			$data['ruta'] = $data['trip']->trip_title;

			$data['company_logo'] = $data['trip']->logo;
			$data['company_name'] = $data['trip']->name;
			$data['company_address'] = $data['trip']->address;
			$data['company_nit'] = $data['trip']->nit;

			$data['numero_interno'] = $data['trip']->reg_no;
			$data['modelo'] = $data['trip']->model_no;
			$data['placa'] = $data['trip']->engine_no;
			$data['chasis'] = $data['trip']->chasis_no;

			$data['driver_1'] = $data['trip']->driver_1;
			$data['driver_2'] = $data['trip']->driver_2;

			$data['ayudante_1'] = $data['trip']->assistant_1;
			$data['ayudante_2'] = $data['trip']->assistant_2;

			$sql = "
				SELECT
					tb.seat_numbers AS potrona,
					s.name AS nombre,
					s.ci AS carnet,
					s.phone AS telefono,
					tl1.name AS embarque,
					tl2.name AS desembarque
				FROM
					tkt_booking tb
						LEFT JOIN sales s ON s.booking_id = tb.id_no
						LEFT JOIN trip_route tr ON tb.trip_route_id = tr.id
						LEFT JOIN trip_location tl1 ON tr.start_point = tl1.id
						LEFT JOIN trip_location tl2 ON tr.end_point = tl2.id
				WHERE
					tb.trip_id_no = '$trip_id'
			";

			$data['passengers'] = $this->db->query($sql)->result();
		}

		return $this->load->view('passengers/export', $data);
	}

	public function pdf()
	{
		$this->load->library('pdfgenerator');

		ob_start();

		if (isset($_GET['trip']) && $_GET['trip'] != '') {
			$trip_id = $_GET['trip'];

			$sql = "
				SELECT
					t.trip_title,
					c.logo,
					c.name,
					c.address,
					c.nit,
					fr.reg_no,
					fr.model_no,
					fr.engine_no,
					fr.chasis_no,
					CONCAT(eh1.first_name, ' ', eh1.second_name) AS driver_1,
					CONCAT(eh2.first_name, ' ', eh2.second_name) AS driver_2,
					CONCAT(eh3.first_name, ' ', eh3.second_name) AS assistant_1,
					CONCAT(eh4.first_name, ' ', eh4.second_name) AS assistant_2
				FROM
					trip t
						LEFT JOIN trip_assign ta ON ta.trip = t.trip_id
						LEFT JOIN companies c ON c.id = ta.company_id
						LEFT JOIN employee_history eh1 ON eh1.id = ta.driver1_id
						LEFT JOIN employee_history eh2 ON eh2.id = ta.driver2_id
						LEFT JOIN employee_history eh3 ON eh3.id = ta.assistant_1
						LEFT JOIN employee_history eh4 ON eh4.id = ta.assistant_2
						LEFT JOIN fleet_registration fr ON fr.id = ta.fleet_registration_id
				WHERE
					t.trip_id = '$trip_id'
			";

			$data['trip'] = $this->db->query($sql)->row();

			$data['ruta'] = $data['trip']->trip_title;

			$data['company_logo'] = $data['trip']->logo;
			$data['company_name'] = $data['trip']->name;
			$data['company_address'] = $data['trip']->address;
			$data['company_nit'] = $data['trip']->nit;

			$data['numero_interno'] = $data['trip']->reg_no;
			$data['modelo'] = $data['trip']->model_no;
			$data['placa'] = $data['trip']->engine_no;
			$data['chasis'] = $data['trip']->chasis_no;

			$data['driver_1'] = $data['trip']->driver_1;
			$data['driver_2'] = $data['trip']->driver_2;

			$data['ayudante_1'] = $data['trip']->assistant_1;
			$data['ayudante_2'] = $data['trip']->assistant_2;

			$sql = "
				SELECT
					tb.seat_numbers AS potrona,
					s.name AS nombre,
					s.ci AS carnet,
					s.phone AS telefono,
					tl1.name AS embarque,
					tl2.name AS desembarque
				FROM
					tkt_booking tb
						LEFT JOIN sales s ON s.booking_id = tb.id_no
						LEFT JOIN trip_route tr ON tb.trip_route_id = tr.id
						LEFT JOIN trip_location tl1 ON tr.start_point = tl1.id
						LEFT JOIN trip_location tl2 ON tr.end_point = tl2.id
				WHERE
					tb.trip_id_no = '$trip_id'
			";

			$data['passengers'] = $this->db->query($sql)->result();
		}

		$this->load->view('passengers/export', $data);

		$dompdf = new DOMPDF();
        $dompdf->load_html(utf8_encode(ob_get_clean()));
        $dompdf->render();
        $dompdf->stream('export.pdf');
	}
}
