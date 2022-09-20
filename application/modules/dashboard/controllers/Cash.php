<?php

defined('BASEPATH') OR exit('No direct script access allowed');
 
class Cash extends MX_Controller {

	public function __construct()
	{
		parent::__construct();
		
		$this->load->model(array(
			'setting_model'
		));

		if (!$this->session->userdata('isAdmin')) 
			redirect('login'); 
	}
 
	public function index()
	{
		$data['module'] = display("billing"); 
		$data['title'] = display('Cash');
      
      	$casher = $_SESSION['email'];

		$where = [];

		if (isset($_GET['start']) && $_GET['start'] != '') {
			$start = $_GET['start'];
			$where[] =  "DATE(date) >= '$start'";
		}

		if (isset($_GET['end']) && $_GET['end'] != '') {
			$end = $_GET['end'];
			$where[] =  "DATE(date) <= '$end'";
		}

		if (isset($_GET['type_move']) && ($_GET['type_move'] != '' && $_GET['type_move'] != 'All')) {
			$type_move = $_GET['type_move'];
			$where[] =  "type_move = '$type_move'";
		}

		if (isset($_GET['payment_method']) && ($_GET['payment_method'] != '' && $_GET['payment_method'] != 'All')) {
			$payment_method = $_GET['payment_method'];
			$where[] =  "payment_method = '$payment_method'";
		}

		if (isset($_GET['casher']) && ($_GET['casher'] != '' && $_GET['casher'] != 'All')) {
			$casher_select = $_GET['casher'];
			$where[] =  "casher = '$casher_select'";
		}

		if (!(isset($_GET['start']) && $_GET['start'] != '') && !(isset($_GET['end']) && $_GET['end'] != '')) {
			$where[] = "date > (SELECT date FROM cash WHERE status = 'Close' AND casher = '$casher' ORDER BY date DESC LIMIT 1)";
		}

		if (count($where)) {
			$where = implode(' AND ', $where);
		} else {
			$where = '1';
		}

		$data['moves'] = $this->db->query("SELECT * FROM cash WHERE $where AND casher = '$casher'")->result();

		$caja = $this->db->query("SELECT * FROM cash WHERE casher = '$casher' ORDER BY date DESC")->row();

		$data['status'] = $caja->status;
		$data['balance'] = $caja->balance;

		$data['ins'] = $this->db->query("SELECT SUM(amount) AS ins FROM cash WHERE type_move = 'In' AND date >= (SELECT date FROM cash WHERE status = 'Close' ORDER BY date DESC LIMIT 1) AND casher = '$casher'")->row()->ins;

		$data['outs'] = $this->db->query("SELECT SUM(amount) AS outs FROM cash WHERE type_move = 'Out' AND date > (SELECT date FROM cash WHERE status = 'Close' ORDER BY date DESC LIMIT 1)  AND casher = '$casher'")->row()->outs;

		$data['cashers'] = $this->db->query("SELECT email FROM user")->result();

		$data['module'] = "dashboard";
		$data['page']   = "cash/index";

		echo Modules::run('template/layout', $data);
	}

	public function save()
	{		
		extract($_POST);

		$cash = $this->db->query("SELECT * FROM cash ORDER BY date DESC")->row();

		if ($type_move == 'in') {
			$balance = (float) $cash->balance + (float) $amount;
		}

		if ($type_move == 'out') {
			$balance = (float) $cash->balance - (float) $amount;
		}

		$casher = $_SESSION['email'];

		$this->db->query("INSERT INTO cash (type_move, date, amount, payment_method, concept, balance, status, casher) VALUES ('$type_move', NOW(), '$amount', '$payment_method', '$concept', '$balance', 'Open', '$casher')");

		$id = $this->db->insert_id();

		return redirect("/dashboard/cash/one/$id");
	}

	public function close()
	{
		$balance = $this->db->query("SELECT * FROM cash ORDER BY date DESC LIMIT 1")->row()->balance;

		$casher = $_SESSION['email'];

		$this->db->query("INSERT INTO cash (type_move, date, amount, concept, balance, status, casher) VALUES ('out', NOW(), '$balance', 'Close cash', 0, 'Close', '$casher')");

		return redirect('/dashboard/cash/todo');
	}

	public function todo()
	{
		$data['title'] = display('Close cash');
      
      	$casher = $_SESSION['email'];

        $data['moves'] = $this->db->query("SELECT * FROM cash WHERE casher = '$casher' AND date > (SELECT date FROM cash WHERE status = 'Close' AND casher = '$casher' ORDER BY date DESC LIMIT 1, 1) ORDER BY date DESC")->result();

        $cash = $this->db->query("SELECT * FROM cash WHERE casher = '$casher' ORDER BY date DESC")->row();
		$data['status'] = $cash->status;
		$data['balance'] = $cash->balance;

		$data['ins'] = $this->db->query("SELECT SUM(amount) AS ins FROM cash WHERE casher = '$casher' AND type_move = 'in' AND date >= (SELECT date FROM cash WHERE status = 'Close' ORDER BY date DESC LIMIT 1 OFFSET 1)")->row()->ins;

		$data['outs'] = $this->db->query("SELECT SUM(amount) AS outs FROM cash WHERE casher = '$casher' AND type_move = 'out' AND date > (SELECT date FROM cash WHERE status = 'Close' ORDER BY date DESC LIMIT 1 OFFSET 1)")->row()->outs;

		$data['types'] = $this->db->query("SELECT payment_method, SUM(amount) AS total FROM cash WHERE casher = '$casher' AND date > (SELECT date FROM cash WHERE casher = '$casher' AND status = 'Close' ORDER BY date DESC LIMIT 1, 1) ORDER BY date ASC")->result();

		$data['setting'] = $this->setting_model->read(); 

		$data['module'] = "dashboard";
		$data['page']   = "cash/todo";

		echo Modules::run('template/layout', $data);
	}

	public function one($id)
	{
		$data['title'] = display('cash_receipt');

		$data['move'] = $this->db->query("SELECT * FROM cash WHERE id = $id")->row();

		$data['module'] = "dashboard";
		$data['page']   = "cash/uno";

		$data['setting'] = $this->setting_model->read(); 

		echo Modules::run('template/layout', $data);
	}

	public function open()
	{
		extract($_POST);

		$casher = $_SESSION['email'];

		$this->db->query("INSERT INTO cash (type_move, date, amount, concept, balance, status, payment_method, casher) VALUES ('in', NOW(), '$amount', 'Open cash', '$balance', 'Open', 'Cash', '$casher')");

		return redirect('/dashboard/cash');
	}
}
