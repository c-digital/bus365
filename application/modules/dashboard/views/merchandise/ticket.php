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
		}

		td, th {
			padding: 5px;
		}
	</style>

</head>
<body>
	<div class="text-center">
		<div><span class="font-weight-bold">Ticket Nro:</span> <?php echo $sale->booking_id; ?></div>

		<hr>

		<img width="300px" src="<?php echo base_url('uploads/' . $sale->company_logo); ?>" alt="">

		<div class="font-weight-bold"><?php echo $sale->company_name; ?></div>
		<div><span class="font-weight-bold">NIT:</span> <?php echo $sale->company_nit; ?></div>
		<div><span class="font-weight-bold"><?php echo display('address'); ?>:</span> <?php echo $sale->company_address; ?></div>

		<hr>

		<div class="font-weight-bold"><?php echo display('travel_info'); ?></div>

		<table>
			<tr>
				<th colspan="3"><?php echo display('route') ?>:</th>
			</tr>

			<tr>
				<td colspan="3">Santa Cruz x La Paz</td>
			</tr>

			<tr>
				<th><?php echo display('date') ?></th>
				<th><?php echo display('shipment') ?></th>
				<th><?php echo display('disembarkation') ?></th>
			</tr>

			<tr>
				<td>19/09/2022</td>
				<td>Santa Cruz</td>
				<td>La Paz</td>
			</tr>

			<tr>
				<th><?php echo display('price') ?></th>
				<th><?php echo display('payment_method') ?></th>
			</tr>

			<tr>
				<td>BOB 90.00</td>
				<td>Efectivo</td>
			</tr>
		</table>

		<div class="font-weight-bold"><?php echo display('passenger_Details'); ?></div>

		<table>
			<tr>
				<th colspan="3"><?php echo display('name') ?></th>
			</tr>

			<tr>
				<td colspan="3">Erick Goncalves dos Santos</td>
			</tr>

			<tr>
				<th><?php echo display('ci') ?></th>
				<th><?php echo display('age') ?></th>
				<th><?php echo display('seat') ?></th>
			</tr>

			<tr>
				<td>24370873</td>
				<td>28</td>
				<td>1</td>
			</tr>
		</table>

		<hr>

		<div><span class="font-weight-bold"><?php echo display('date') ?>:</span> <?php echo $sale->date; ?></div>
		<div><span class="font-weight-bold"><?php echo display('agent') ?>:</span> <?php echo $sale->agent; ?></div>
	</div>
</body>
</html>