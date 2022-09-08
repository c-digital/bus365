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
    <ul class="nav nav-pills">
         <?php if(empty($this->session->userdata('id_no'))){?>
    <li class="active"><button type="button" class="btn btn-primary btn-md ">Registration</button></li>
   
    <li><button type="button" class="btn btn-primary btn-md " data-target="#login_modal" data-toggle="modal"><?php echo display('login') ?></button></li>
    <?php }else{ ?>
    <?php } ?>
  </ul>
   <?php echo form_open('website/search/checkout', array('class'=>'row', 'id'=>'checkoutFrms')); ?>
    <div class="col-sm-5">

<div id="ps_inf">
  
  
  <div class="tab-content">
    
    <div id="home" class="tab-pane fade in active">
       <div class="passenger-form">
            <h4><?php echo display('passenger_details'); ?></h4>
            <input type="hidden" name="booking_id_no" value="<?php echo (!empty($booking->id_no)?$booking->id_no:null) ?>">
            <input type="hidden" name="passenger_id_no" value="<?php echo (!empty($booking->tkt_passenger_id_no)?$booking->tkt_passenger_id_no:null) ?>" id="pid">
            <input type="hidden" name="hdn_passenger_id" id="psid" value="<?php echo $this->session->userdata('id_no'); ?>">
            <div class="form-group">
                <label><?php echo display('name'); ?> *</label>
                <div class="row">
                    <div class="col-sm-6">
                        <input name="firstname" class="form-control" type="text" placeholder="First Name" id="name" value="<?php echo $this->session->userdata('firstname'); ?>">
                    </div>
                    <div class="col-sm-6">
                        <input name="lastname" class="form-control" type="text" placeholder="Last Name" value="<?php echo $this->session->userdata('lastname'); ?>" id="lastname">
                    </div>
                </div>
            </div>
            <div class="form-group">
              
                <label><?php echo display('phone'); ?> *</label>
                <input type="text" name="phone" value="<?php echo $this->session->userdata('phone'); ?>" class="form-control" id="phone"  placeholder="Phone number"  >
            </div>
            <div class="form-group">
                <label><?php echo display('email'); ?> *</label>
                <input type="email" name="email" class="form-control" id="email" placeholder="Email address"  value="<?php echo $this->session->userdata('p_email'); ?>">
            </div>
            <div class="form-group">
                <label><?php echo display('password'); ?> *</label>
                <input type="password" name="password" class="form-control" id="password" placeholder="Your Password" value="<?php echo $this->session->userdata('p_password'); ?>" >
                <input type="hidden" name="old_password" class="form-control" id="old_password" placeholder="Your Password" value="<?php echo $this->session->userdata('p_password'); ?>">
            </div>
             <div class="form-group">
                <label><?php echo display('nid'); ?></label>
                 <input type="text" name="p_nid" class="form-control" id="nid" placeholder="National ID"  value="<?php echo $this->session->userdata('nid'); ?>">
            </div>
            <div class="form-group">
                <label><?php echo display('address'); ?></label>
                <textarea name="address_line_1" id="address" class="form-control" rows="3" placeholder="Address"><?php echo $this->session->userdata('address'); ?></textarea>
            </div>
            
        </div>
    </div>
    
   
  </div>
 
    </div>

    </div>
    <div class="col-sm-7">
        <a style="background-color:#0b2a5b;color:white;text-decoration: none;" href="<?php echo base_url('website/website/how_to_pay') ?>"  class="btn btn-block"  onclick="window.open(this.href, '_blank'); return false;"><h4 style="color:white"><?php echo display('how_to_pay');?></h4> </a>
        <br>
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
        <div class="pament-details">

        
            <div style="margin-top:20px">
                <!-- <input type="hidden" name="typepame" id="paytype" value="">
                <button type="button" id="paypal_id" class="btn btn-block btn-primary" data-toggle="modal" data-target="#paypal_modal" ><?php echo display('paypal') ?> </button> -->
                  <button type="submit" id="cash_ids" class="btn btn-block btn-primary" ><?php echo display('continue');?> </button>
            <!--  <button type="button" id="bank_id" class="btn btn-block btn-primary" data-toggle="modal" data-target="#bank_modal"><?php echo display('bank_transaction') ?> </button> -->
            </div>

        </div>     
    </div>   
<?php echo form_close(); ?>
 <div id="login_modal" class="modal fade" role="dialog" style="width: 95%">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header" style="background-color: #012B72;color: white">
                    <button type="button" class="close" onclick="hidemodal()" style="margin-right: 60px">&times;</button>
                    <center><strong><?php echo display('enter_login_info'); ?></strong></center>
                </div>
                <div class="modal-body">
                   <div id="passengerErr" class="alert hide"></div> 
                         <?= form_open_multipart('website/user/newlog', array("id"=>"logform")) ?>
                      
                        <div class="form-group row">
                            <label for="owner" class="col-sm-2 col-form-label">
                                <?php echo display('email') ?>
                            </label>
                            <div class="col-sm-4">
                                <input name="emails" class="form-control" type="email" placeholder="<?php echo display('email') ?>" id="emails">
                            </div>
                        </div>
                          <div class="form-group row">
                            <label for="password" class="col-sm-2 col-form-label">
                                <?php echo display('password') ?>
                            </label>
                            <div class="col-sm-4">
                                <input name="passwords" class="form-control" type="password" placeholder="<?php echo display('password') ?>" id="passwords">
                            </div>
                        </div>

                        <div class="form-group text-center">
                            <button type="reset" class="btn btn-primary w-md m-b-5"><?php echo display('reset') ?></button>
                            <button type="submit" class="btn btn-success">
                                <?php echo display('login') ?>
                            </button>
                        </div>
                        <?php echo form_close() ?>

                </div>

            </div>
        </div>

    </div>

<!-- paypal modal end -->

<!-- Bank modal end -->
<!-- Test Modal -->
<div class="modal fade" id="test_modal" tabindex="-1" role="dialog" style="margin:100px;">
    <div class="modal-md" role="document">
        <div class="modal-content"> 

            <div class="modal-header">
                <button type="button" class="close" onclick="hidecashlmodal()"><span aria-hidden="true" style="color:red">&times;</span></button>
            
                <div id="outputPreview5" class="alert hide modal-title" role="alert" >
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                </div>
            </div>

            <div class="modal-body">
                 <div class="col-sm-7">
        <a style="background-color:#0b2a5b;color:white;text-decoration: none;" href="<?php echo base_url('website/website/how_to_pay') ?>"  class="btn btn-block"  onclick="window.open(this.href, '_blank'); return false;"><h4 style="color:white"><?php echo display('how_to_pay');?></h4> </a>
        <br>
        <div class="journey-details">
           
            <h4><?php echo display('journey_details'); ?></h4>  
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
        <div class="pament-details">

          <span>
             
                <a style="color:red;text-decoration: none;" href="<?php echo base_url('website/website/term_and_condition') ?>"  class=""  onclick="window.open(this.href, '_blank'); return false;"><?php echo display('term_n_condition'); ?></a>
             </span>
            <div style="margin-top:20px">
                <input type="hidden" name="typepame" id="paytype" value="">
                <button type="button" id="paypal_id" class="btn btn-block btn-primary" data-toggle="modal" data-target="#paypal_modal" ><?php echo display('paypal') ?> </button>
                  <button type="submit" id="cash_id" class="btn btn-block btn-primary" ><?php echo display('cash') ?> </button>
             <button type="button" id="bank_id" class="btn btn-block btn-primary" data-toggle="modal" data-target="#bank_modal"><?php echo display('bank_transaction') ?> </button>
            </div>

        </div>     
    </div> 
            </div>
            </div>
            </div>
            </div>

</span>


 <script type="text/javascript">
     $(document).ready(function(){ 

    var checkoutFrmm   = $("#checkoutFrms");
    var outputPreviewm = $('#outputPreviewm');

    checkoutFrmm.on('submit', function(e) {
        e.preventDefault(); 
       
        $.ajax({
            method: checkoutFrmm.attr('method'),
            url   : checkoutFrmm.attr('action'),
            data  : checkoutFrmm.serialize(),
            dataType: 'json',
            success: function(data)
            {
              var pyatype=document.getElementById("paytype").value;
                if (data.status == true)
                {
                    outputPreviewm.removeClass("hide").removeClass("alert-danger").addClass('alert-success').html(data.success);
                    //  setInterval(function(){
                    $('.modal-body').html(data.payment);
                          
                    // }, 1000);
                }else{
                    outputPreviewm.removeClass("hide").removeClass("alert-success").addClass('alert-danger').html(data.exception);
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



<script type="text/javascript">
   $("#logform").submit(function(e){
        e.preventDefault();
        var passengerMsg    = $("#passengerMsg");
        var passengerErr    = $("#passengerErr");
        $.ajax({
            url: $(this).attr('action'),
            method: $(this).attr('method'),
            dataType: 'json',
            data: $(this).serialize(),
            beforeSend: function()
            {
                passengerMsg.removeClass('hide');
                passengerErr.removeClass('hide');

            },

            success: function(data)
            {  
                if (data.exception) {
                    passengerErr.addClass('alert-danger').removeClass('alert-success').html(data.exception);

                    //$('#login_modal').modal('hide');
                }else{
                    passengerMsg.addClass('alert-success').removeClass('alert-danger').html(data.message);
                     
                     var x = document.getElementById("login_modal");
                     x.style.display = "none";
                     console.log(data.firstname);
                     document.getElementById("name").value = data.firstname;
                     document.getElementById("lastname").value = data.lastname;
                     document.getElementById("email").value = data.p_email;
                     document.getElementById("old_password").value = data.p_password;
                     document.getElementById("password").value = data.p_password;
                     document.getElementById("phone").value = data.phone;
                     document.getElementById("address").value = data.address;
                     document.getElementById("psid").value = data.id_no;
                     document.getElementById("pid").value = data.id_no;
                     document.getElementById("nid").value = data.nid;
                }
            },
            error: function(xhr)
            {
                alert('failed!');
            }

        });

    });

   function hidemodal() {
     var x = document.getElementById("login_modal");
                     x.style.display = "none";
}

</script>
