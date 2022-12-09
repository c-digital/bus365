<style>
    table, th, tr, td {
        border: 1px solid black;
        border-collapse: collapse;
    }

    table {
        width: 100%;
    }
</style>

<?php foreach ($empresas as $empresa): ?>

    <?php
        $where = [];

        if (isset($_GET['tipo']) && $_GET['tipo'] != 'Todos') {
            $where[] = "tipo = '{$_GET['tipo']}'";
        }

        if (isset($_GET['metodo_pago']) && $_GET['metodo_pago'] != 'Todos') {
            $where[] = "metodo_pago = '{$_GET['metodo_pago']}'";
        }

        if (isset($_GET['tipo']) && $_GET['tipo'] != 'Todos') {
            $where[] = "tipo = '{$_GET['tipo']}'";
        }

        $where[] = '1';

        $where = implode(' AND ', $where);

        $sql = "
            SELECT
                *
            FROM
                caja
            WHERE
                id_company = '{$empresa->id}' AND
                (DATE(fecha) BETWEEN '{$_GET['inicio']}' AND '{$_GET['fin']}') AND
                $where
        ";

        $items = $this->db->query($sql)->result();

        if (count($items) == 0) {
            continue;
        }

        $entradas = array_filter($items, function ($item) {
            return $item->tipo_movimiento == 'Entrada';
        });

        $entradas = array_sum(array_column($entradas, 'monto'));

        $salidas = array_filter($items, function ($item) {
            return $item->tipo_movimiento == 'Salida';
        });

        $salidas = array_sum(array_column($salidas, 'monto'));

        $saldo = $entradas - $salidas;

        $efectivo = array_filter($items, function ($item) {
            return $item->metodo_pago == 'Efectivo';
        });

        $efectivo = array_sum(array_column($items, 'monto'));

        $tarjeta = array_filter($items, function ($item) {
            return $item->metodo_pago == 'Tarjeta';
        });

        $tarjeta = array_sum(array_column($tarjeta, 'monto'));

        $transferencia = array_filter($items, function ($item) {
            return $item->metodo_pago == 'Transferencia';
        });

        $transferencia = array_sum(array_column($transferencia, 'monto'));
    ?>

    <div class="table-responsive">
        <table class="table table-striped">
            <tr>
                <th style="text-align: center">Ventas</th>
            </tr>

            <tr>
                <th style="text-align: center">
                    <img width="200px" src="<?php echo '/uploads/' . $empresa->logo ?>" alt="">
                </th>
            </tr>
        </table>

        <table class="table table-striped">
            <tr>
                <th>Periodo</th>
                <td colspan="4"><?php echo $_GET['inicio'] . ' al ' . $_GET['fin']; ?></td>
            </tr>

            <tr>
                <th>Empresa</th>
                <td><?php echo $empresa->name ?></td>
                <th class="text-success">Ingreso</th>
                <th class="text-danger">Egreso</th>
                <th class="text-primary">Saldo</th>
            </tr>

            <tr>
                <th>Dirección</th>
                <td><?php echo $empresa->address ?></td>
                <th class="text-success"><?php echo number_format($entradas, 2); ?></th>
                <th class="text-danger"><?php echo number_format($salidas, 2); ?></th>
                <th class="text-primary"><?php echo number_format($saldo, 2); ?></th>
            </tr>

            <tr>
                <th>NIT</th>
                <td colspan="4"><?php echo $empresa->nit ?></td>
            </tr>
        </table>

        <table class="table table-striped">
            <tr>
                <th>ID</th>
                <th>Fecha</th>
                <th>Tipo</th>
                <th>Cajero</th>
                <th>Transacción</th>
                <th>Monto</th>
                <th>Método</th>
            </tr>

            <?php foreach ($items as $item): ?>
                <tr>
                    <td><?php echo $item->id; ?></td>
                    <td><?php echo $item->fecha; ?></td>
                    <td><?php echo $item->tipo_movimiento; ?></td>
                    <td><?php echo $item->cajero; ?></td>
                    <td><?php echo $item->concepto; ?></td>
                    <td><?php echo number_format($item->monto, 2); ?></td>
                    <td><?php echo $item->metodo_pago; ?></td>
                </tr>
            <?php endforeach; ?>

            <tr>
                <td colspan="5"></td>
                <td colspan="2">
                    <table class="table">
                        <tr class="bg-primary">
                            <th>Total efectivo</th>
                            <th><?php echo number_format($efectivo, 2); ?></th>
                        </tr>

                        <tr class="bg-primary">
                            <th>Total tarjeta</th>
                            <th><?php echo number_format($tarjeta, 2); ?></th>
                        </tr>

                        <tr class="bg-primary">
                            <th>Total transferencia</th>
                            <th><?php echo number_format($transferencia, 2); ?></th>
                        </tr>

                        <tr class="bg-primary">
                            <th>Total de egreso</th>
                            <th><?php echo number_format($salidas, 2); ?></th>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
<?php endforeach; ?>

<?php if (isset($_GET['print'])): ?>
    <script>
        window.print();
    </script>
<?php endif; ?>