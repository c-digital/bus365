<?php
	use BaconQrCode\Renderer\ImageRenderer;
	use BaconQrCode\Renderer\Image\ImagickImageBackEnd;
	use BaconQrCode\Renderer\RendererStyle\RendererStyle;
	use BaconQrCode\Writer;
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Ticket</title>

	<style>
		.text-center {
			text-align: center;
		}

		.font-weight-bold {
			font-weight: bold;
		}

		table, tr, th, td {
			border: 1px solid black;
			border-collapse: collapse;
		}

		table {
			margin: 10px auto 10px auto;
			width: 100%;
		}

		td, th {
			padding: 5px;
		}

		@media print {
		  body * {
		    visibility: hidden;
		  }
		  #tickets, #tickets * {
		    visibility: visible;
		  }
		  #tickets {
		    position: absolute;
		    left: 0;
		    top: 0;
		  }
		}
	</style>

</head>
<body>

	<a href="javascript:window.print()" class="btn btn-primary btn-sm">
		<i class="fa fa-print"></i> Imprimir
	</a>

	<a href="/dashboard/sales" class="btn btn-default btn-sm">
		<i class="fa fa-arrow-left"></i> Atrás
	</a>

	<div id="tickets">
		<?php $i = 0; foreach ($seats as $seat): ?>

			<?php
				$id = $sale[$i]->booking_id . '-' . $sale[$i]->id;

				$renderer = new ImageRenderer(
				    new RendererStyle(400),
				    new ImagickImageBackEnd()
				);

				$writer = new Writer($renderer);
				$writer->writeFile("https://bus365.base-php.com/dashboard/sales/markedAsEmbarked/$id", 'qrcode.png');

				$seat_type = strtolower($sale[$i]->seat_type);

				if ($seat_type == 'adult') {
					$seat_type = 'price';
				} else {

					if ($seat_type == 'child') {
						$seat_type = 'children';
					}

					$seat_type = $seat_type . '_price';
				}

				$route_id = $sale[$i]->route_id;
				$ci =& get_instance();
				$price = $ci->db->query("SELECT $seat_type FROM pri_price WHERE route_id = $route_id")->row()->$seat_type;
				$discount = $ci->db->query("SELECT discount FROM tkt_booking WHERE id_no = '$id_no'")->row()->discount;

				$count = count($seats);
			?>

			<div class="text-center">
				<div><span class="font-weight-bold">Ticket Nro:</span> <?php echo $sale[$i]->booking_id . '-' . $sale[$i]->id; ?></div>

				<hr>

				<img width="80px" src="/qrcode.png" alt="">

				<hr>

				<img width="300px" src="<?php echo base_url('uploads/' . $sale[$i]->logo); ?>" alt="">

				<div class="font-weight-bold"><?php echo $sale[$i]->title; ?></div>
				<div><span class="font-weight-bold"><?php echo display('nit'); ?>:</span> <?php echo $sale[$i]->nit; ?></div>
				<div><span class="font-weight-bold"><?php echo display('address'); ?>:</span> <?php echo $sale[$i]->address; ?></div>
				<div><span class="font-weight-bold"><?php echo display('lane'); ?>:</span> <?php echo $sale[$i]->lane; ?></div>

				<hr>

				<div class="font-weight-bold"><?php echo display('travel_info'); ?></div>

				<table>
					<tr>
						<th colspan="3"><?php echo display('route') ?>:</th>
						<th colspan="3"><?php echo 'Número viaje' ?>:</th>
					</tr>

					<tr>
						<td colspan="3"><?php echo $sale[$i]->route; ?></td>
						<td colspan="3"><?php echo $sale[$i]->assign_id; ?></td>
					</tr>

					<tr>
						<th><?php echo display('date') ?></th>
						<th><?php echo display('shipment') ?></th>
						<th><?php echo display('disembarkation') ?></th>
					</tr>

					<tr>
						<td><?php echo $sale[$i]->date; ?></td>
						<td><?php echo $sale[$i]->shipment; ?></td>
						<td><?php echo $sale[$i]->disembarkation; ?></td>
					</tr>

					<tr>
						<th><?php echo display('price') ?></th>
						<th>Descuento</th>
						<th>Monto pagado</th>
						<th><?php echo display('payment_method') ?></th>
					</tr>

					<tr>
						<td>BOB <?php echo number_format($price, 2); ?></td>
						<td>BOB <?php echo number_format(($discount / $count), 2); ?></td>
						<td>BOB <?php echo number_format($price - ($discount / $count), 2); ?></td>
						<td>Efectivo</td>
					</tr>
				</table>

				<div class="font-weight-bold"><?php echo display('passenger_Details'); ?></div>

				<table>
					<tr>
						<th colspan="3"><?php echo display('name') ?></th>
					</tr>

					<tr>
						<td colspan="3"><?php echo $sale[$i]->name; ?></td>
					</tr>

					<tr>
						<th><?php echo display('ci') ?></th>
						<th><?php echo display('age') ?></th>
						<th><?php echo display('seat') ?></th>
					</tr>

					<tr>
						<td><?php echo $sale[$i]->ci; ?></td>
						<td><?php echo $sale[$i]->age; ?></td>
						<td><?php echo $seat; ?></td>
					</tr>
				</table>

				<hr>

				<div><span class="font-weight-bold"><?php echo display('date') ?>:</span> <?php echo $sale[$i]->date; ?></div>
				<div><span class="font-weight-bold"><?php echo display('agent') ?>:</span> <?php echo $sale[$i]->agent; ?></div>
			</div>
		<?php $i = $i + 1; endforeach; ?>
	</div>

</body>
</html>