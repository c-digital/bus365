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
                            <label for="empresa">Empresa</label>
                            <select name="empresa" class="form-control">
                                <option value="Todas">Todas</option>
                                <?php foreach ($empresas as $empresa): ?>
                                    <option <?php echo (isset($_GET['empresa']) && $_GET['empresa'] == $empresa->nombre) ? 'selected' : '' ?> value="<?php echo $empresa->id; ?>"><?php echo $empresa->nombre; ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>

                        <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                            <label for="metodo_pago">Método de pago</label>
                            <select name="metodo_pago" class="form-control">
                                <option value="Todos">Todos</option>
                                <option <?php echo (isset($_GET['metodo_pago']) && $_GET['metodo_pago'] == 'Cash') ? 'selected' : '' ?> value="Cash">Cash</option>
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
                            <th class="text-center">Número de ticket</th>
                            <th class="text-center">Empresa</th>
                            <th class="text-center">Pasajero</th>
                            <th class="text-center">Valor pagado</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $i = 1; foreach ($tickets as $item): ?>
                            <tr> 
                                <td class="text-center"><?php echo $i++; ?></td>
                                <td class="text-center"><?php echo $item->numero_ticket; ?></td>
                                <td class="text-center"><?php echo $item->empresa; ?></td>
                                <td class="text-center"><?php echo $item->pasajero; ?></td>
                                <td class="text-center"><?php echo $item->valor_pagado; ?></td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
