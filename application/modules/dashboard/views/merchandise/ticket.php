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
		<div><span class="font-weight-bold">Ticket Nro:</span> <?php echo $merchandise->id; ?></div>

		<hr>

		<img width="300px" src="<?php echo base_url($website->logo); ?>" alt="">

		<div class="font-weight-bold"><?php echo $website->title; ?></div>
		<div><span class="font-weight-bold"><?php echo display('address'); ?>:</span> <?php echo $website->address; ?></div>

		<hr>

		<div class="font-weight-bold"><?php echo display('courier_details'); ?></div>

		<table>
			<tr>
				<th colspan="2"><?php echo display('name') ?></th>
			</tr>

			<tr>
				<td colspan="2"><?php echo $merchandise->courier_name ?></td>
			</tr>

			<tr>
				<th><?php echo display('ci') ?></th>
				<th><?php echo display('phone') ?></th>
			</tr>

			<tr>
				<td><?php echo $merchandise->courier_nid ?></td>
				<td><?php echo $merchandise->courier_phone ?></td>
			</tr>
		</table>

		<div class="font-weight-bold"><?php echo display('package_details'); ?></div>

		<table>
			<tr>
				<th colspan="3"><?php echo display('origin') ?>:</th>
				<th colspan="3"><?php echo display('destination') ?>:</th>
			</tr>

			<tr>
				<td colspan="3"><?php echo $merchandise->package_origin; ?></td>
				<td colspan="3"><?php echo $merchandise->package_destination; ?></td>
			</tr>

			<tr>
				<th colspan="2"><?php echo display('weight'); ?></th>
				<th colspan="2"><?php echo display('price_per_kg'); ?></th>
				<th colspan="2"><?php echo display('package_price'); ?></th>
			</tr>

			<tr>
				<td colspan="2"><?php echo $merchandise->package_weight; ?></td>
				<td colspan="2"><?php echo $merchandise->price_per_kg; ?></td>
				<td colspan="2"><?php echo $merchandise->package_price; ?></td>
			</tr>
		</table>

		<div class="font-weight-bold"><?php echo display('receipt_details'); ?></div>

		<table>
			<tr>
				<th colspan="2"><?php echo display('name') ?></th>
			</tr>

			<tr>
				<td colspan="2"><?php echo $merchandise->receipt_name ?></td>
			</tr>

			<tr>
				<th><?php echo display('ci') ?></th>
				<th><?php echo display('phone') ?></th>
			</tr>

			<tr>
				<td><?php echo $merchandise->receipt_nid ?></td>
				<td><?php echo $merchandise->receipt_phone ?></td>
			</tr>
		</table>

		<div class="font-weight-bold"><?php echo display('billing_details'); ?></div>

		<table>
			<tr>
				<th><?php echo display('type') ?></th>
				<th><?php echo display('discount') ?></th>
				<th><?php echo display('total') ?></th>
			</tr>

			<tr>
				<td><?php echo $merchandise->billing_type ?></td>
				<td><?php echo $merchandise->billing_discount ?></td>
				<td><?php echo $merchandise->billing_total ?></td>
			</tr>
		</table>

		<hr>

		<div><span class="font-weight-bold"><?php echo display('date') ?>:</span> <?php echo date('d/m/Y'); ?></div>
		<div><span class="font-weight-bold"><?php echo display('agent') ?>:</span> <?php echo $this->session->userdata('fullname'); ?></div>
	</div>
</body>
</html>