<?php

defined('BASEPATH') OR exit('No direct script access allowed');
 
class Cash extends MX_Controller {

	public function __construct()
	{
		parent::__construct();

		if ($this->session->userdata('isLogIn') == false) 
			redirect('login');
	}
 
	public function index()
	{
		$data['module'] = display("billing"); 
		$data['title'] = 'Caja';
      
      	$casher = $_SESSION['email'];

		$where = [];

		if (isset($_GET['inicio']) && $_GET['inicio'] != '') {
			$inicio = $_GET['inicio'];
			$where[] =  "DATE(date) >= '$inicio'";
		}

		if (isset($_GET['fin']) && $_GET['fin'] != '') {
			$fin = $_GET['fin'];
			$where[] =  "DATE(date) <= '$fin'";
		}

		if (isset($_GET['tipo_movimiento']) && ($_GET['tipo_movimiento'] != '' && $_GET['tipo_movimiento'] != 'Todos')) {
			$tipo_movimiento = $_GET['tipo_movimiento'];
			$where[] =  "tipo_movimiento = '$tipo_movimiento'";
		}

		if (isset($_GET['metodo_pago']) && ($_GET['metodo_pago'] != '' && $_GET['metodo_pago'] != 'Todos')) {
			$metodo_pago = $_GET['metodo_pago'];
			$where[] =  "metodo_pago = '$metodo_pago'";
		}

		if (isset($_GET['casher']) && ($_GET['casher'] != '' && $_GET['casher'] != 'Todos')) {
			$casher_select = $_GET['casher'];
			$where[] =  "casher = '$casher_select'";
		}

		if (!(isset($_GET['inicio']) && $_GET['inicio'] != '') && !(isset($_GET['fin']) && $_GET['fin'] != '')) {
			$where[] = "date > (SELECT date FROM cash WHERE status = 'Caja cerrada' AND casher = '$casher' ORDER BY id DESC LIMIT 1)";
		}

		if (count($where)) {
			$where = implode(' AND ', $where);
		} else {
			$where = '1';
		}

		$data['movimientos'] = $this->db->query("SELECT * FROM cash WHERE $where AND casher = '$casher'")->result();

		$caja = $this->db->query("SELECT * FROM cash WHERE casher = '$casher' ORDER BY id DESC")->row();

		$data['status'] = $caja->status;
		$data['balance'] = $caja->balance;

		$data['entradas'] = $this->db->query("SELECT SUM(amount) AS entradas FROM cash WHERE type_move = 'Entrada' AND date >= (SELECT date FROM cash WHERE status = 'Caja cerrada' ORDER BY id DESC LIMIT 1) AND casher = '$casher'")->row()->entradas;

		$data['salidas'] = $this->db->query("SELECT SUM(amount) AS salidas FROM cash WHERE type_move = 'Salida' AND date > (SELECT date FROM cash WHERE status = 'Caja cerrada' ORDER BY id DESC LIMIT 1)  AND casher = '$casher'")->row()->salidas;

		$data['cashers'] = $this->db->query("SELECT id AS id, CONCAT_WS(' ', firstname, lastname) AS nombre FROM user")->result();

		$data['module'] = "dashboard";
		$data['page']   = "cash/index";

		echo Modules::run('template/layout', $data);
	}

	public function guardar()
	{		
		extract($_POST);

		$caja = $this->db->query("SELECT * FROM cash ORDER BY id DESC")->row();

		if ($tipo_movimiento == 'Entrada') {
			$saldo = (float) $caja->saldo + (float) $monto;
		}

		if ($tipo_movimiento == 'Salida') {
			$saldo = (float) $caja->saldo - (float) $monto;
		}

		$casher = $this->session->userdata('fullname');

		$this->db->query("INSERT INTO cash (tipo_movimiento, date, monto, metodo_pago, concepto, saldo, status, casher) VALUES ('$tipo_movimiento', NOW(), '$monto', '$metodo_pago', '$concepto', '$saldo', 'Caja abierta', '$casher')");

		$id = $this->db->insert_id();

		redirect("/billing/caja/uno/$id");
	}

	public function cierre()
	{
		$saldo = $this->db->query("SELECT * FROM cash ORDER BY id DESC LIMIT 1")->row()->saldo;

		$casher = $this->session->userdata('fullname');

		$this->db->query("INSERT INTO cash (tipo_movimiento, date, monto, concepto, saldo, status, casher) VALUES ('Salida', NOW(), '$saldo', 'Cierre de caja', 0, 'Caja cerrada', '$casher')");

		redirect('/billing/caja/todo');
	}

	public function todo()
	{
		$data['title'] = 'Cierre de caja';
        $data['website'] = $this->bill_model->website();
      
      	$casher = $this->session->userdata('fullname');

        $data['movimientos'] = $this->db->query("SELECT * FROM cash WHERE casher = '$casher' AND date > (SELECT date FROM cash WHERE status = 'Caja cerrada' AND casher = '$casher' ORDER BY id DESC LIMIT 1, 1) ORDER BY id DESC")->result();

        $caja = $this->db->query("SELECT * FROM cash WHERE casher = '$casher' ORDER BY id DESC")->row();
		$data['status'] = $caja->status;
		$data['saldo'] = $caja->saldo;

		$data['entradas'] = $this->db->query("SELECT SUM(monto) AS entradas FROM cash WHERE casher = '$casher' AND tipo_movimiento = 'Entrada' AND date >= (SELECT date FROM cash WHERE status = 'Caja cerrada' ORDER BY id DESC LIMIT 1 OFFSET 1)")->row()->entradas;

		$data['salidas'] = $this->db->query("SELECT SUM(monto) AS salidas FROM cash WHERE casher = '$casher' AND tipo_movimiento = 'Salida' AND date > (SELECT date FROM cash WHERE status = 'Caja cerrada' ORDER BY id DESC LIMIT 1 OFFSET 1)")->row()->salidas;

		$data['tipos'] = $this->db->query("SELECT metodo_pago, SUM(monto) AS total FROM cash WHERE casher = '$casher' AND date > (SELECT date FROM cash WHERE casher = '$casher' AND status = 'Caja cerrada' ORDER BY id DESC LIMIT 1, 1) ORDER BY id ASC")->result();

		$data['content'] = $this->load->view('billing/caja/todo', $data, true);
        $this->load->view('layout/main_wrapper', $data);
	}

	public function uno($id)
	{
		$data['title'] = 'Recibo de caja';
        $data['website'] = $this->bill_model->website();

		$data['movimiento'] = $this->db->query("SELECT * FROM cash WHERE id = $id")->row();

		$data['content'] = $this->load->view('billing/caja/uno', $data, true);
        $this->load->view('layout/main_wrapper', $data);
	}

	public function apertura()
	{
		extract($_POST);

		$casher = $this->session->userdata('fullname');

		$this->db->query("INSERT INTO cash (tipo_movimiento, date, monto, concepto, saldo, status, metodo_pago, casher) VALUES ('Entrada', NOW(), '$monto', 'Apertura de caja', '$saldo', 'Caja abierta', 'Efectivo', '$casher')");

		redirect('/billing/caja');
	}
}
