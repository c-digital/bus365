<?php
defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title><?php echo (!empty($appSetting->title)?$appSetting->title:null) ?> - <?php echo (!empty($title)?$title:null) ?></title>

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="<?php echo base_url((!empty($appSetting->favicon)?$appSetting->favicon:'application/modules/website/assets/images/favicon.jpg')) ?>" type="image/x-icon">

        <link href="https://fonts.googleapis.com/css?family=Kaushan+Script|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

        <link href="<?php echo base_url('application/modules/website/assets/css/jquery-ui.min.css') ?>" rel="stylesheet" type="text/css"/>
        <link href="<?php echo base_url('application/modules/website/assets/css/bootstrap.min.css') ?>" rel="stylesheet" type="text/css"/>
        <link href="<?php echo base_url('application/modules/website/assets/css/bootsnav.css') ?>" rel="stylesheet" type="text/css"/>
        <link href="<?php echo base_url('application/modules/website/assets/font-awesome/css/font-awesome.min.css') ?>" rel="stylesheet" type="text/css"/>
        <link href="<?php echo base_url('application/modules/website/assets/css/flaticon.css') ?>" rel="stylesheet" type="text/css"/>
        
        <link href="<?php echo base_url('application/modules/website/assets/owl-carousel/owl.carousel.css') ?>" rel="stylesheet" type="text/css"/>
        <link href="<?php echo base_url('application/modules/website/assets/owl-carousel/owl.theme.css') ?>" rel="stylesheet" type="text/css"/>
        <link href="<?php echo base_url('application/modules/website/assets/owl-carousel/owl.transitions.css') ?>" rel="stylesheet" type="text/css"/>
        <link href="<?php echo base_url('application/modules/website/assets/css/ion.rangeSlider.css') ?>" rel="stylesheet" type="text/css"/>
        <link href="<?php echo base_url('application/modules/website/assets/css/ion.rangeSlider.skinFlat.css') ?>" rel="stylesheet" type="text/css"/> 
        <link href="<?php echo base_url('application/modules/website/assets/css/rating.min.css') ?>" rel="stylesheet" type="text/css"/> 
        <link href="<?php echo base_url('application/modules/website/assets/css/select2.min.css') ?>" rel="stylesheet" type="text/css"/> 
        <link href="<?php echo base_url('application/modules/website/assets/css/website.css') ?>" rel="stylesheet" type="text/css"/> 
        <link href="<?php echo base_url('application/modules/website/assets/css/style.css') ?>" rel="stylesheet" type="text/css"/> 

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

        
        <script src="<?php echo base_url('application/modules/website/assets/js/jquery.min.js') ?>" type="text/javascript"></script>
    </head>
    <body>
        <div class="se-pre-con"></div>

        <!-- Start Navigation -->
        <nav class="navbar navbar-default bootsnav">
            <div class="container"> 
                <!-- Start Header Navigation -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
                        <i class="fa fa-bars"></i>
                    </button>
                    <a class="navbar-brands" href="<?php echo base_url('website') ?>"><img src="<?php echo base_url((!empty($appSetting->logo)?$appSetting->logo:'application/modules/website/assets/images/logo.png')) ?>" class="logo" alt=""></a>
                </div>
                <!-- End Header Navigation -->
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="navbar-menu">
                    <ul class="nav navbar-nav navbar-right" data-in="fadeInDown" data-out="fadeOutUp">
                        <li class="dropdown dropdown-user">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><?php 
             if(empty($this->session->userdata('id_no'))){
                echo display('login');
             }else{
               echo  $username=$this->session->userdata('firstname');
             }

                 ?></a>
                <ul class="dropdown-menu">
                    <?php if(empty($this->session->userdata('id_no'))){ ?>
                    <li><a href="<?php echo base_url('mobile/userlog') ?>"><i class="pe-7s-users"></i> User Login</a></li>
                    <li><a href="<?php echo base_url('mobile/login') ?>"><i class="pe-7s-settings"></i> Admin Login</a></li>
                    <?php }else{ ?>
                    <li><a href="<?php echo base_url('pass_logout') ?>"><i class="pe-7s-key"></i>  <?php echo display('logout') ?></a></li>
                    <?php } ?>
                </ul>
            </li>

<li> <?= form_dropdown('language',$languageList,$appSetting->language, ' id="language"') ?></li>
          

                    </ul>
                </div><!-- /.navbar-collapse -->
                <div></div>
            </div>   
        </nav>
        <!-- End Navigation -->


        
        <!-- Main content -->
        <div class="content"> 
            <!-- load custom page -->
            <?php echo $this->load->view($module.'/'.$page) ?>


            <!-- load messages -->
            <div id="output" class="hide col-sm-12 alert"></div>
        </div> <!-- /.content -->


        <a name="customer_service"></a>

        <script src="<?php echo base_url('application/modules/website/assets/js/jquery-ui.min.js') ?>" type="text/javascript"></script> 
        <script src="<?php echo base_url('application/modules/website/assets/js/bootstrap.min.js') ?>" type="text/javascript"></script> 
        <script src="<?php echo base_url('application/modules/website/assets/js/jquery.slimscroll.min.js') ?>" type="text/javascript"></script>
<!--         <script src="<?php echo base_url('application/modules/website/assets/js/datepicker.min.js') ?>" type="text/javascript"></script>
        <script src="<?php echo base_url('application/modules/website/assets/js/datepicker.en.js') ?>" type="text/javascript"></script>  -->
        <script src="<?php echo base_url('application/modules/website/assets/owl-carousel/owl.carousel.min.js') ?>" type="text/javascript"></script>
        <script src="<?php echo base_url('application/modules/website/assets/js/jquery.counterup.min.js') ?>" type="text/javascript"></script>
        <script src="<?php echo base_url('application/modules/website/assets/js/waypoints.js') ?>" type="text/javascript"></script>
        <script src="<?php echo base_url('application/modules/website/assets/js/ion.rangeSlider.min.js') ?>" type="text/javascript"></script>
        <script src="<?php echo base_url('application/modules/website/assets/js/jquery.easing.min.js') ?>" type="text/javascript"></script>
        <script src="<?php echo base_url('application/modules/website/assets/js/rating.min.js') ?>" type="text/javascript"></script>
        <script src="<?php echo base_url('application/modules/website/assets/js/select2.min.js') ?>" type="text/javascript"></script> 
        <script src="<?php echo base_url('assets/website.js') ?>" type="text/javascript"></script> 
        <script src="<?php echo base_url('application/modules/website/assets/js/script.js') ?>" type="text/javascript"></script>

        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-steps/1.1.0/jquery.steps.min.js" integrity="sha512-bE0ncA3DKWmKaF3w5hQjCq7ErHFiPdH2IGjXRyXXZSOokbimtUuufhgeDPeQPs51AI4XsqDZUK7qvrPZ5xboZg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script> 


        <script type="text/javascript">
        $(document).ready(function() {
            $( ".datepicker" ).datepicker();
            //RATING FORM
            var output    = $("#output");
            var ratingFrm = $("#ratingFrm");
            ratingFrm.submit(function(e) {
                e.preventDefault();

                $.ajax({
                    url    : $(this).attr('action'),
                    method : $(this).attr('method'),
                    dataType : 'json',
                    data   : $(this).serialize(),
                    success: function(data)
                    {
                        if (data.status == true)
                        {
                            output.removeClass('hide alert-danger').addClass('alert-success').html(data.success); 
                             document.getElementById('r_booking_id').value = '';
                            document.getElementById('r_name').value = '';
                            document.getElementById('r_comments').value = '';
                        } else {
                            output.removeClass('hide alert-success').addClass('alert-danger').html(data.exception); 
                        }
                    },
                    error: function(xhr)
                    {
                        alert('failed!');
                    }
                });
            });



            //ENQUIRY FORM
            var enquiryFrm = $("#enquiryFrm");
            enquiryFrm.submit(function(e) {
                e.preventDefault();

                $.ajax({
                    url    : $(this).attr('action'),
                    method : $(this).attr('method'),
                    dataType : 'json',
                    data   : $(this).serialize(),
                    success: function(data)
                    {
                        if (data.status == true)
                        {

                            output.removeClass('hide alert-danger').addClass('alert-success').html(data.success); 
                            document.getElementById('en_enquiry').value = '';
                            document.getElementById('en_name').value = '';
                            document.getElementById('en_phone').value = '';
                            document.getElementById('en_email').value = '';
                        } else {
                            output.removeClass('hide alert-success').addClass('alert-danger').html(data.exception); 
                        }
                    },
                    error: function(xhr)
                    {
                        alert('failed!');
                    }
                });
            });


            // select 2 dropdown 
            $("select.select2:not(.dont-select-me)").select2({
                placeholder: "Select option",
                allowClear: true
            });  

            //preloader
            $(window).load(function() {
                $(".se-pre-con").fadeOut("slow");
            });


        });



        //print a div
        function printContent(el){
            var restorepage  = $('body').html();
            var printcontent = $('#' + el).clone();
            $('body').empty().html(printcontent);
            window.print();
            $('body').html(restorepage);
            location.reload();
        }


$(document).ready(function() {
         $("#r_booking_id").on('keyup',function() {
         var booking_id = $("#r_booking_id").val();
        $.ajax({
            url : "<?php echo site_url('website/website/rating_passinfo/')?>" + booking_id,
        type: "GET",
        dataType: "JSON",
            success: function(data) {
                  $("#r_name").val(data);
            },
            error: function(e)
            {
                alert('failed!');
            }
        });
    });
            });
// language  change
$(document).ready(function() {
         $("#language").on('change',function() {
         var id = this.value;
        $.ajax({
            url : "<?php echo site_url('website/website/language_setup/')?>" + id,
            type: "GET",
            dataType: "JSON",
            success: function(data) {
                window.location.reload();
            },
            error: function(e)
            {
                alert('failed!');
            }
        });
    });
            });
        </script>
    </body> 

    <div class="modal" tabindex="-1" id="check-ticket" role="dialog">
      <div class="modal-dialog" role="document">
        <div class="modal-content modal-sm">
            <?php echo form_open('/website/Check', ['method' => 'POST']) ?>
              <div class="modal-header">
                <h5 class="modal-title"><?php echo display('check_ticket'); ?></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                <label for=""><?php echo display('enter_ticket_to_check') ?></label>
                <input type="text" class="form-control" name="ticket" required>
              </div>
              <div class="modal-footer">
                <button type="submit" class="btn btn-primary"><?php echo display('check') ?></button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal"><?php echo display('close1') ?></button>
              </div>
            </form>
        </div>
      </div>
    </div>
</html>
