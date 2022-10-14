<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <style>
        table,
        thead,
        tr,
        th,
        tbody,
        td {
            border: 1px solid black;
            border-collapse: collapse;
        }

        table {
            margin-top: 23px;
            width: 100%;
        }
    </style>

</head>
<body>
    <div class="col-sm-12">
     <div class="table-responsive">
        <table class="table table-bordered ">
            <thead>
                <tr>
                    <th><?php echo display('date') ?></th>
                    <th><?php echo display('route') ?></th>
                    <th><?php echo display('trip1') ?></th>
                    <th><?php echo display('no_fleet') ?></th>
                    <th><?php echo display('no_chasis') ?></th>
                    <th><?php echo display('driver_name_1') ?></th>
                    <th><?php echo display('driver_ci_1') ?></th>
                    <th><?php echo display('driver_name_2') ?></th>
                    <th><?php echo display('driver_ci_2') ?></th>
                    <th><?php echo display('assistant_name_1') ?></th>
                    <th><?php echo display('assistant_ci_1') ?></th>
                    <th><?php echo display('assistant_name_2') ?></th>
                    <th><?php echo display('assistant_ci_2') ?></th>
                    <th><?php echo display('assistant_name_3') ?></th>
                    <th><?php echo display('assistant_ci_3') ?></th>
                </tr>
            </thead>

            <tfoot>
                <tr>
                    <th></th> 
                    <th></th> 
                    <th></th> 
                    <th></th> 
                    <th></th>
                    <th></th> 
                    <th></th> 
                    <th></th> 
                    <th></th> 
                    <th></th>
                    <th></th> 
                    <th></th> 
                    <th></th> 
                    <th></th> 
                    <th></th>
                </tr>
            </tfoot>

            <tbody>
                <tr>
                    <td><?php echo $_GET['date']; ?></td>
                    <td><?php echo $info->route; ?></td>
                    <td><?php echo $info->trip; ?></td>
                    <td><?php echo $info->no_fleet; ?></td>
                    <td><?php echo $info->no_chasis; ?></td>
                    <td><?php echo $info->driver_name_1; ?></td>
                    <td><?php echo $info->driver_ci_1; ?></td>
                    <td><?php echo $info->driver_name_2; ?></td>
                    <td><?php echo $info->driver_ci_2; ?></td>
                    <td><?php echo $info->assistant_name_1; ?></td>
                    <td><?php echo $info->assistant_ci_1; ?></td>
                    <td><?php echo $info->assistant_name_2; ?></td>
                    <td><?php echo $info->assistant_ci_2; ?></td>
                    <td><?php echo $info->assistant_name_3; ?></td>
                    <td><?php echo $info->assistant_ci_3; ?></td>
                </tr>
            </tbody>
        </table>

        <table class="table table-bordered ">
            <thead>
                <tr>
                    <th><?php echo display('sl_no') ?></th>
                    <th><?php echo display('ticket_no') ?></th>
                    <th><?php echo display('seat_type') ?></th>
                    <th><?php echo display('name') ?></th>
                    <th><?php echo display('ci') ?></th>
                    <th><?php echo display('phone') ?></th>
                    <th><?php echo display('birth') ?></th>
                </tr>
            </thead>

            <tfoot>
                <tr>
                    <th></th> 
                    <th></th> 
                    <th></th> 
                    <th></th> 
                    <th></th> 
                    <th></th> 
                    <th></th> 
                </tr>
            </tfoot>

            <tbody>
                <?php if (!empty($passengers)) ?>
                <?php $sl = 1; ?>
                <?php foreach ($passengers as $passenger) { ?>
                <tr class="<?php echo (!empty($passenger->tkt_refund_id) ? "bg-danger" : null ) ?>">
                    <td><?php echo $sl++; ?></td>
                    <td><?php echo $passenger->booking_id . '-' . $passenger->id ?></td>
                    <td><?php echo $passenger->seat_type; ?></td>
                    <td><?php echo $passenger->name; ?></td>
                    <td><?php echo $passenger->ci; ?></td>
                    <td><?php echo $passenger->phone; ?></td>
                    <td><?php echo $passenger->birth; ?></td>
                </tr>
                <?php } ?> 
            </tbody>
        </table>
    </div>
</div>

<script>
    window.print();
</script>
</body>
</html>