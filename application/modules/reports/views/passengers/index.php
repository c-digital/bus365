<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4>
                        <a href="<?php echo base_url('reports/assign/report') ?>" class="btn btn-sm btn-success" title="List"><i class="fa fa-list"></i> <?php echo display('assign') ?></a>  
                    </h4>
                </div>
            </div>
            <div class="panel-body">

                <div class="col-sm-12" style="margin-bottom:20px">
                    <?php echo form_open('', 'class="form-horizontal" method="get"')?>
                        <div class="form-group">
                            <div class="col-sm-12">
                                <div class="row">
                                    <div class="col-sm-7">
                                        <label for="trip"><?php echo display('trip1') ?></label>

                                        <select name="trip" id="trip" class="form-control" required>
                                            <option value=""></option>
                                            <?php foreach ($trips as $trip): ?>
                                                <option <?php echo isset($_GET['trip']) && $_GET['trip'] == $trip->trip_id ? 'selected' : ''; ?> value="<?php echo $trip->trip_id ?>"><?php echo $trip->trip_title ?></option>
                                            <?php endforeach; ?>
                                        </select>
                                    </div>

                                    <div class="col-sm-2">
                                        <label for="date"><?php echo display('date') ?></label>
                                        <input name="date" required id="date" type="text" placeholder="<?php echo display('date') ?>" value="<?php echo isset($_GET['date']) && $_GET['date'] != '' ? $_GET['date'] : ''; ?>" class="form-control datepicker">
                                    </div>

                                    <div class="col-sm-3">
                                        <label for="date"><?php echo display('search1') ?></label>
                                        <button type="submit"  class="form-control btn btn-success"><?php echo display('search') ?></button>
                                    </div>
                                </div>
                            </div>
                        </div>                         
                    <?php echo form_close() ?>
                </div>

                <?php if (isset($_GET['trip']) && $_GET['trip'] != ''): ?>
                    <div class="col-sm-12" style="margin-bottom:30px">
                        <a target="_blank" href="/reports/passengers/pdf?<?php echo $_SERVER['QUERY_STRING']; ?>" class="btn btn-sm btn-danger">
                            <i class="fa fa-file-pdf-o"></i> PDF
                        </a>

                        <a target="_blank" href="/reports/passengers/excel?<?php echo $_SERVER['QUERY_STRING']; ?>" class="btn btn-sm btn-success">
                            <i class="fa fa-file-excel-o"></i> Excel
                        </a>

                        <a target="_blank" href="/reports/passengers/export?<?php echo $_SERVER['QUERY_STRING']; ?>" class="btn btn-sm btn-default">
                            <i class="fa fa-print"></i> Imprimir
                        </a>
                    </div>

                    <div class="col-sm-12">
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <tr>
                                    <th>Listado de pasajeros</th>
                                    <th>Fecha: <?php echo $_GET['date']; ?></th>
                                    <th>Ruta: <?php echo $ruta; ?></th>
                                </tr>
                            </table>

                            <table class="table table-striped">
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

                            <table class="table table-striped">
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
                <?php endif; ?>
            </div> 
        </div>
    </div>
</div>