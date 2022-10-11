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
                                    <div class="col-sm-4">
                                        <label for="trip"><?php echo display('trip1') ?></label>

                                        <select name="trip" id="trip" class="form-control">
                                            <option value=""></option>
                                            <?php foreach ($routes as $route): ?>
                                                <option value="<?php echo $route->id ?>"><?php echo $route->name ?></option>
                                            <?php endforeach; ?>
                                        </select>
                                    </div>

                                    <div class="col-sm-4">
                                        <label for="date"><?php echo display('date') ?></label>
                                        <input name="date" id="date" type="text" placeholder="<?php echo display('date') ?>" class="form-control datepicker">
                                    </div>

                                    <div class="col-sm-4">
                                        <label for="date"><?php echo display('search1') ?></label>
                                        <button type="submit"  class="form-control btn btn-success"><?php echo display('search') ?></button>
                                    </div>
                                </div>
                            </div>
                        </div>                         
                    <?php echo form_close() ?>
                </div> 

                <div class="col-sm-12">
                     <div class="table-responsive">
                    <table class="bookingDataTable table table-bordered ">
                        <thead>
                            <tr>
                                <th><?php echo display('sl_no') ?></th>
                                <th><?php echo display('route') ?></th>
                                <th><?php echo display('trip1') ?></th>
                                <th><?php echo display('date') ?></th>
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
                                <th><?php echo display('passengers_count') ?></th>
                                <th></th>
                            </tr>
                        </thead>

                        <tfoot>
                            <tr>
                                <th colspan="6"></th> 
                                <th></th> 
                                <th></th> 
                                <th></th> 
                                <th></th> 
                            </tr>
                        </tfoot>

                        <tbody>
                            <?php if (!empty($trips)) ?>
                            <?php $sl = 1; ?>
                            <?php foreach ($trips as $trip) { ?>
                            <tr class="<?php echo (!empty($trip->tkt_refund_id) ? "bg-danger" : null ) ?>">
                                <td><?php echo $sl++; ?></td>
                                <td><?php echo $trip->ruta; ?></td>
                                <td><?php echo $trip->viaje; ?></td>
                                <td><?php echo $trip->fecha; ?></td>
                                <td><?php echo $trip->numero_bus; ?></td>
                                <td><?php echo $trip->numero_chasis; ?></td>
                                <td><?php echo $trip->nombre_conductor_1; ?></td>
                                <td><?php echo $trip->ci_conductor_1; ?></td>
                                <td><?php echo $trip->nombre_conductor_2; ?></td>
                                <td><?php echo $trip->ci_conductor_2; ?></td>
                                <td><?php echo $trip->nombre_asistente_1; ?></td>
                                <td><?php echo $trip->ci_asistente_1; ?></td>
                                <td><?php echo $trip->nombre_asistente_2; ?></td>
                                <td><?php echo $trip->ci_asistente_2; ?></td>
                                <td><?php echo $trip->nombre_asistente_3; ?></td>
                                <td><?php echo $trip->ci_asistente_3; ?></td>
                                <td><?php echo $trip->cantidad_pasajeros; ?></td>
                                <td>
                                    <a href="/reports/passengers/list/<?php echo $trip->id; ?>" class="btn btn-default btn-sm">Ver pasajeros</a>
                                </td>
                            </tr>
                            <?php } ?> 
                        </tbody>
                    </table>
                </div>
                </div>
            </div> 
        </div>
    </div>
</div>


<script type="text/javascript">
$(document).ready(function() {

    $('.bookingDataTable').DataTable( {
        searching: true, 
        responsive: true, 
        dom: "<'row'<'col-sm-8'B><'col-sm-4'f>>tp", 
        buttons: [  
            {extend: 'copy', className: 'btn-sm', footer: true}, 
            {extend: 'csv', title: 'ExampleFile', className: 'btn-sm', footer: true}, 
            {extend: 'excel', title: 'ExampleFile', className: 'btn-sm', footer: true, title: 'exportTitle'}, 
            {extend: 'pdf', title: 'ExampleFile', className: 'btn-sm', footer: true}, 
            {extend: 'print', className: 'btn-sm', footer: true} 
        ]
    });
});
</script>