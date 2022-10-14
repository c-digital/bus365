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

		$sql = "
			SELECT
				tr.name AS ruta,
				t.trip_title AS viaje,
				DATE(wsbh.booking_date) AS fecha
			FROM
				ws_booking_history wsbh
					LEFT JOIN trip_route tr ON wsbh.trip_route_id = tr.id
					LEFT JOIN trip t ON wsbh.trip_id_no = t.trip_id
			GROUP BY
				tr.name, DATE(wsbh.booking_date)
		";

		$data['trips'] = $this->db->query($sql)->result();

		$data['routes'] = $this->db->from('trip_route')->get()->result();

		echo Modules::run('template/layout', $data); 
	}
}
