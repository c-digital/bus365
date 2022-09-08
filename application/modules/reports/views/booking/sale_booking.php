<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4>
                        <a href="<?php echo base_url('reports/sales_report/report') ?>" class="btn btn-sm btn-success" title="List"><i class="fa fa-list"></i> <?php echo display('ticket_sales') ?></a> 
                         <a href="#" class="btn btn-sm btn-danger" title="Print" onclick="printContent('PrintMe')"><i class="fa fa-print"></i></a>   
                    </h4>
                </div>
            </div>
            <div class="panel-body">

                <div class="col-sm-12" style="margin-bottom:20px">
                    <?php echo form_open('reports/sales_report/report', 'class="form-horizontal" method="get"')?>

                        <!-- Filter -->
                        <div class="form-group">
                            <?php 
                            $filterList = array(
                                'all'    => display('all'),
                                'trip'   => display('trip_name'),
                                'route'  => display('route_name'),
                            );
                            ?>
                            <label for="filter" class="col-sm-2 control-label"><?php echo display('filter') ?></label>
                            <div class="col-sm-10">
                                <?php echo form_dropdown('filter', $filterList,  $search->filter, "class='form-control' id='filter'") ?> 
                            </div>
                        </div>

                        <!-- Trip ID -->
                        <div class="form-group hide" id="trip">
                            <label for="trip_id" class="col-sm-2 control-label"><?php echo display('trip_name') ?></label>
                            <div class="col-sm-10">
                                 <?php echo form_dropdown('trip', $tripList,  $search->trip, "class='form-control' id='trip_id' style='width:100%'") ?>
                            </div>
                        </div>

                        <!-- Route Name -->
                        <div class="form-group hide" id="route">
                            <label for="route_id" class="col-sm-2 control-label"><?php echo display('route_name') ?></label>
                            <div class="col-sm-10">
                                <?php echo form_dropdown('route', $routeList,  $search->route, "class='form-control' id='route_id' style='width:100%'") ?>
                            </div>
                        </div>

                      

                        <!-- Date 2 Date -->
                        <div class="form-group">
                            <label for="driver_id" class="col-sm-2 control-label"><?php echo display('date') ?></label>
                            <div class="col-sm-10">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <input name="start_date" id="start_date" type="text" placeholder="<?php echo display('start_date') ?>" class="form-control datepicker" value="<?php echo $search->start_date ?>">
                                    </div>
                                    
                                    <div class="col-sm-4">
                                        <input name="end_date" id="end_date" type="text" placeholder="<?php echo display('end_date') ?>" class="form-control datepicker" value="<?php echo $search->end_date ?>">
                                    </div>

                                    <div class="col-sm-4">
                                        <button type="submit"  class="form-control btn btn-success"><?php echo display('search') ?></button>
                                    </div>
                                </div>
                            </div>
                        </div> 
                    <?php echo form_close() ?>
                </div> 
                <div class="col-sm-12" >
                    
                     <div class="table-responsive">
                    <table class="bookingDataTable table table-bordered " id="PrintMe">
                        <caption class="text-center">
                         <h3><?php echo $company->title;?></h3>
                         <h4><?php echo $company->address;?></h4>
                         <h4><?php echo display('ticket_sales_report_for')?> : <span class="hide" id="route_span"> Route - <?php 
                         echo $route_name; ?></span><span class="hide" id="trip_span"> Trip - <?php echo $trip_name; ?></span></h4>
                    </caption>
                        <thead>
                            <tr>
                                <th><?php echo display('sl_no') ?></th>
                                <th><?php echo display('booking_date') ?></th>
                                <th><?php echo display('booking_id') ?></th>
                                <th><?php echo display('route_name') ?></th>
                                <th><?php echo display('total_seat') ?></th>
                                <th><?php echo display('price') ?></th>
                                <th><?php echo display('discount') ?></th>
                                <th><?php echo display('amount') ?></th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th colspan="4"></th> 
                                <th></th> 
                                <th></th> 
                                <th></th> 
                                <th></th> 
                            </tr>
                        </tfoot>
                        <tbody>
                            <?php if (!empty($bookings)) ?>
                            <?php $sl = 1; ?>
                            <?php foreach ($bookings as $booking) { ?>
                            <tr class="<?php echo (!empty($booking->tkt_refund_id) ? "bg-danger" : null ) ?>">
                                <td><?php echo $sl++; ?></td>
                                <td><?php echo $booking->booking_date; ?></td>
                                <td><a target="_blank" href="<?php echo base_url("ticket/booking/view/$booking->id_no") ?>"><?php echo $booking->id_no; ?></a></td>
                                <td><?php echo $booking->route_name; ?></td>
                                
                                <td class="text-right"><?php echo $booking->total_seat; ?></td>
                                <td class="text-right"><?php echo $booking->price; ?></td>
                                <td class="text-right"><?php echo $booking->discount; ?></td>
                                <td class="text-right"><?php echo ($booking->price-$booking->discount); ?></td>
                            </tr>
                            <?php } ?> 
                        </tbody>
                    </table>
                    <?= $links ?>
                </div>
                </div>

            </div> 
        </div>
    </div>
</div>


<script type="text/javascript">
$(document).ready(function() {

    var q = '<?php echo $this->input->get("filter") ?>';
    var route  = $("#route");
    var trip   = $("#trip");
    var trip_span = $("#trip_span");
    var route_span = $("#route_span");
    if (q != null) {
        if (q == "route") {
            route.removeClass('hide');
            route_span.removeClass('hide');
        } else if (q == "trip") {
            trip.removeClass('hide');
            trip_span.removeClass('hide');
        } 
    }  

    $('#filter').on('change', function(){
        var filter = $(this);
        route.addClass('hide');
        trip.addClass('hide');
        trip_span.addClass('hide');
        route_span.addClass('hide');
        if (filter.length > 0) {
            if (filter.val() == "route") {
                route.removeClass('hide');
                route_span.removeClass('hide');
            } else if (filter.val() == "trip") {
                trip.removeClass('hide');
                trip_span.removeClass('hide');
            } 
            
        }   
    });


    $('.bookingDataTable').DataTable( {
        searching: false, 
        responsive: false, 
        paging: false,
        pageLength: 10,
        dom: "<'row'<'col-sm-8'B><'col-sm-4'f>>tp", 
        buttons: [  
            
        ],
        "footerCallback": function ( row, data, start, end, display ) {
            var api = this.api(), data;
            var intVal = function (i) {
                return typeof i === 'string' ? i.replace(/[\$,]/g, '')*1:typeof i === 'number' ? i : 0;
            };  
            //#----------- Total over this page------------------#
            seats = api.column(4, { page: 'current'} ).data().reduce( function (a, b) {
                    return intVal(a) + intVal(b);
                },0);  
            price = api.column(5, { page: 'current'} ).data().reduce( function (a, b) {
                    return intVal(a) + intVal(b);
            },0);  
            discount = api.column(6, { page: 'current'} ).data().reduce( function (a, b) {
                    return intVal(a) + intVal(b);
                },0);  
            grandTotal = api.column(7, { page: 'current'} ).data().reduce( function (a, b) {
                    return intVal(a) + intVal(b);
                },0); 
            //#-----------ends of Total over this page------------------#

            // Update footer
            $( api.column(4).footer()).html(seats);
            $( api.column(5).footer()).html(price.toFixed(2));
            $( api.column(6).footer()).html(discount.toFixed(2));
            $( api.column(7).footer()).html(grandTotal.toFixed(2));
        }
    });
});
</script>