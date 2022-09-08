<style>.close{
color:red;}</style>
<?php $setting=$this->db->select('*')->from('ws_setting')->get()->result();
foreach ($setting as $transactiontype) {
   $transactiontype->payment_type;
}


$bank=$this->db->select('*')->from('bank_info')->get()->result();

 ?>
   <div><input type="hidden" name="sesval" id="pas_ses_id" value="<?php echo $this->session->userdata('id_no'); ?>"></div>
   <span class="container">
      <div id="outputPreviewm" class="alert hide modal-title" role="alert" >
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                </div>
    
   <?php echo form_open('website/search/checkout', array('class'=>'row', 'id'=>'checkoutFrms')); ?>
    <div class="col-sm-7">

<div id="ps_inf">
  
  
  <div class="tab-content">
    
    <div id="home" class="tab-pane fade in active">
           <div class="journey-details">
           
            <h4><?php echo 'Passenger Details'; ?></h4>  
            <dl class="dl-horizontal">
                <dt><?php echo display('firstname'); ?></dt>
                <dd>&nbsp; 
                    <?php echo (!empty($firstname)?$firstname:null) ?> 
                </dd>
                <dt><?php echo display('lastname'); ?></dt>
                <dd>&nbsp; 
                    <?php echo (!empty($lastname)?$lastname:null) ?>  
                </dd>
                <dt><?php echo display('email'); ?></dt>
                <dd>&nbsp;  
                    <?php echo (!empty($email)?$email:null) ?> 
                </dd> 
                 <dt><?php echo display('address'); ?></dt>
                <dd>&nbsp;  
                    <?php echo (!empty($address)?$address:null) ?> 
                </dd> 
            </dl>
        </div>
           <div class="journey-details">
           
            <h4><?php echo display('booking_details'); ?></h4>  
            <dl class="dl-horizontal">
                <dt><?php echo display('route'); ?></dt>
                <dd>&nbsp; 
                    <?php echo (!empty($booking->route_name)?$booking->route_name:null) ?> 
                </dd>
                <dt><?php echo display('pickup_location'); ?></dt>
                <dd>&nbsp; 
                    <?php echo (!empty($booking->pickup_trip_location)?$booking->pickup_trip_location:null) ?>  
                </dd>
                <dt><?php echo display('drop_location'); ?></dt>
                <dd>&nbsp;  
                    <?php echo (!empty($booking->drop_trip_location)?$booking->drop_trip_location:null) ?> 
                </dd> 
                <dt><?php echo display('request_facilities'); ?></dt>
                <dd>&nbsp;  
                    <?php echo (!empty($booking->request_facilities)?$booking->request_facilities:'None') ?> 
                </dd> 
                <dt><?php echo display('booking_date'); ?></dt>
                <dd>&nbsp;
                    <?php echo (!empty($booking->booking_date)?$booking->booking_date:null) ?>
                </dd>
            </dl>
        </div>
    </div>
    
   
  </div>
 
    </div>

    </div>
    <div class="col-sm-5">
        <a style="background-color:#0b2a5b;color:white;text-decoration: none;" href="<?php echo base_url('website/website/how_to_pay') ?>"  class="btn btn-block"  onclick="window.open(this.href, '_blank'); return false;"><h4 style="color:white"><?php echo display('how_to_pay');?></h4> </a>
        <br>
  
        <div class="pament-details">

          <span>
            <input type="checkbox" name="tandc" id="tandc" onChange="function activedisable(){
             var checkBox = document.getElementById('tandc');
    if (checkBox.checked == true){
       $('#paypal_id').prop('disabled', false);
            $('#cash_id').prop('disabled', false);
          $('#bank_id').prop('disabled', false);
    } else {
       $('#paypal_id').prop('disabled', true);
            $('#cash_id').prop('disabled', true);
          $('#bank_id').prop('disabled', true);
    }
           };activedisable()"> 
                <a style="color:red;text-decoration: none;" href="<?php echo base_url('website/website/term_and_condition') ?>"  class=""  onclick="window.open(this.href, '_blank'); return false;"><?php echo display('term_n_condition'); ?></a>
             </span>
            <div style="margin-top:20px">
                <input type="hidden" name="typepame" id="paytype" value="">
                <button type="button" id="paypal_id" class="btn btn-block btn-primary" data-toggle="modal" data-target="#paypal_modal"  disabled=""><?php echo display('paypal') ?> </button>
                  <button type="button" id="cash_id" data-toggle="modal" data-target="#cash_modal" class="btn btn-block btn-primary"  disabled=""><?php echo display('cash') ?> </button>
             <button type="button" id="bank_id" class="btn btn-block btn-primary" data-toggle="modal" data-target="#bank_modal" disabled=""><?php echo display('bank_transaction') ?> </button>
            </div>

        </div>     
    </div>   
<?php echo form_close(); ?>

    <!-- paypal modal start -->
    <div class="modal fade" id="paypal_modal" tabindex="-1" role="dialog" style="margin:100px;">
    <div class="modal-md" role="document">
        <div class="modal-content"> 

            <div class="modal-header">
                <button type="button" class="close" onclick="function closepaypalmodal(){
                    document.getElementById('paypal_modal').style.display = 'none';};closepaypalmodal()"><span aria-hidden="true" style="color:red">&times;</span></button>
            
                <div id="outputPreviewpaypal" class="alert hide modal-title" role="alert" >
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                </div>
            </div>

            <div class="modal-body">
           
               <?php echo form_open('website/paypal/buy/'.$booking_id, array('class'=>'row', 'id'=>'checkoutFrm11')); ?>
            <table class="table table table-bordered table-striped">
                <tbody class="itemNumber">
                    <tr>
                        <td class="text-right"><?php echo display('seats'); ?></td>
                        <th class="text-right"><?php echo (!empty($booking->seat_numbers)?$booking->seat_numbers:0) ?></th>
                    </tr>
                    <tr>
                        <td class="text-right"><?php echo display('prices'); ?></td>
                        <th class="text-right"><?php echo (!empty($booking->price)?($booking->price/$booking->total_seat):0) ?></th>
                        <input type="hidden" name="passenger_id_no" value="<?php echo $booking->tkt_passenger_id_no ?>">
                        <input type="hidden" name="booking_id_no" value="<?php echo $booking->id_no; ?>">
                    </tr>
                    <tr>
                   <input name="firstname" class="form-control" type="hidden" id="names" value="">
                    <input name="lastname" class="form-control" type="hidden"  value="" id="lastnames_id">
                    <input type="hidden" name="phone" value="" id="phones_id"  >
                    <input type="hidden" name="email"  id="emails_id" >
                    <input type="hidden" name="password"  id="passwords_id" value="" required="required">
                    <input type="hidden" name="address_line_1" id="addresss_id" class="form-control" >
                      <input type="hidden" name="p_nid" id="p_nidp" class="form-control" >
                    </tr>
                    <tr>
                     <td class="text-right"><?php echo display('child_price'); ?></td>
                                            <th class="text-right"><?php echo $booking->child*$routePrice->children_price; ?></th>
                                        </tr>
                                         <tr>
                                            <td class="text-right"><?php echo display('adult_price'); ?></td>
                                            <th class="text-right"><?php echo $booking->adult*$routePrice->price; ?></th>
                                        </tr>
                                         <tr>
                                            <td class="text-right"><?php echo display('special_price'); ?></td>
                                            <th class="text-right"><?php echo $booking->special*$routePrice->special_price; ?></th>
                                        </tr>
            <tr>
               <td class="text-right"><?php echo display('total'); ?></td>
                        <th class="text-right"><?php echo (!empty($booking->price)?$booking->price:0) ?></th>
                    </tr>
                    <tr>
                        <td class="text-right"><?php echo display('discount'); ?></td>
                        <th class="text-right"><?php echo (!empty($booking->discount)?$booking->discount:0) ?></th>
                    </tr>
                    <tr>
                        <td class="text-right"><b><?php echo display('grand_total'); ?></b></td>
                        <th class="text-right"><?php echo (!empty($booking->price)?($booking->price-$booking->discount):0) ?></th>
                    </tr>
                </tbody>
            </table> 
              <button class="btn btn-block btn-primary" id="paypal"><?php echo display('paypal_payment_paynow') ?></button>
              <?php echo form_close() ?>
            </div>

        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
<!-- paypal modal end -->
<!-- Bank modal start -->
    <div class="modal fade" id="bank_modal" tabindex="-1" role="dialog" style="margin:100px;">
    <div class="modal-md" role="document">
        <div class="modal-content"> 

            <div class="modal-header">
                <button type="button" class="close" onclick="function closebankmodal(){
                    document.getElementById('bank_modal').style.display = 'none';};closebankmodal()"><span aria-hidden="true" style="color:red">&times;</span></button>
            
                <div id="outputPreview1" class="alert hide modal-title" role="alert" >
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                </div>
            </div>

            <div class="modal-body">
           
               <?php echo form_open('website/search/bank_booking', array('class'=>'row', 'id'=>'check_bank_form')); ?>
            <table class="table table table-bordered table-striped">
                <tbody class="itemNumber">
                    <tr>
                        <td class="text-right"><?php echo display('seats'); ?></td>
                        <th class="text-right"><?php echo (!empty($booking->seat_numbers)?$booking->seat_numbers:0);?></th>
                    </tr>
                   
                    <tr>
                        <td class="text-right"><?php echo display('prices'); ?></td>
                        <th class="text-right"><?php echo (!empty($booking->price)?($booking->price/$booking->total_seat):0) ?></th>
                        <input type="hidden" name="passenger_id_no" value="<?php echo $booking->tkt_passenger_id_no ?>">
                        <input type="hidden" name="booking_id_no" value="<?php echo $booking->id_no; ?>">
                    </tr>
                   
                  <tr>
                     <td class="text-right"><?php echo display('child_price'); ?></td>
                                            <th class="text-right"><?php echo $booking->child*$routePrice->children_price; ?></th>
                                        </tr>
                                         <tr>
                                            <td class="text-right"><?php echo display('adult_price'); ?></td>
                                            <th class="text-right"><?php echo $booking->adult*$routePrice->price; ?></th>
                                        </tr>
                                         <tr>
                                            <td class="text-right"><?php echo display('special_price'); ?></td>
                                            <th class="text-right"><?php echo $booking->special*$routePrice->special_price; ?></th>
                                        </tr>
                    <tr>
                        <td class="text-right"><?php echo display('total'); ?></td>
                        <th class="text-right"><?php echo (!empty($booking->price)?$booking->price:0) ?></th>
                    </tr>
                    <tr>
                        <td class="text-right"><?php echo display('discount'); ?></td>
                        <th class="text-right"><?php echo (!empty($booking->discount)?$booking->discount:0) ?></th>
                    </tr>
                     <tr>
                        <td class="text-right"><?php echo display('bank_charge'); ?></td>
                        <th class="text-right"><?php echo (!empty($b_commission)?$b_commission:0).'('.$commission_per.'%'.')';?></th>
                        
                    </tr>
                    <tr>
                        <td class="text-right"><b><?php echo display('grand_total'); ?></b></td>
                        <th class="text-right"><?php echo (!empty($booking->price)?($booking->price-$booking->discount+$b_commission):0) ?><input type="hidden" name="amount" value="<?php echo (!empty($booking->price)?($booking->price-$booking->discount):0) ?>"></th>
                    </tr>
                </tbody>
            </table> 
            <div class="form-group row">
                        <label for="bank_id" class="col-sm-4 col-form-label text-right"><?php echo display('select_bank_name'); ?> *</label>
                        <div class="col-sm-6">
                         
                         <?php 
                           $bank =$this->db->select('*')->from('bank_info')->get()->result();
                           ?>
                           <select name="bank_id" class="form-control" required>
                               <option value="">Select Bank</option>
                               <?php foreach ($bank as $b) {?>
                                  <option value="<?php echo $b->id;?>"><?php echo $b->bank_name;?></option>
                               <?php } ?>
                           </select>
                        </div>
                    </div> 
 
                    <div class="form-group row">
                        <label for="trip_route_id" class="col-sm-4 col-form-label text-right"><?php echo display('enter_transaction_id'); ?>*</label>
                        <div class="col-sm-6">
                            <input type="text" name="tran_num" class="form-control" placeholder="Transaction Id" required>
                        </div>
                    </div> 
             <button class="btn btn-block btn-primary"><?php echo display('confirm_booking') ?></button>
              <?php echo form_close() ?>
            </div>

        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
<!-- Bank modal end -->

<!-- Cash Modal start -->
<div class="modal fade" id="cash_modal" tabindex="-1" role="dialog" style="margin:100px;">
    <div class="modal-md" role="document">
        <div class="modal-content"> 

            <div class="modal-header">
                <button type="button" class="close" onclick="function closecashmodal(){
                    document.getElementById('cash_modal').style.display = 'none';};closecashmodal()"><span aria-hidden="true" style="color:red">&times;</span></button>
            
                <div id="outputPreview2" class="alert hide modal-title" role="alert" >
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                </div>
            </div>

            <div class="modal-body">
           
               <?php echo form_open('website/paypal/paymentlocal/'.$booking_id, array('class'=>'row', 'id'=>'check_cash_formss')); ?>
            <table class="table table table-bordered table-striped">
                <tbody class="itemNumber">
                    <tr>
                        <td class="text-right"><?php echo display('seats'); ?></td>
                        <th class="text-right"><?php echo (!empty($booking->seat_numbers)?$booking->seat_numbers:0) ?></th>
                    </tr>
                    <tr>
                        <td class="text-right"><?php echo display('prices'); ?></td>
                        <th class="text-right"><?php echo (!empty($booking->price)?($booking->price/$booking->total_seat):0) ?></th>
                        <input type="hidden" name="passenger_id_no" value="<?php echo $booking->tkt_passenger_id_no ?>">
                        <input type="hidden" name="booking_id_no" value="<?php echo $booking->id_no; ?>">
                    </tr>
                    <tr>
                   <input name="firstname" class="form-control" type="hidden" id="names_cash" value="">
                    <input name="lastname" class="form-control" type="hidden"  value="" id="lastnames_cash_id">
                    <input type="hidden" name="phone" value="" id="phones_cash_id"  >
                    <input type="hidden" name="email"  id="emails_cash_id" >
                    <input type="hidden" name="password"  id="passwords_cash_id" value="" required="required">
                    <input type="hidden" name="address_line_1" id="addresss_cash_id" class="form-control" >
                     <input type="hidden" name="p_nid" id="p_nidc" class="form-control" >
                    </tr>
                    <tr>
                     <td class="text-right"><?php echo display('child_price'); ?></td>
                                            <th class="text-right"><?php echo $booking->child*$routePrice->children_price; ?></th>
                                        </tr>
                                         <tr>
                                            <td class="text-right"><?php echo display('adult_price'); ?></td>
                                            <th class="text-right"><?php echo $booking->adult*$routePrice->price; ?></th>
                                        </tr>
                                         <tr>
                                            <td class="text-right"><?php echo display('special_price'); ?></td>
                                            <th class="text-right"><?php echo $booking->special*$routePrice->special_price; ?></th>
                                        </tr>
                    <tr>
                        <td class="text-right"><?php echo display('total'); ?></td>
                        <th class="text-right"><?php echo (!empty($booking->price)?$booking->price:0) ?></th>
                    </tr>
                    <tr>
                        <td class="text-right"><?php echo display('discount'); ?></td>
                        <th class="text-right"><?php echo (!empty($booking->discount)?$booking->discount:0) ?></th>
                    </tr>
                    <tr>
                        <td class="text-right"><b><?php echo display('grand_total'); ?></b></td>
                        <th class="text-right"><?php echo (!empty($booking->price)?($booking->price-$booking->discount):0) ?></th>
                    </tr>
                </tbody>
            </table> 
         
          <button class="btn btn-block btn-primary" id="local"><?php echo display('book_for_one_hour') ?></button>
              <?php echo form_close() ?>
            </div>

        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
<!-- cash Modal End -->
</span>

<!-- bank js -->
<script type="text/javascript">
$(document).ready(function(){ 

    var checkoutbanform   = $("#check_bank_form");
    var outputPreview1 = $('#outputPreview1');

    checkoutbanform.on('submit', function(e) {
        e.preventDefault(); 
       
        $.ajax({
            method: checkoutbanform.attr('method'),
            url   : checkoutbanform.attr('action'),
            data  : checkoutbanform.serialize(),
            dataType: 'json',
            success: function(data)
            {
                if (data.status == true)
                {
                    outputPreview1.removeClass("hide").removeClass("alert-danger").addClass('alert-success').html(data.success);
                    
                    setInterval(function(){
                        window.location.href = '<?= base_url() ?>'+'website/paypal/bank_info/'+data.booking_id_no;
                          
                    }, 1000);
                } else {
                    outputPreview1.removeClass("hide").removeClass("alert-success").addClass('alert-danger').html(data.exception);
                }
              
            },
            error: function()
            {
                alert('failed...');
            }
        }); 
    });

});
</script>
<!-- cash payment -->

