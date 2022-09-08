<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Login</title>

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="<?php echo base_url((!empty($setting->favicon)?$setting->favicon:'assets/img/icons/favicon.png')) ?>" type="image/x-icon">
        
        <!-- Start Global Mandatory Style -->
        <!-- Bootstrap -->
        <link href="<?php echo base_url('assets/css/bootstrap.min.css') ?>" rel="stylesheet" type="text/css"/>
        <!-- Bootstrap rtl -->
        <!-- <link href="<?php echo base_url('assets/css/bootstrap-rtl.min.css') ?>" rel="stylesheet" type="text/css"/> -->
        <!-- Pe-icon -->
        <link href="<?php echo base_url('assets/css/pe-icon-7-stroke.css') ?>" rel="stylesheet" type="text/css"/>
        <link href="<?php echo base_url('assets/css/pe-icon-7-stroke.css')?>" rel="stylesheet" type="text/css">
        <!-- Theme style -->
        <link href="<?php echo base_url('assets/css/custom.min.css') ?>" rel="stylesheet" type="text/css"/>
        <!-- Theme style rtl -->
        <!-- <link href="<?php echo base_url('assets/css/custom-rtl.min.css') ?>" rel="stylesheet" type="text/css"/> -->
    </head>
    <body>
        <div class="se-pre-con"></div>

        <!-- Content Wrapper -->
        <div class="login-wrapper"> 
            <div class="container-center">
                <div class="panel panel-bd">
                    <div class="panel-heading">
                        <div class="view-header">
                            <div class="header-icon">
                               <h1> <i class="pe-7s-unlock"></i></h1>
                            </div>
                            <div class="header-title">
                                <h3><?php echo (!empty($setting->title)?$setting->title:null) ?></h3>
                                <small><strong><?php echo display('login') ?></strong></small>
                            </div>
                        </div>
                        <div class="">
                            <!-- alert message -->
                            <?php if ($this->session->flashdata('message') != null) {  ?>
                            <div class="alert alert-info alert-dismissable">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                <?php echo $this->session->flashdata('message'); ?>
                            </div> 
                            <?php } ?>
                            
                            <?php if ($this->session->flashdata('exception') != null) {  ?>
                            <div class="alert alert-danger alert-dismissable">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                <?php echo $this->session->flashdata('exception'); ?>
                            </div>
                            <?php } ?>
                            
                            <?php if (validation_errors()) {  ?>
                            <div class="alert alert-danger alert-dismissable">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                <?php echo validation_errors(); ?>
                            </div>
                            <?php } ?> 
                        </div>
                    </div>


                    <div class="panel-body">
                        <?php echo form_open_multipart('dashboard/auth/user_info','class="form-inner"') ?>
                            <div class="form-group">
                                <label class="control-label" for="email"><?php echo display('email') ?></label>
                                <input type="text" placeholder="<?php echo display('email') ?>" name="email" id="email" class="form-control"> 
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="password"><?php echo display('password') ?></label>
                                <input type="password"  placeholder="<?php echo display('password') ?>" name="password" id="password" class="form-control"> 
                            </div>
                            <div> 
                                <button  type="reset" class="btn btn-info"><?php echo display('reset') ?></button> 
                                <button  type="submit" class="btn btn-success"><?php echo display('login') ?></button> 
                            </div>
                        <?php echo form_close() ?>
                        <div>
                            <span class="text-left"><a type="button" href="" class="" data-target="#login_modal" data-toggle="modal"><i class="pe-7s-paper-plane"></i><?php echo display('registrantion') ?></a></span><span class="text-right" style="margin-left: 60px"><a  href="" data-toggle="modal" data-target="#for_gott_password" style="color:#0B2161"><?php echo display('forgot_password') ?> ??</a></span></div>
                         
                    </div> 
                </div>
            </div>
        </div>
        <!-- /.content-wrapper -->
<div id="for_gott_password" class="modal fade" role="dialog">
  <div class="modal-dialog">
        <div class="modal-content"> 

            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
            
               <div id="outputPreview" class="alert hide modal-title" role="alert" >
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                </div>
            </div>

            <div class="modal-body">
                 <?php echo form_open('dashboard/auth/passenger_password_recovery/', array('class' => 'row', 'id'=>'checkoutFrm')) ?>
             
                 <div class="form-group">
                                <label class="control-label col-sm-3" for="email">Enter Your Email</label>
                                <div class="col-sm-9">
                                <input type="text" placeholder="<?php echo display('email') ?>" name="rec_email" id="req_email" class="form-control"> 
                            </div>
                            </div>
                            <br>
                               <br>
                            <div class="text-center" >
              <button type="submit" class="btn btn-success">send</button>
        </div>
              <?php echo form_close() ?>
            </div>

        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>


 <div id="login_modal" class="modal fade" role="dialog" style="width: 95%">
        <div class="modal-dialog modal-md">
            <div class="modal-content">
                <div class="modal-header" style="background-color: #012B72;color: white">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <center><strong><?php echo 'Passenger Information'; ?></strong></center>
                </div>
                <div class="modal-body">
                  <div id="outputmessage" class="alert hide modal-title" role="alert" >
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                </div> 
                         <?= form_open_multipart('website/user/registration', array("id"=>"regform")) ?>
                      
                        <div class="form-group row">
                            <label for="firstname" class="col-sm-3 col-form-label">
                                <?php echo display('firstname') ?>
                            *</label>
                            <div class="col-sm-8">
                                <input name="firstname" class="form-control" type="text" placeholder="<?php echo display('firstname') ?>" id="firstname" required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="lastname" class="col-sm-3 col-form-label">
                                <?php echo display('lastname') ?>
                            *</label>
                            <div class="col-sm-8">
                                <input name="lastname" class="form-control" type="text" placeholder="<?php echo display('lastname') ?>" id="lastname" required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="phone" class="col-sm-3 col-form-label">
                                <?php echo display('phone') ?>
                            </label>
                            <div class="col-sm-8">
                                <input name="phone" class="form-control" type="text" placeholder="<?php echo display('phone') ?>" id="phone">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="owner" class="col-sm-3 col-form-label">
                                <?php echo display('email') ?>
                            *</label>
                            <div class="col-sm-8">
                                <input name="email" class="form-control" type="email" placeholder="<?php echo display('email') ?>" id="emails" required>
                            </div>
                        </div>
                          <div class="form-group row">
                            <label for="password" class="col-sm-3 col-form-label">
                                <?php echo display('password') ?>
                            *</label>
                            <div class="col-sm-8">
                                <input name="password" class="form-control" type="password" placeholder="<?php echo display('password') ?>" id="password" required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="nid" class="col-sm-3 col-form-label">
                                <?php echo display('nid') ?>
                            *</label>
                            <div class="col-sm-8">
                                <input name="nid" class="form-control" type="text" placeholder="<?php echo display('nid') ?>" id="nid" required>
                            </div>
                        </div>
                         <div class="form-group row">
                            <label for="address" class="col-sm-3 col-form-label">
                                <?php echo display('address') ?>
                            </label>
                            <div class="col-sm-8">
                                <textarea name="address" class="form-control"  placeholder="<?php echo display('address') ?>" id="address"></textarea>
                            </div>
                        </div>
                        <div class="form-group text-center">
                            <button type="reset" class="btn btn-primary w-md m-b-5"><?php echo display('reset') ?></button>
                            <button type="submit" class="btn btn-success">
                                <?php echo display('submit') ?>
                            </button>
                        </div>
                        <?php echo form_close() ?>

                </div>

            </div>
        </div>

    </div>


         <!-- jQuery -->
        <script src="<?php echo base_url('assets/js/jquery-1.12.4.min.js') ?>" type="text/javascript"></script>
        <!-- Bootstrap -->
        <script src="<?php echo base_url('assets/js/bootstrap.min.js') ?>" type="text/javascript"></script>

        <script type="text/javascript">
        $(document).ready(function() { 
            //preloader
            $(window).load(function() {
                $(".se-pre-con").fadeOut("slow");;
            });
        });
        </script>
         
 <script type="text/javascript">
     var checkoutFrm = $("#regform");
     var outputPreview = $('#outputmessage');
     var success = $('#success');
    checkoutFrm.on('submit', function(e) {
        e.preventDefault(); 
        $.ajax({
           method: checkoutFrm.attr('method'),
            url   : checkoutFrm.attr('action'),
            data  :  checkoutFrm.serialize(),
            dataType: 'json',
            success: function(data) 
            {
                if (data.status == true) {
                     outputPreview.removeClass("hide").removeClass("alert-danger").addClass('alert-success').html(data.success);
                      setInterval(function(){
                        $('#login_modal').modal('hide');
                          
                    }, 1000);
                     
                } else {
                     outputPreview.removeClass("hide").removeClass("alert-danger").addClass('alert-danger').html(data.exception);
                }
            },
            error: function(xhr)
            {
                alert('test!');
            }
        });
    });
</script>
<script type="text/javascript">
     var ckform = $("#checkoutFrm");
     var outprev = $('#outputPreview');
     // var success = $('#success');
    ckform.on('submit', function(e) {
        e.preventDefault(); 
        $.ajax({
           method: ckform.attr('method'),
            url   : ckform.attr('action'),
            data  :  ckform.serialize(),
            dataType: 'json',
            success: function(data) 
            {
                if (data.status == true) {
                    outprev.removeClass("hide").removeClass("alert-danger").addClass('alert-success').html(data.success);
                      setInterval(function(){
                
                          
                    }, 1000);
                     
                } else {
                     outprev.removeClass("hide").removeClass("alert-danger").addClass('alert-danger').html(data.exception);
                }
            },
            error: function(xhr)
            {
                alert('test!');
            }
        });
    });
</script>
    </body>
</html>