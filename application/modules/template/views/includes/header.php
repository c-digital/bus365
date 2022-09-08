<?php if($this->uri->segment(2) !=='User'){?>
<a href="<?php echo base_url('dashboard/home') ?>" class="logo"> 
    <span class="logo-lg">
        <img src="<?php echo base_url((!empty($setting->logo)?$setting->logo:'assets/img/icons/mini-logo.png')) ?>" alt="">
    </span>
</a>
<?php }else{ ?>
 <span class="logo-lg">
        <img src="<?php echo base_url((!empty($setting->logo)?$setting->logo:'assets/img/icons/mini-logo.png')) ?>" alt="">
    </span>
<?php } ?>
<!-- Header Navbar -->
<nav class="navbar navbar-static-top">
    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button"> <!-- Sidebar toggle button-->
        <span class="sr-only">Toggle navigation</span>
        <span class="pe-7s-keypad"></span>
    </a>
    <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
            <!-- fitness period notice start-->
             <?php if($this->permission->method('fitness','read')->access()): ?>
             <li class="dropdown messages-menu">
                 <a href="<?php echo base_url("fitness/fitness_controller/create_fit_period") ?>">
                    <i class="fa fa-cogs"></i>
                    <span class="label label-success"><?php echo (!empty($fitness->expire)?$fitness->expire:0) ?></span>
                </a>
              
            </li> 
            <?php endif; ?>
            <!-- fitness period notice end -->
        <!-- Ticket Notice Start-->
         <?php if($this->permission->method('ticket','read')->access()): ?>
              <li class="dropdown messages-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <i class="fa fa-ticket"></i>
                    <span class="label label-success"><?php echo (!empty($booking_not->booked_n)?$booking_not->booked_n:0) ?></span>
                </a>
                <ul class="dropdown-menu">
                    <li>
                        <ul class="menu"><table class="table table-hover">
                            <thead>
                                <tr><th><?php echo display('passenger_id');?></th><th><?php echo display('no_o_ticket');?></th>
                                    <th><?php echo display('amount');?></th><th><?php echo display('route');?></th></tr>
                            </thead><tbody>
                            <?php if(!empty($booking_details)) ?>
                            <?php foreach($booking_details as $booking) { ?>

                            <li><!-- start message -->
                               
                                 <tr>

                                <td><a href="<?php echo base_url("dashboard/notice/booking_notice/$booking->id") ?>"><?php echo $booking->passenger_id;?> </a></td>
                                 <td> <a href="<?php echo base_url("dashboard/notice/booking_notice/$booking->id") ?>"><?php echo $booking->no_tkts;?> </a></td>
                                 <td> <a href="<?php echo base_url("dashboard/notice/booking_notice/$booking->id") ?>"><?php echo $booking->amount;?> </a></td>
                                    <td><a href="<?php echo base_url("dashboard/notice/booking_notice/$booking->id") ?>"><?php echo $booking->name;?> </a></td>
                                </tr>
                               
                            </li>
                            <?php } ?> 
                            </tbody>
                            </table>
                        </ul>
                    </li>
                    <li class="footer"><a href="<?php echo base_url('dashboard/notice/sea_all') ?>"><?php echo display('see_all') ?></a></li>
                </ul>
            </li> 
            <?php endif; ?>
            <!-- Ticket Notice End-->
             <!-- Bus Notice Start-->
              <?php if($this->permission->method('trip','read')->access()): ?>
             <li class="dropdown messages-menu">
                 <a href="<?php echo base_url("trip/assign/index") ?>">
                    <i class="fa fa-bus"></i>
                    <span class="label label-success"><?php echo (!empty($bus->total)?$bus->total:0) ?></span>
                </a>
              
            </li> 
            <?php endif; ?>
             <!-- Bus Notice End-->
              <!-- Message Notice Start-->
            <li class="dropdown messages-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <i class="pe-7s-mail"></i>
                    <span class="label label-success"><?php echo (!empty($notifications->total)?$notifications->total:0) ?></span>
                </a>
                <ul class="dropdown-menu">
                    <li>
                        <ul class="menu">
                            <?php if(!empty($quick_messages)) ?>
                            <?php foreach($quick_messages as $message) { ?>
                            <li><!-- start message -->
                                <a href="<?php echo base_url("dashboard/message/inbox_information/$message->id") ?>">
                                    <div class="pull-left"><img src="<?php echo base_url('assets/img/icons/default.jpg') ?>" class="img-circle" alt="User Image"></div>
                                    <h4><?php echo (!empty($message->sender_name)?$message->sender_name:null) ?><small><i class="fa fa-clock-o"></i> <?php echo (!empty($message->datetime)?$message->datetime:null) ?></small></h4>
                                    <p><?php echo character_limiter((!empty($message->message)?strip_tags($message->message):null), 30) ?></p>
                                </a>
                            </li>
                            <?php } ?> 
                        </ul>
                    </li>
                    <li class="footer"><a href="<?php echo base_url('dashboard/message/index') ?>"><?php echo display('see_all_message') ?></a></li>
                </ul>
            </li> 
            <!-- settings -->
            <li class="dropdown dropdown-user">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="pe-7s-settings"></i></a>

                <ul class="dropdown-menu">
                    <?php if($this->uri->segment(2) !=='User'){?>
                    <li><a href="<?php echo base_url('dashboard/home/profile') ?>"><i class="pe-7s-users"></i> <?php echo display('profile') ?></a></li>
                    <li><a href="<?php echo base_url('dashboard/home/setting') ?>"><i class="pe-7s-settings"></i> <?php echo display('setting') ?></a></li>
                    <li><a href="<?php echo base_url('logout') ?>"><i class="pe-7s-key"></i>  <?php echo display('logout') ?></a></li>
                    <?php }else{?>
                    <li><a href="<?php echo base_url('pass_logout') ?>"><i class="pe-7s-key"></i>  <?php echo display('logout') ?></a></li>
                    <?php } ?>
                </ul>
            </li>
        </ul>
    </div>
   
</nav>