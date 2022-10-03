<?php

class Merchandise extends MX_Controller
{
	public function index()
	{
		$data['title'] = display('merchandise');

		$data['module'] = "dashboard";
		$data['page']   = "merchandise/index";

		$select = "
			m.id,
			receipt_name AS courier,
			d.name AS destination,
			o.name AS origin,
			m.receipt_name AS receipt,
			m.receipt_phone AS receipt_phone,
			m.billing_type,
			m.billing_total AS total,
			m.trip_id,
			m.status
		";

		$data['merchandise'] = $this->db->select($select)
			->from('merchandise m')
			->join('couriers c', 'm.courier_id = c.id', 'left')
			->join('trip_location d', 'd.id = m.package_destination', 'left')
			->join('trip_location o', 'o.id = m.package_origin', 'left')
			->get()
			->result();

		$data['trips'] = $this->db->from('trip')->where('status', 1)->get()->result();

		echo Modules::run('template/layout', $data);
	}

	public function create()
	{
		$data['module'] = "dashboard";
		$data['title'] = display('create_merchandise');
		$data['page']   = "merchandise/create";

		$data['couriers'] = $this->db->from('user')->get()->result();

		$data['locations'] = $this->db->from('trip_location')->get()->result();

		$data['price_per_kg'] = $this->db->from('price_per_kg')->get()->row()->value;

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
			'date_birth' => $_POST['courier_date_birth'],

			'package_origin' => $_POST['package_origin'],
			'package_destination' => $_POST['package_destination'],
			'package_description' => $_POST['package_description'],
			'package_weight' => $_POST['package_weight'],
			'package_price' => $_POST['package_price'],

			'receipt_nid' => $_POST['receipt_nid'],
			'receipt_name' => $_POST['receipt_name'],
			'receipt_email' => $_POST['receipt_email'],
			'receipt_phone' => $_POST['receipt_phone'],
			'receipt_date_birth' => $_POST['receipt_date_birth'],

			'billing_type' => $_POST['billing_type'],
			'billing_discount' => $_POST['billing_discount'],
			'billing_total' => $_POST['billing_total'],
		];

		extract($post);

		$courier = $this->db->query("SELECT * FROM couriers WHERE nid = '$nid'")->row();

		if (count($courier)) {
			$this->db->query("UPDATE couriers SET name = '$name', email = '$email', phone = '$phone', date_birth = '$date_birth'  WHERE nid = $nid");
			$courier_id = $courier->id;
		} else {
			$this->db->query("INSERT INTO couriers (nid, name, email, phone, date_birth) VALUES ('$nid', '$name', '$email', '$phone', '$date_birth')");
			$courier_id = $this->db->insert_id();
		}

		$this->db->query("INSERT INTO merchandise (courier_id, package_origin, package_destination, package_description, package_weight, package_price, receipt_nid, receipt_name, receipt_email, receipt_phone, receipt_date_birth, billing_type, billing_discount, billing_total, status) VALUES ('$courier_id', '$package_origin', '$package_destination', '$package_description', '$package_weight', '$package_price', '$receipt_nid', '$receipt_name', '$receipt_email', '$receipt_phone', '$receipt_date_birth', '$billing_type', '$billing_discount', '$billing_total', 'open')");

		if ($post['billing_type'] == 'addresse') {
			$total = $post['billing_total'];
			$concepto = 'Envio de mercadería #' . $this->db->insert_id();

			$cajero = $this->session->userdata('fullname');

			$caja = $this->db->query("SELECT * FROM caja WHERE cajero = '$cajero' ORDER BY fecha DESC")->row();

			$estado = $caja->estado;
			$saldo = $caja->saldo + $total;

			if ($estado == 'Caja abierta') {
				$this->db->query("INSERT INTO caja (tipo_movimiento, fecha, monto, metodo_pago, concepto, saldo, estado, cajero) VALUES ('Entrada', NOW(), '$total', 'Efectivo', '$concepto', '$saldo', 'Caja abierta', '$cajero')");
			}
		}

		return redirect('/dashboard/merchandise');
	}

	public function pricePerKg()
	{
		$data['module'] = "dashboard";
		$data['title'] = display('price_per_kg');
		$data['page']   = "merchandise/price-per-kg";

		if ($this->input->post()) {
			$price_per_kg = $this->input->post('price_per_kg');
			$this->db->query("UPDATE price_per_kg SET value = '$price_per_kg'");
		}

		$data['pricePerKg'] = $this->db->from('price_per_kg')->get()->row()->value;

		echo Modules::run('template/layout', $data);
	}

	public function show($id)
	{
		$data['module'] = "dashboard";
		$data['title'] = display('price_per_kg');
		$data['page']   = "merchandise/show";

		$select = "
			c.nid AS courier_nid,
			c.name AS courier_name,
			c.email AS courier_email,
			c.phone AS courier_phone,
			c.date_birth AS courier_date_birth,

			o.name AS package_origin,
			d.name AS package_destination,
			m.package_description,
			m.package_weight,
			(m.package_price / m.package_weight) AS price_per_kg,
			m.package_price,

			m.receipt_name,
			m.receipt_email,
			m.receipt_phone,
			m.receipt_date_birth,
			m.receipt_nid,

			m.billing_type,
			m.billing_discount,
			(m.package_price - m.billing_discount) AS billing_total
		";

		$data['merchandise'] = $this->db->select($select)
			->from('merchandise m')
			->join('couriers c', 'm.courier_id = c.id', 'left')
			->join('trip_location o', 'm.package_origin = o.id', 'left')
			->join('trip_location d', 'm.package_destination = d.id', 'left')
			->where('m.id', $id)
			->get()
			->row();

		echo Modules::run('template/layout', $data);
	}

	public function assign()
	{
		$trip_id = $this->input->post('trip_id');
		$id = $this->input->post('id');

		$this->db->query("UPDATE merchandise SET trip_id = '$trip_id', status = 'assigned' WHERE id = $id");

		return redirect('/dashboard/merchandise');
	}

	public function delivered($id)
	{
		$this->db->query("UPDATE merchandise SET status = 'delivered' WHERE id = $id");

		$merchandise = $this->db->query("UPDATE merchandise SET status = 'delivered' WHERE id = $id")->row();

		$cajero = $this->session->userdata('fullname');

		$caja = $this->db->query("SELECT * FROM caja WHERE cajero = '$cajero' ORDER BY fecha DESC")->row();

		$total = $merchandise->billing_total;

		$estado = $caja->estado;
		$saldo = $caja->saldo + $total;

		$concepto = 'Envío de mercadería #' . $merchandise->id;

		if ($estado == 'Caja abierta') {
			$this->db->query("INSERT INTO caja (tipo_movimiento, fecha, monto, metodo_pago, concepto, saldo, estado, cajero) VALUES ('Entrada', NOW(), '$total', 'Efectivo', '$concepto', '$saldo', 'Caja abierta', '$cajero')");
		}

		return redirect('/dashboard/merchandise');
	}

	public function delete($id)
	{
		$this->db->query("DELETE FROM merchandise WHERE id = $id");
		return redirect('/dashboard/merchandise');
	}

	public function ticket($id)
	{
		$data['title'] = 'Ticket';
        $data['module'] = "dashboard";
        $data['page']   = "merchandise/ticket";

        $data['website'] = $this->db->query("SELECT * FROM setting")->row();

        $sql = "
        	SELECT
        		m.id,

        		c.name AS courier_name,
        		c.nid AS courier_nid,
        		c.phone AS courier_phone,

        		o.name AS package_origin,
        		d.name AS package_destination,
        		m.package_weight AS package_weight,
        		(m.package_price / m.package_weight) AS price_per_kg,
        		m.package_price AS package_price,

        		receipt_name,
        		receipt_nid,
        		receipt_phone,

        		billing_type,
        		billing_discount,
        		billing_total
        	FROM
        		merchandise m
        			INNER JOIN couriers c ON m.courier_id = c.id
        			INNER JOIN trip_location o ON m.package_origin = o.id
        			INNER JOIN trip_location d ON m.package_destination = d.id
        	WHERE
        		m.id = $id
        ";

        $data['merchandise'] = $this->db->query($sql)->row();

        echo Modules::run('template/layout', $data);
	}
}
