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
                <?php endif; ?>
            </div> 
        </div>
    </div>
</div>