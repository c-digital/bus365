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
            <table class="table table-bordered">
                <tr>
                    <th>Listado de pasajeros</th>
                    <th>Fecha: <?php echo $_GET['date']; ?></th>
                    <th>Ruta: <?php echo $ruta; ?></th>
                </tr>
            </table>

            <table class="table table-bordered">
                <tr>
                    <th rowspan="4"><?php echo '<img width="200px" src="/uploads/' . $company_logo . '">'; ?></th>
                    <th>Empresa: <?php echo $company_name; ?></th>
                    <th>Número interno: <?php echo $numero_interno; ?></th>
                    <th>Conductor 1: <?php echo $driver_1; ?></th>
                </tr>

                <tr>
                    <th>Dirección: <?php echo $company_address; ?></th>
                    <th>Modelo: <?php echo $modelo; ?></th>
                    <th>Conductor 2: <?php echo $driver_2; ?></th>
                </tr>

                <tr>
                    <th rowspan="2">NIT: <?php echo $company_nit; ?></th>
                    <th>Placa: <?php echo $placa; ?></th>
                    <th>Ayudante 1: <?php echo $ayudante_1; ?></th>
                </tr>

                <tr>
                    <th>Chasis: <?php echo $chasis; ?></th>
                    <th>Ayudante 2: <?php echo $ayudante_2; ?></th>
                </tr>
            </table>

            <table class="table table-bordered">
                <tr>
                    <th>Potrona</th>
                    <th>Nombre</th>
                    <th>Carnet</th>
                    <th>Telefono</th>
                    <th>Embarque</th>
                    <th>Desembarque</th>
                </tr>

                <?php foreach ($passengers as $passenger): ?>
                    <tr>
                        <td><?php echo str_replace(',', '', $passenger->potrona); ?></td>
                        <td><?php echo $passenger->nombre; ?></td>
                        <td><?php echo $passenger->carnet; ?></td>
                        <td><?php echo $passenger->telefono; ?></td>
                        <td><?php echo $passenger->embarque; ?></td>
                        <td><?php echo $passenger->desembarque; ?></td>
                    </tr>
                <?php endforeach; ?>
            </table>
        </div>
    </div>
</div>
</body>
</html>