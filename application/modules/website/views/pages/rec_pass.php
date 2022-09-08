<div class="clearfix"></div>
 
<section class="testimonial_inner">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <h2 class="block-title" style="color: red"><?php echo display('recovery_password') ?></h2>
             
<div class="login-wrapper"> 
            <div class="container-center">
                <div class="panel panel-bd">
                    <div class="panel-heading">
                        <div class="view-header">
                            <div class="header-icon">
                                <i class="pe-7s-unlock"></i>
                            </div>
                            <div class="header-title">
                                <h3><?php echo (!empty($setting->title)?$setting->title:null) ?></h3>
                                <small><strong>Recovery Password</strong></small>
                            </div>
                        </div>
                    </div>


                    <div class="panel-body">
                        <?php echo form_open('dashboard/auth/recovery_pass_update/', array('class' => 'row', 'id'=>'checkoutFrm')) ?>
                            <div class="form-group">
                                <label class="control-label" for="password">Enter Your New Password</label>
                                <input type="password" placeholder="New Password" name="new_password" id="new_password" class="form-control">
                                 <input type="hidden"  name="rec_password" value="<?php echo $recpass;?>" class="form-control"> 
                            </div>
                           
                           
                            <div> 
                                <button  type="submit" class="btn btn-success"><?php echo display('send') ?></button> 
                            </div>
                       <?php echo form_close() ?>
                    </div>
                </div>
            </div>
        </div>



            </div>
        </div>
    </div>
</section>
 