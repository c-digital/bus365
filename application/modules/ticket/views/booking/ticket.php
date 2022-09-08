<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4>
                        <a href="<?php echo base_url('ticket/booking/index') ?>" class="btn btn-sm btn-success" title="List"> <i class="fa fa-list"></i> <?php echo display('list') ?></a>  
                        <a href="<?php echo base_url('ticket/booking/form') ?>" class="btn btn-sm btn-info" title="Add"><i class="fa fa-plus"></i> <?php echo display('add') ?></a>  
                        <a href="#" class="btn btn-sm btn-danger" title="Print" onclick="printContent('PrintMe')"><i class="fa fa-print"></i></a>  
                    </h4>
                </div>
            </div>
  
            <div class="panel-body" id="PrintMe">

                <div class="ticket-content">
                    <div class="table-responsive">
                        <table style="width:100%;margin-bottom:10px">
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
                                    <td><strong><?php echo display('pickup_location') ?>:</strong> <?php echo (!empty($ticket->pickup_trip_location)?$ticket->pickup_trip_location:null) ?></td>
                                    <td><strong><?php echo display('drop_location') ?>:</strong> <?php echo (!empty($ticket->drop_trip_location)?$ticket->drop_trip_location:null) ?></td>
                                    <td><strong><?php echo display('date') ?>:</strong> <?php echo (!empty($ticket->booking_date)?$ticket->booking_date:null) ?></td>
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
                                            <strong><?php echo display('payment_status');?> :</strong> 
                                            <?php $payment=$ticket->payment_status;
                                            if($payment == 1){
                                           echo display('unpaid');
                                            }else{
                                            echo display('paid');}?></li>
                                        </dl>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>

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
                                            $total_commission=($total_price*$appSetting->bank_commission)/100;}else{
                                             $total_commission = 0;   
                                            }?>
                                        <tr>
                                            <td><?php echo (!empty($ticket->seat_serial)?(str_replace(',', ', ', $ticket->seat_serial)):null) ?></td>
                                            <td  class="text-right"><?php echo (!empty($ticket->adult)?$ticket->adult:0) ?></td>
                                            <td  class="text-right"><?php echo (!empty($ticket->child)?$ticket->child:0) ?></td>
                                            <td  class="text-right"><?php echo (!empty($ticket->special)?$ticket->special:0) ?></td>
                                            <th class="text-right"><?php echo $price = (!empty($ticket->price)?$ticket->price-$total_commission:0) ?> <?php echo $currency; ?></th>
                                        </tr>
                                       
                                    </tbody>
                                    <tfoot>
                                         <tr>
                                         
                                            <th colspan="4"  class="text-right"><?php echo display('discount'); ?></th>
                                            <th class="text-right"><?php echo $discount = (!empty($ticket->discount)?$ticket->discount:0) ?> <?php echo $currency; ?></th>
                                        </tr> 
                                         <?php if($ticket->booking_type == 'Bank'){ 
                                        ?>
                                        <tr>
                                            <td colspan="3"></td>
                                            <th  class="text-right"><?php echo display('bank_charge'); ?></th>
                                            <th class="text-right"><?php
                                            echo $total_commission;
                                            echo "(".$appSetting->bank_commission.'%'.")"?> <?php echo $currency; ?></th>
                                        </tr> 
                                        <?php }?>
                                        <tr>
                                            
                                            <th colspan="4"  class="text-right"><?php echo display('grand_total'); ?></th>
                                            <th class="text-right"><?php echo $price-$discount ?> <?php echo $currency; ?></th>
                                        </tr>
                                        
                                    </tfoot>
                                </table>
                                
                                 <table class="table table-responsive">
                            <tbody>
                                <tr>
                                    <td class="small"> ** This is computer generated copy. No signature required.</td>
                                </tr>
                            </tbody>
                        </table>
                            </div>
                        </div> 
                    </div>
                </div>
            </div> 
        </div>
    </div>
</div>
