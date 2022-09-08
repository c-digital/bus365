
<style type="text/css">

/*ticket*/
.row {
    margin-right: -15px;
    margin-left: -15px;
}

 {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}

div {
    display: block;
}
.passanger-info {
    background-color: #f6f8fa;
    padding: 15px 5px;
    margin-bottom: 20px;
    margin-right: -20px;
    margin-left: -20px;
    border-top: 1px solid #e1e6ef;
    border-bottom: 1px solid #e1e6ef;
}

.well {
    margin-bottom: 0;
    background-color: #f1f5f8;
    border-radius: 0;
    -webkit-box-shadow: none;
    box-shadow: none;
    margin-top: 15px;
}
.ticket-inner {
    float:left;
    width:100%;
    border: 1px solid #e3e3e3;
    height: auto;
    padding: 10px;
}
    
.seat {
    margin: 5px 0;
    color:#fff;
}

.price-details tr:last-child th:first-child{
    text-align: left;
} 
.table-striped > tbody > tr:nth-of-type(2n+1) {
    background-color: #fff;
}
.table-striped > tbody > tr:nth-of-type(2n+2) {
    background-color: #f9f9f9;
}
.price-details p {
    margin: 0 0 15px;
    font-size: 14px;
}

.table-bordered>tbody>tr>td, .table-bordered>tbody>tr>th, .table-bordered>tfoot>tr>td, .table-bordered>tfoot>tr>th, .table-bordered>thead>tr>td, .table-bordered>thead>tr>th {
    border: 1px solid #ddd;
}
.table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th {
    padding: 8px;
    line-height: 1.42857143;
    vertical-align: top;
    border-top: 1px solid #ddd;
}
td, th {
    padding: 0;
}
.table{
    width: 100%;
}
.ticket-content .table > thead > tr > th {
    border-bottom: 1px solid #ddd;
    color: #000;
}
li {
    display: list-item;
    text-align: -webkit-match-parent;
}
.list-unstyled {
    padding-left: 0;
    list-style: none;
}
user agent stylesheet
ul, menu, dir {
    display: block;
    list-style-type: none;
    -webkit-margin-before: 1em;
    -webkit-margin-after: 1em;
    -webkit-margin-start: 0px;
    -webkit-margin-end: 0px;
    -webkit-padding-start: 40px;
}
{
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
/*user agent stylesheet*/
li {
    display: list-item;
    text-align: -webkit-match-parent;
}
.list-unstyled {
    padding-left: 0;
    list-style: none;
}
.text-right {
    text-align: right;
}
table {
    border-spacing: 0;
    border-collapse: collapse;
}
user agent stylesheet
table {
    display: table;
    border-collapse: separate;
    border-spacing: 2px;
    border-color: grey;
}
body {
    font-family: 'Open Sans', sans-serif;
    font-size: 13px;
    color: #828282;
    overflow-x: hidden;
    overflow-y: auto;
}
body {
    font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    background-color: #fff;
}

.ticket-content {
    border: 1px solid #e1e6ef;
    padding: 20px;
}

.ticket-logo img {
    background: #e1e6ef !important;
    height: 40px !important;
}
.list-unstyled {
    padding-left: 0;
    list-style: none;
}
.ticket-content strong {
    color: #000;
    font-weight: 600;
}
</style>
<div class="clearfix"></div>

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
                                            <img src="<?php echo $appSetting->logo; ?>" class="img-responsive" alt="">
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
                                    <td><strong><?php echo display('pickup_location') ?>:</strong> <span><?php echo (!empty($ticket->pickup_trip_location)?$ticket->pickup_trip_location:null) ?></span></td>
                                    <td><strong><?php echo display('drop_location') ?>:</strong> <span><?php echo (!empty($ticket->drop_trip_location)?$ticket->drop_trip_location:null) ?></span></td>
                                    <td><strong><?php echo display('date') ?>:</strong> <span><?php echo (!empty($ticket->booking_date)?$ticket->booking_date:null) ?></span></td>
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
                                        <ul class="list-unstyled text-right">
                                            <li><strong><?php echo display('booking_id') ?> :</strong>
                                                <?php echo (!empty($ticket->booking_id_no)?$ticket->booking_id_no:null) ?></li>
                                                 <li><strong><?php echo display('route_name') ?> :</strong>
                                            <?php echo (!empty($ticket->route_name)?$ticket->route_name:null) ?></li>
                                            <li>
                                            <strong><?php echo display('trip_id') ?> :</strong> 
                                            <?php echo (!empty($ticket->trip_id_no)?$ticket->trip_id_no:null) ?></li>
                                        </ul>
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
                                        <tr>
                                            <td><?php echo (!empty($ticket->seat_serial)?(str_replace(',', ', ', $ticket->seat_serial)):null) ?></td>
                                            <td><?php echo (!empty($ticket->adult)?$ticket->adult:0) ?></td>
                                            <td><?php echo (!empty($ticket->child)?$ticket->child:0) ?></td>
                                             <td><?php echo (!empty($ticket->special)?$ticket->special:0) ?></td>
                                            <th class="text-right"><?php echo $price = (!empty($ticket->price)?$ticket->price:0) ?> <?php echo $currency; ?></th>
                                        </tr>
                                        <tr>
                                            <td colspan="3"></td>
                                            <th  class="text-right"><?php echo display('discount'); ?></th>
                                            <th class="text-right"><?php echo $discount = (!empty($ticket->discount)?$ticket->discount:0) ?> <?php echo $price-$discount ?> <?php echo $appSetting->currency; ?></th>
                                        </tr> 
                                        <tr>
                                            <td colspan="3"></td>
                                            <th  class="text-right"><?php echo display('grand_total') ?></th>
                                            <th class="text-right"><?php echo $price-$discount ?> <?php echo $price-$discount ?> <?php echo $appSetting->currency; ?></th>
                                        </tr>
                                    </tbody>
                                </table>
                                 <table class="table table-responsive">
                            <tbody>
                                <tr>
                                    <td style="font-size:10px;"> ** This is Computer Generated Copy. No Signature Required.</td>
                                </tr>
                            </tbody>
                        </table>
                            </div>
                        </div> 
                    </div>
                </div>
                
               <div class="ticket-content" style="margin-top:20px">
                    <h4><?php echo display('payment_information') ?></h4>
                    <span><?php echo display('paument_success_message') ?></span><br/>
                    <span><?php echo display('item_number') ?> : 
                        <strong><?php echo $item_number; ?></strong>
                    </span><br/>
                    <span><?php echo display('txn_id') ?> : 
                        <strong><?php echo $txn_id; ?></strong>
                    </span><br/>
                    <span><?php echo display('amount_paid') ?> : 
                        <strong><?php echo $payment_amt.' '.$currency_code; ?></strong>
                    </span><br/>
                    <span><?php echo display('payment_status') ?> : 
                        <strong><?php echo $status; ?></strong>
                    </span><br/>
                </div>
           
            </div>

 

            <!-- Paypal transection information -->
            

        </div>
    </div>
</div>