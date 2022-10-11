<div class="row">
    <div class="col-sm-12">
        <div  class="panel panel-default thumbnail">
            <div class="panel-body">
                <form action="" style="margin-bottom: 3%; margin-top: 3%">
                    <div class="row">
                        <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                            <label for="inicio">Fecha inicio</label>
                            <input type="date" class="form-control" name="inicio" value="<?php echo (isset($_GET['inicio'])) ? $_GET['inicio'] : '' ?>">
                        </div>

                        <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                            <label for="fin">Fecha fin</label>
                            <input type="date" class="form-control" name="fin" value="<?php echo (isset($_GET['inicio'])) ? $_GET['fin'] : '' ?>">
                        </div>

                        <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                            <label for="cajero">Cajero</label>
                            <select name="cajero" class="form-control">
                                <option value="Todos">Todos</option>
                                <?php foreach ($cajeros as $cajero): ?>
                                    <option <?php echo (isset($_GET['cajero']) && $_GET['cajero'] == $cajero->nombre) ? 'selected' : '' ?> value="<?php echo $cajero->nombre; ?>"><?php echo $cajero->nombre; ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>

                        <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                            <label for="">&nbsp;</label>
                            <button type="submit" class="btn btn-primary btn-block"><i class="fa fa-eye"></i> Buscar</button>
                        </div>
                    </div>
                </form>

                <table class="datatable table table-striped table-bordered" cellspacing="0" width="100%">
                    <thead>
                        <tr>
                            <th class="text-center" colspan="7">Venta de tickets</th>
                        </tr>

                        <tr> 
                            <th class="text-center">ID</th>
                            <th class="text-center">Fecha</th>
                            <th class="text-center">Monto</th>
                            <th class="text-center">Método de pago</th>
                            <th class="text-center">Cajero</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($ticket as $item): ?>
                            <tr> 
                                <td class="text-center"><?php echo $item->id; ?></td>
                                <td class="text-center"><?php echo $item->fecha; ?></td>
                                <td class="text-center"><?php echo $item->monto; ?></td>
                                <td class="text-center"><?php echo $item->metodo_pago; ?></td>
                                <td class="text-center"><?php echo $item->cajero; ?></td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>

                <hr>

                <table class="datatable table table-striped table-bordered" cellspacing="0" width="100%">
                    <thead>
                        <tr>
                            <th class="text-center" colspan="7">Envío de mercadería</th>
                        </tr>

                        <tr> 
                            <th class="text-center">ID</th>
                            <th class="text-center">Fecha</th>
                            <th class="text-center">Monto</th>
                            <th class="text-center">Método de pago</th>
                            <th class="text-center">Cajero</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($mercaderia as $item): ?>
                            <tr> 
                                <td class="text-center"><?php echo $item->id; ?></td>
                                <td class="text-center"><?php echo $item->fecha; ?></td>
                                <td class="text-center"><?php echo $item->monto; ?></td>
                                <td class="text-center"><?php echo $item->metodo_pago; ?></td>
                                <td class="text-center"><?php echo $item->cajero; ?></td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>

                <hr>

                <table class="datatable table table-striped table-bordered" cellspacing="0" width="100%">
                    <thead>
                        <tr>
                            <th class="text-center" colspan="7">Salidas</th>
                        </tr>

                        <tr> 
                            <th class="text-center">ID</th>
                            <th class="text-center">Fecha</th>
                            <th class="text-center">Monto</th>
                            <th class="text-center">Método de pago</th>
                            <th class="text-center">Cajero</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($salida as $item): ?>
                            <tr> 
                                <td class="text-center"><?php echo $item->id; ?></td>
                                <td class="text-center"><?php echo $item->fecha; ?></td>
                                <td class="text-center"><?php echo $item->monto; ?></td>
                                <td class="text-center"><?php echo $item->metodo_pago; ?></td>
                                <td class="text-center"><?php echo $item->cajero; ?></td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
