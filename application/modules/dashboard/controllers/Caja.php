<?php

defined('BASEPATH') OR exit('No direct script access allowed');
 
class Caja extends MX_Controller {

	public function __construct()
	{
		parent::__construct();

		if ($this->session->userdata('isLogIn') == false) 
			redirect('login');

		$this->db->query("SET sql_mode = ''");
	}
 
	public function index()
	{
		$data['module'] = display("billing"); 
		$data['title'] = 'Caja';
      
      	$cajero = $this->session->userdata('fullname');

		$where = [];

		if (isset($_GET['inicio']) && $_GET['inicio'] != '') {
			$inicio = $_GET['inicio'];
			$where[] =  "DATE(fecha) >= '$inicio'";
		}

		if (isset($_GET['fin']) && $_GET['fin'] != '') {
			$fin = $_GET['fin'];
			$where[] =  "DATE(fecha) <= '$fin'";
		}

		if (isset($_GET['tipo_movimiento']) && ($_GET['tipo_movimiento'] != '' && $_GET['tipo_movimiento'] != 'Todos')) {
			$tipo_movimiento = $_GET['tipo_movimiento'];
			$where[] =  "tipo_movimiento = '$tipo_movimiento'";
		}

		if (isset($_GET['metodo_pago']) && ($_GET['metodo_pago'] != '' && $_GET['metodo_pago'] != 'Todos')) {
			$metodo_pago = $_GET['metodo_pago'];
			$where[] =  "metodo_pago = '$metodo_pago'";
		}

		if (isset($_GET['cajero']) && ($_GET['cajero'] != '' && $_GET['cajero'] != 'Todos')) {
			$cajero_select = $_GET['cajero'];
			$where[] =  "cajero = '$cajero_select'";
		}

		if (!(isset($_GET['inicio']) && $_GET['inicio'] != '') && !(isset($_GET['fin']) && $_GET['fin'] != '')) {
			$where[] = "fecha > (SELECT fecha FROM caja WHERE estado = 'Caja cerrada' AND cajero = '$cajero' ORDER BY id DESC LIMIT 1)";
		}

		if (count($where)) {
			$where = implode(' AND ', $where);
		} else {
			$where = '1';
		}

		$data['movimientos'] = $this->db->query("SELECT * FROM caja WHERE $where AND cajero = '$cajero'")->result();

		$caja = $this->db->query("SELECT * FROM caja WHERE cajero = '$cajero' ORDER BY id DESC")->row();
		$data['estado'] = $caja->estado;
		$data['saldo'] = $caja->saldo;

		$data['entradas'] = $this->db->query("SELECT SUM(monto) AS entradas FROM caja WHERE tipo_movimiento = 'Entrada' AND fecha >= (SELECT fecha FROM caja WHERE estado = 'Caja cerrada' ORDER BY id DESC LIMIT 1) AND cajero = '$cajero'")->row()->entradas;

		$data['salidas'] = $this->db->query("SELECT SUM(monto) AS salidas FROM caja WHERE tipo_movimiento = 'Salida' AND fecha > (SELECT fecha FROM caja WHERE estado = 'Caja cerrada' ORDER BY id DESC LIMIT 1)  AND cajero = '$cajero'")->row()->salidas;

		$data['cajeros'] = $this->db->query("SELECT id, CONCAT_WS(' ', firstname, lastname) AS nombre FROM user")->result();

		$data['title'] = 'Caja';
        $data['module'] = "dashboard";
        $data['page']   = "caja/index";

		echo Modules::run('template/layout', $data);
	}

	public function guardar()
	{		
		extract($_POST);

		$caja = $this->db->query("SELECT * FROM caja ORDER BY id DESC")->row();

		if ($tipo_movimiento == 'Entrada') {
			$saldo = (float) $caja->saldo + (float) $monto;
		}

		if ($tipo_movimiento == 'Salida') {
			$saldo = (float) $caja->saldo - (float) $monto;
		}

		$cajero = $this->session->userdata('fullname');

		$this->db->query("INSERT INTO caja (tipo_movimiento, fecha, monto, metodo_pago, concepto, saldo, estado, cajero) VALUES ('$tipo_movimiento', NOW(), '$monto', '$metodo_pago', '$concepto', '$saldo', 'Caja abierta', '$cajero')");

		$id = $this->db->insert_id();

		redirect("/dashboard/caja/uno/$id");
	}

	public function cierre()
	{
		$monto = json_encode($_POST['monto']);

		$cajero = $this->session->userdata('fullname');

		$this->db->query("INSERT INTO caja (tipo_movimiento, fecha, monto, concepto, saldo, estado, cajero) VALUES ('Salida', NOW(), '$monto', 'Cierre de caja', 0, 'Caja cerrada', '$cajero')");

		redirect('/dashboard/caja/todo');
	}

	public function todo()
	{
		$data['title'] = 'Cierre de caja';
        $data['website'] = $this->db->query("SELECT * FROM setting")->row();
      
      	$cajero = $this->session->userdata('fullname');

        $data['entradas'] = $this->db->query("SELECT * FROM caja WHERE tipo_movimiento = 'Entrada' AND cajero = '$cajero' AND fecha > (SELECT fecha FROM caja WHERE estado = 'Caja cerrada' AND cajero = '$cajero' ORDER BY id DESC LIMIT 1, 1) ORDER BY id DESC")->result();

        $data['salidas'] = $this->db->query("SELECT * FROM caja WHERE tipo_movimiento = 'Salida' AND cajero = '$cajero' AND fecha > (SELECT fecha FROM caja WHERE estado = 'Caja cerrada' AND cajero = '$cajero' ORDER BY id DESC LIMIT 1, 1) ORDER BY id DESC")->result();

        $data['entregues'] = json_decode($data['salidas'][0]->monto);

        unset($data['salidas'][0]);

		$data['title'] = 'Caja';
        $data['module'] = "dashboard";
        $data['page']   = "caja/todo";

        echo Modules::run('template/layout', $data);
	}

	public function uno($id)
	{
		$data['title'] = 'Recibo de caja';
        $data['website'] = $this->db->query("SELECT * FROM setting")->row();

		$data['movimiento'] = $this->db->query("SELECT * FROM caja WHERE id = $id")->row();

		$data['title'] = 'Caja';
        $data['module'] = "dashboard";
        $data['page']   = "caja/uno";

        echo Modules::run('template/layout', $data);
	}

	public function apertura()
	{
		extract($_POST);

		$cajero = $this->session->userdata('fullname');

		$this->db->query("INSERT INTO caja (tipo_movimiento, fecha, monto, concepto, saldo, estado, metodo_pago, cajero) VALUES ('Entrada', NOW(), '$monto', 'Apertura de caja', '$monto', 'Caja abierta', 'Efectivo', '$cajero')");

		redirect('/dashboard/caja');
	}
}
