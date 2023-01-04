<div class="row">
    <div class="col-sm-12">
        <div  class="panel panel-default thumbnail">
            <div class="panel-body">
                <form action="" style="margin-bottom: 3%; margin-top: 3%">
                    <div class="row">
                        <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                            <label for="inicio">Fecha inicio</label>
                            <input type="date" required class="form-control" name="inicio" value="<?php echo (isset($_GET['inicio'])) ? $_GET['inicio'] : '' ?>">
                        </div>

                        <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                            <label for="fin">Fecha fin</label>
                            <input type="date" required class="form-control" name="fin" value="<?php echo (isset($_GET['inicio'])) ? $_GET['fin'] : '' ?>">
                        </div>

                        <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                            <label for="viaje">Viaje</label>
                            <select name="viaje" class="form-control">
                                <option value="Todas">Todas</option>
                                <?php foreach ($viajes as $viaje): ?>
                                    <option <?php echo (isset($_GET['viaje']) && $_GET['viaje'] == $viaje->id) ? 'selected' : '' ?> value="<?php echo $viaje->id; ?>"><?php echo $viaje->id; ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>

                        <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                            <label for="cajero">Cajero</label>
                            <select name="cajero" class="form-control">
                                <option value="Todas">Todas</option>
                                <?php foreach ($cajeros as $cajero): ?>
                                    <option <?php echo (isset($_GET['cajero']) && $_GET['cajero'] == $cajero->cajero) ? 'selected' : '' ?> value="<?php echo $cajero->cajero; ?>"><?php echo $cajero->cajero; ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                    </div>

                    <div class="row" style="margin-top: 20px">
                        <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                            <label for="empresa">Empresa</label>
                            <select name="empresa" class="form-control">
                                <option value="Todas">Todas</option>
                                <?php foreach ($empresas as $empresa): ?>
                                    <option <?php echo (isset($_GET['empresa']) && $_GET['empresa'] == $empresa->id) ? 'selected' : '' ?> value="<?php echo $empresa->id; ?>"><?php echo $empresa->name; ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>

                        <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                            <label for="tipo">Tipo</label>
                            <select name="tipo" class="form-control">
                                <option value="Todos">Todos</option>
                                <option <?php echo (isset($_GET['tipo']) && $_GET['tipo'] == 'Ingreso') ? 'selected' : '' ?> value="Ingreso">Ingreso</option>
                                <option <?php echo (isset($_GET['tipo']) && $_GET['tipo'] == 'Egreso') ? 'selected' : '' ?> value="Egreso">Egreso</option>
                            </select>
                        </div>

                        <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                            <label for="metodo_pago">Método de pago</label>
                            <select name="metodo_pago" class="form-control">
                                <option value="Todos">Todos</option>
                                <option <?php echo (isset($_GET['metodo_pago']) && $_GET['metodo_pago'] == 'Efectivo') ? 'selected' : '' ?> value="Efectivo">Efectivo</option>
                                <option <?php echo (isset($_GET['metodo_pago']) && $_GET['metodo_pago'] == 'Transferencia') ? 'selected' : '' ?> value="Transferencia">Transferencia</option>
                                <option <?php echo (isset($_GET['metodo_pago']) && $_GET['metodo_pago'] == 'Cheque') ? 'selected' : '' ?> value="Cheque">Cheque</option>
                                <option <?php echo (isset($_GET['metodo_pago']) && $_GET['metodo_pago'] == 'Tarjeta') ? 'selected' : '' ?> value="Tarjeta">Tarjeta</option>
                            </select>
                        </div>

                        <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                            <label for="transaccion">Transacción</label>
                            <select name="transaccion" class="form-control">
                                <option value="Todos">Todos</option>
                                <option <?php echo (isset($_GET['transaccion']) && $_GET['transaccion'] == 'Ticket online') ? 'selected' : '' ?> value="Ticket online">Ticket online</option>
                                <option <?php echo (isset($_GET['transaccion']) && $_GET['transaccion'] == 'Ticket') ? 'selected' : '' ?> value="Ticket">Ticket</option>
                                <option <?php echo (isset($_GET['transaccion']) && $_GET['transaccion'] == 'Encomiendas') ? 'selected' : '' ?> value="Encomiendas">Encomiendas</option>
                                <option <?php echo (isset($_GET['transaccion']) && $_GET['transaccion'] == 'Exceso de equipaje') ? 'selected' : '' ?> value="Exceso de equipaje">Exceso de equipaje</option>
                            </select>
                        </div>

                        <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                            <label for="">&nbsp;</label>
                            <button type="submit" class="btn btn-primary btn-block"><i class="fa fa-eye"></i> Buscar</button>
                        </div>
                    </div>

                    <div class="row" style="margin-top: 20px">
                        <div class="col-sm-12" style="margin-bottom:30px">
                            <a target="_blank" href="/reports/cash/pdf?<?php echo $_SERVER['QUERY_STRING']; ?>" class="btn btn-sm btn-danger">
                                <i class="fa fa-file-pdf-o"></i> PDF
                            </a>

                            <a target="_blank" href="/reports/cash/excel?<?php echo $_SERVER['QUERY_STRING']; ?>" class="btn btn-sm btn-success">
                                <i class="fa fa-file-excel-o"></i> Excel
                            </a>

                            <a target="_blank" href="/reports/cash/export?print=1&<?php echo $_SERVER['QUERY_STRING']; ?>" class="btn btn-sm btn-default">
                                <i class="fa fa-print"></i> Imprimir
                            </a>
                        </div>
                    </div>
                </form>

                <?php if (isset($_GET['inicio']) && isset($_GET['fin'])): ?>
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

                            if (isset($_GET['cajero']) && $_GET['cajero'] != 'Todos') {
                                $where[] = "cajero = '{$_GET['cajero']}'";
                            }

                            if (isset($_GET['viaje']) && $_GET['viaje'] != 'Todos') {
                                $where[] = "trip_assign_id = '{$_GET['viaje']}'";
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
                                    <th>Viaje</th>
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
                                        <td><?php echo $item->trip_assign_id; ?></td>
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
                <?php endif; ?>
            </div>
        </div>
    </div>
</div>
