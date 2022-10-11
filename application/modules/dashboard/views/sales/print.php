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
		<?php foreach ($seats as $seat): ?>

			<?php
				$seat_type = strtolower($sale->seat_type);

				if ($seat_type == 'adult') {
					$seat_type = 'price';
				} else {
					$seat_type = $seat_type . '_price';
				}

				$route_id = $sale->route_id;
				$ci =& get_instance();
				$price = $ci->db->query("SELECT $seat_type FROM pri_price WHERE route_id = $route_id")->row()->$seat_type;
			?>

			<div class="text-center">
				<div><span class="font-weight-bold">Ticket Nro:</span> <?php echo $sale->booking_id . '-' . $sale->id; ?></div>

				<hr>

				<img width="300px" src="<?php echo base_url($sale->logo); ?>" alt="">

				<div class="font-weight-bold"><?php echo $sale->title; ?></div>
				<div><span class="font-weight-bold"><?php echo display('nit'); ?>:</span> <?php echo $sale->nit; ?></div>
				<div><span class="font-weight-bold"><?php echo display('address'); ?>:</span> <?php echo $sale->address; ?></div>
				<div><span class="font-weight-bold"><?php echo display('lane'); ?>:</span> <?php echo $sale->lane; ?></div>

				<hr>

				<div class="font-weight-bold"><?php echo display('travel_info'); ?></div>

				<table>
					<tr>
						<th colspan="3"><?php echo display('route') ?>:</th>
					</tr>

					<tr>
						<td colspan="3"><?php echo $sale->route; ?></td>
					</tr>

					<tr>
						<th><?php echo display('date') ?></th>
						<th><?php echo display('shipment') ?></th>
						<th><?php echo display('disembarkation') ?></th>
					</tr>

					<tr>
						<td><?php echo $sale->date; ?></td>
						<td><?php echo $sale->shipment; ?></td>
						<td><?php echo $sale->disembarkation; ?></td>
					</tr>

					<tr>
						<th><?php echo display('price') ?></th>
						<th><?php echo display('payment_method') ?></th>
					</tr>

					<tr>
						<td>BOB <?php echo $price; ?></td>
						<td>Efectivo</td>
					</tr>
				</table>

				<div class="font-weight-bold"><?php echo display('passenger_Details'); ?></div>

				<table>
					<tr>
						<th colspan="3"><?php echo display('name') ?></th>
					</tr>

					<tr>
						<td colspan="3"><?php echo $sale->name; ?></td>
					</tr>

					<tr>
						<th><?php echo display('ci') ?></th>
						<th><?php echo display('age') ?></th>
						<th><?php echo display('seat') ?></th>
					</tr>

					<tr>
						<td><?php echo $sale->ci; ?></td>
						<td><?php echo $sale->age; ?></td>
						<td><?php echo $seat; ?></td>
					</tr>
				</table>

				<hr>

				<div><span class="font-weight-bold"><?php echo display('date') ?>:</span> <?php echo $sale->date; ?></div>
				<div><span class="font-weight-bold"><?php echo display('agent') ?>:</span> <?php echo $sale->agent; ?></div>
			</div>
		<?php endforeach; ?>
	</div>

</body>
</html>