<?php

class Merchandise extends MX_Controller
{
	public function index()
	{
		$data['title'] = display('merchandise');

		$data['module'] = "dashboard";
		$data['page']   = "merchandise/index";

		$data['merchandise'] = $this->db->from('merchandise')->get()->result();

		echo Modules::run('template/layout', $data);
	}

	public function create()
	{
		$data['module'] = "dashboard";
		$data['title'] = display('create_merchandise');
		$data['page']   = "merchandise/create";

		$data['couriers'] = $this->db->from('user')->get()->result();

		$data['locations'] = $this->db->from('trip_location')->get()->result();

		echo Modules::run('template/layout', $data);
	}

	public function getCourierInfo()
	{
		$nid = $this->input->get('nid');
		$courier = $this->db->from('couriers')->where('nid', $nid)->get()->row();
		echo json_encode($courier);
	}

	public function store()
	{
		$post = [
			'nid' => $_POST['courier_nid'],
			'name' => $_POST['courier_name'],
			'email' => $_POST['courier_email'],
			'phone' => $_POST['courier_phone'],

			'package_origin' => $_POST['package_origin'],
			'package_destination' => $_POST['package_destination'],
			'package_description' => $_POST['package_description'],
			'package_weight' => $_POST['package_weight'],
			'package_price' => $_POST['package_price'],

			'receipt_nid' => $_POST['receipt_nid'],
			'receipt_name' => $_POST['receipt_name'],
			'receipt_email' => $_POST['receipt_email'],
			'receipt_phone' => $_POST['receipt_phone'],

			'billing_type' => $_POST['billing_type'],
			'billing_adjustment' => $_POST['billing_adjustment'],
			'billing_discount' => $_POST['billing_discount'],
			'billing_total' => $_POST['billing_total'],
		];

		extract($post);

		$courier = $this->db->query("SELECT * FROM couriers WHERE nid = '$nid'")->result();

		if (count($courier)) {
			$this->db->query("UPDATE name = '$name', email = '$email', phone = '$phone', date_birth = '$date_birth' SET couriers WHERE nid = $nid");
			$courier_id = $courier->id;
		} else {
			$this->db->query("INSERT INTO couriers (nid, name, email, phone, date_birth) VALUES ('$nid', '$name', '$email', '$phone', '$date_birth')");
			$courier_id = $this->db->insert_id();
		}

		$this->db->query("INSERT INTO merchandise (package_origin, package_destination, package_description, package_weight, package_price, receipt_nid, receipt_name, receipt_email, receipt_phone, receipt_date_birth, billing_type, billing_adjustment, billing_discount, billing_total, status) VALUES ('$package_origin', '$package_destination', '$package_description', '$package_weight', '$package_price', '$receipt_nid', '$receipt_name', '$receipt_email', '$receipt_phone', '$receipt_date_birth', '$billing_type', '$billing_adjustment', '$billing_discount', '$billing_discount', '$billing_total', 'Abierto')");
	}
}
