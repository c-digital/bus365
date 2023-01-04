<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4> 
                        <a href="<?php echo base_url('dashboard/sales/create') ?>" class="btn btn-sm btn-info" title="Add"><i class="fa fa-plus"></i> <?php echo display('add') ?></a>  
                    </h4>
                </div>
            </div>
            <div class="panel-body">
 
                <div class="">
                    <table class="datatable2 table table-bordered ">
                        <thead>
                            <tr>
                                <th><?php echo display('sl_no') ?></th>
                                <th><?php echo display('travel_id') ?></th>
                                <th><?php echo display('booking_id') ?></th>
                                <th><?php echo display('seat_number') ?></th>
                                <th><?php echo display('name') ?></th>
                                <th><?php echo display('ci') ?></th>
                                <th><?php echo display('phone') ?></th>
                                <th><?php echo display('birth') ?></th>  
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (!empty($sales)) ?>
                            <?php $sl = 1; ?>
                            <?php foreach ($sales as $booking) { 

                       
                                ?>

                            <tr class="<?php echo (!empty($booking->tkt_refund_id) ? "bg-danger" : null ) ?>">
                                <td><?php echo $sl++; ?></td>
                                <td><?php echo $booking->assign_id; ?></td>
                                <td><?php echo $booking->booking_id; ?></td>
                                <td><?php echo $booking->seat_type; ?></td>
                                <td><?php echo $booking->name; ?></td>
                                <td><?php echo $booking->ci; ?></td>
                                <td><?php echo $booking->phone; ?></td>
                                <td><?php echo $booking->birth; ?></td>
                                <td>
                                    <a href="<?php echo '/dashboard/sales/ticket/' . $booking->booking_id; ?>" class="btn btn-default btn-sm">
                                        <i class="fa fa-print"></i> Ver ticket
                                    </a>
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

 <div id="add1" class="modal fade" role="dialog">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header" style="background-color:green; color: white">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <center><strong>Payment info</strong></center>
            </div>
            <div class="modal-body">

                <div class="row">
                    <div class="col-sm-12 col-md-12">
                        <div class="panel">

                            <div class="panel-body">

                                <?= form_open('ticket/Booking/booking_paid') ?>
                                    <div class="form-group row">
                                        <label for="fitness_id" class="col-sm-3 col-form-label">
                                          </label>
                                        <div class="col-sm-9">
                                           <h1>Do You Want to Pay Now ??</h1>
                                           <input type="hidden" name="booking_id" value="" id="bookid">
                                        </div>
                                    </div>
                                    <div class="form-group text-center">
                                        <button type="button" class="btn btn-danger w-md m-b-5" data-dismiss="modal">No</button>
                                        <button type="submit" class="btn btn-success w-md m-b-5">
                                            Yes
                                        </button>
                                    </div>
                                    <?php echo form_close() ?>

                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>
        <div class="modal-footer">

        </div>

    </div>


</div>
<script type="text/javascript">
function modal_load(id_no){
    $('#bookid').val(id_no);
    $('#add1').modal('show');
}

</script>