<div class="clearfix"></div>
 <?php if ($this->session->flashdata('message')) { ?>
<div class="alert alert-success alert-dismissible" role="alert">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    <?php echo $this->session->flashdata('message') ?>
</div>
<?php } ?>
<?php if ($this->session->flashdata('exception')) { ?>
<div class="alert alert-danger alert-dismissible" role="alert">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    <?php echo $this->session->flashdata('exception') ?>
</div>
<?php } ?>
<?php if (validation_errors()) { ?>
<div class="alert alert-danger alert-dismissible" role="alert">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    <?php echo validation_errors() ?>
</div>
<?php } ?>
<div class="ticket-info">
    <div class="container">
        <div class="row">

            <div class="col-sm-12 col-md-8 col-md-offset-2"  style="margin-bottom:20px">
                 <div class="btn-group">
                    <button type="button" onclick="printContent('PrintMe')" class="btn btn-danger"><i class="fa fa-print"></i></button> 
                </div>
            </div>


            <div class="col-sm-12 col-md-8 col-md-offset-2" id="PrintMe">
                <div class="ticket-content">
                    <div class="table-responsive">
                        <table style="width:100%;">
                            <tbody>
                                <tr>
                                    <td>
                                        <div class="ticket-logo">
                                            <img src="<?php echo base_url(!empty($appSetting->logo)?$appSetting->logo:null) ?>" class="img-responsive" alt="">
                                        </div>
                                    </td>
                                    <td style="vertical-align:middle;">
                                      
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
 
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <tbody>
                                <tr>
                                    <td><strong><?php echo display('pickup_location'); ?>:</strong> <?php echo (!empty($ticket->pickup_trip_location)?$ticket->pickup_trip_location:null) ?></td>
                                    <td><strong><?php echo display('drop_location'); ?>:</strong> <?php echo (!empty($ticket->drop_trip_location)?$ticket->drop_trip_location:null) ?></td>
                                    <td><strong>Date:</strong> <?php echo (!empty($ticket->booking_date)?$ticket->booking_date:null) ?></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="passanger-info table-responsive">
                        <div class="col-sm-12">
                            <table width="100%">
                                <tr>
                                    <td>
                                        <ul class="list-unstyled">
                                              <li><strong><?php echo display('passenger_name') ?> :</strong>
                                            <?php echo (!empty($ticket->passenger_name)?$ticket->passenger_name:null) ?>
                                            </li>
                                             <li><strong><?php echo display('nid') ?> :</strong>
                                            <?php echo (!empty($ticket->nid)?$ticket->nid:null) ?>
                                            </li>
                                            <li><strong><?php echo display('phone') ?> :</strong>
                                                <?php echo (!empty($appSetting->phone)?$appSetting->phone:null) ?></li>
                                                  <li>
                                            <strong><?php echo display('passenger_id') ?> :</strong> 
                                            <?php echo (!empty($ticket->tkt_passenger_id_no)?$ticket->tkt_passenger_id_no:null) ?></li>
                                            <li>
                                            <li><strong><?php echo display('facilities') ?> :</strong>
                                                <ul class="list-inline">
                                                <?php
                                                    foreach(explode(',', $ticket->request_facilities) AS $facilities) 
                                                    {
                                                        echo (!empty(trim($facilities))?"<li>&radic;$facilities</li>":null);
                                                    }
                                                ?>
                                                </ul>
                                            </li>
                                        </ul>
                                    </td>
                                    <td>  
                                        <dl class="list-unstyled text-right">
                                            <li><strong><?php echo display('booking_id') ?> :</strong>
                                                <?php echo (!empty($ticket->booking_id_no)?$ticket->booking_id_no:null) ?></li>
                                                 <li><strong><?php echo display('route_name') ?> :</strong>
                                            <?php echo (!empty($ticket->route_name)?$ticket->route_name:null) ?></li>
                                            <li>
                                            <strong><?php echo display('trip_id') ?> :</strong> 
                                            <?php echo (!empty($ticket->trip_id_no)?$ticket->trip_id_no:null) ?></li>
                                            
                                        </dl>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>

                    <!-- Ticket Information -->
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th><?php echo display('seat_name'); ?></th>
                                            <th><?php echo display('adult'); ?></th>
                                            <th><?php echo display('child'); ?></th>
                                            <th><?php echo display('special'); ?></th>
                                            <th class="text-right"><?php echo display('amount'); ?></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $total_price=$ticket->adult*$pricess->price+$ticket->child*$pricess->children_price+$ticket->special*$pricess->special_price;
                                            if($ticket->booking_type == 'Bank'){
                                            $total_commission=($total_price*$bank_commission->bank_commission)/100;}else{
                                             $total_commission = 0;   
                                            }?>
                                        <tr>
                                            <td><?php echo (!empty($ticket->seat_serial)?(str_replace(',', ', ', $ticket->seat_serial)):null) ?></td>
                                            <td><?php echo (!empty($ticket->adult)?$ticket->adult:0) ?></td>
                                            <td><?php echo (!empty($ticket->child)?$ticket->child:0) ?></td>
                                             <td><?php echo (!empty($ticket->special)?$ticket->special:0) ?></td>
                                            <th class="text-right"><?php echo $price = (!empty($ticket->price)?$ticket->price-$total_commission:0) ?> <?php echo $currency; ?></th>
                                        </tr>
                                        <tr>
                                            <td colspan="3"></td>
                                            <th  class="text-right"><?php echo display('discount'); ?></th>
                                            <th class="text-right"><?php echo $discount = (!empty($bank_commission->discount)?$ticket->discount:0) ?> <?php echo $currency; ?></th>
                                        </tr> 
                                        <?php if($ticket->booking_type == 'Bank'){ 
                                        ?>
                                        <tr>
                                            <td colspan="3"></td>
                                            <th  class="text-right"><?php echo display('bank_charge'); ?></th>
                                            <th class="text-right"><?php
                                            echo $total_commission;
                                            echo "(".$bank_commission->bank_commission.'%'.")"?> <?php echo $currency; ?></th>
                                        </tr> 
                                        <?php }?>
                                        <tr>
                                            <td colspan="3"></td>
                                            <th  class="text-right"><?php echo display('grand_total'); ?></th>
                                            <th class="text-right"><?php echo $price-$discount+$total_commission ?> <?php echo $currency; ?></th>
                                        </tr>
                                    </tbody>
                                </table>
                                 <table class="table table-responsive">
                            <tbody>
                                <tr>
                                    <td  class="small"> ** This is Computer Generated Copy. No Signature Required.</td>
                                </tr>
                            </tbody>
                        </table>
                            </div>
                        </div> 
                    </div>
                </div>
                 <div class="ticket-content" style="margin-top:20px">
                    <h4><?php echo display('payment_status');?></h4>
                    <span><?php echo display('amount'); ?> : 
                        <strong><?php echo $st = $ticket->payment_status;
                        if($st = 1){
                        echo 'pending';
                        }else{
                            echo 'Paid';
                        } ?></strong>
                    </span>
            </div>
            </div>   
    </div>
</div>