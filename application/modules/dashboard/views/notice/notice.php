<div class="row">

	<div class="col-sm-6"><?php

	?></div>
<div class="col-sm-6"></div>
</div>
<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4>
                        
                        <a href="#" class="btn btn-sm btn-danger" onclick="printContent('PrintMe')" title="Print"> <i class="fa fa-print"></i></a>  
                    </h4>
                </div>
            </div>
            <div class="panel-body" id="PrintMe"> 
                <dl class="dl-horizontal">
                    <dt><?php echo display('passenger_name'); ?></dt>
                    <dd>&nbsp;<?php

         $passengerinfo = $this->db->select('*')->from('tkt_passenger')->where('id_no',$b->passenger_id)->get()->row();
                     echo $passengerinfo->firstname.' '.$passengerinfo->lastname; ?></dd>
                    <dt><?php echo display('no_of_ticket'); ?></dt>
                    <dd>&nbsp;<?php echo $b->no_tkts ?></dd>
                    <dt><?php echo display('amount') ?></dt>
                    <dd>&nbsp;<?php echo $b->amount  ?></dd>
                   <dt><?php echo display('route') ?></dt>
                    <dd>&nbsp;<?php
$route = $this->db->select('*')->from('trip_route')->where('id',$b->route_id)->get()->row();

$booking = $this->db->select('*')->from('tkt_booking')->where('id_no',$b->b_idno)->get()->row();
                     echo $route->name  ?></dd>
                     
                      <dt><?php echo display('payment_status') ?></dt>
                    <dd>&nbsp;<?php
                    if($booking->payment_status == 1 OR $booking->payment_status == 2 && $this->session->userdata('isAdmin')==1){
                    echo '<a type="button" class="test btn btn-primary btn-xs" onclick="modal_load('."'".$booking->id_no."'".')" data-toggle="modal">Unpaid</a>';
                    }else{
                    echo 'Paid';
                    }  ?></dd>
                     
                </dl>
            </div> 
        </div>
    </div>
</div>
 <div id="paid_info" class="modal fade" role="dialog">
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
    $('#paid_info').modal('show');
}

</script>