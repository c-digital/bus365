
<div class="sidebar">
    <!-- Sidebar user panel -->
    <?php if($this->uri->segment(2) !=='User'){?>
    <div class="user-panel text-center">
        <div class="image">
            <?php $image = $this->session->userdata('image') ?>
            <img src="<?php echo base_url((!empty($image)?$image:'assets/img/icons/default.jpg')) ?>" class="img-circle" alt="User Image">
        </div>
        <div class="info">
            <p><?php echo $this->session->userdata('fullname') ?></p>
            <a href="#"><i class="fa fa-circle text-success"></i> <?php echo $this->session->userdata('user_level') ?></a>
        </div>
    </div> 
<?php } ?>



    <!-- sidebar menu -->
    <ul class="sidebar-menu">
        <li class="treeview <?php echo (($this->uri->segment(2)=="home" || $this->uri->segment(2)=="")?"active":null) ?>">
            <a href="<?php echo base_url('dashboard/home') ?>"><i class="ti-home"></i> <span><?php echo display('dashboard')?></span> 
            </a>
        </li>

        <li class="treeview <?php echo (($this->uri->segment(2)=="companies" || $this->uri->segment(2)=="")?"active":null) ?>">
            <a href="<?php echo base_url('dashboard/companies') ?>"><i class="fa fa-building"></i> <span><?php echo display('companies')?></span> 
            </a>
        </li>

        <li class="treeview <?php echo (($this->uri->segment(2)=="sales" || $this->uri->segment(2)=="")?"active":null) ?>">
            <a href="<?php echo base_url('dashboard/sales') ?>"><i class="fa fa-money"></i> <span><?php echo display('sales')?></span> 
            </a>
        </li>

        <li class="treeview <?php echo (($this->uri->segment(2)=="caja" || $this->uri->segment(2)=="")?"active":null) ?>">
            <a href="<?php echo base_url('dashboard/caja') ?>"><i class="fa fa-money"></i> <span><?php echo 'Caja' ?></span> 
            </a>
        </li>

        <li class="treeview <?php echo (($this->uri->segment(2)=="merchandise")?"active":null) ?>">
            <a href="#">
                <i class="fa fa-truck"></i><span><?php echo display('merchandise')?></span>
                <span class="pull-right-container">
                    <i class="fa fa-angle-left pull-right"></i>
                </span>
            </a>
            <ul class="treeview-menu">
                <li><a href="<?php echo base_url('dashboard/merchandise/create') ?>"><?php echo display('add_merchandise')?></a></li>
                <li><a href="<?php echo base_url('dashboard/merchandise/index') ?>"><?php echo display('list_merchandise')?></a></li> 
                <li><a href="<?php echo base_url('dashboard/merchandise/pricePerKg') ?>"><?php echo display('price_per_kg')?></a></li> 
            </ul>
        </li>
      
<?php if($this->uri->segment(2) !=='User'){?>
  


        <!-- *************************************
        **********STATS OF CUSTOM MODULES*********
        ************************************* -->
        <?php  
        $path = 'application/modules/';
        $map  = directory_map($path);


        $HmvcMenu   = array();
        if (is_array($map) && sizeof($map) > 0)
        foreach ($map as $key => $value) {
            $menu = str_replace("\\", '/', $path.$key.'config/menu.php');

            if (file_exists($menu)) {
                @include($menu);
            }  
        }   


        if(isset($HmvcMenu) && $HmvcMenu!=null && sizeof($HmvcMenu) > 0)

        foreach ($HmvcMenu as $moduleName => $moduleData) {

            // check module permission 
            if (file_exists(APPPATH.'modules/'.$moduleName.'/assets/data/env'))
            if ($this->permission->module($moduleName)->access()) {

            $this->permission->module($moduleName)->access();
        ?>

                <li class="treeview <?php echo (($this->uri->segment(1)==$moduleName)?"active":null) ?>">
                    
                    <a href="javascript:void(0)">
                        <?php echo (($moduleData['icon']!=null)?$moduleData['icon']:null) ?> <span><?php echo display($moduleName) ?></span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a> 

                    <ul class="treeview-menu">  
                        <?php foreach ($moduleData as $groupLabel => $label) {?>
                            <?php   

                            if ($groupLabel!='icon') 

                            if ((isset($label['controller']) && $label['controller']!=null) && ($label['method']!=null)) {

                               if($this->permission->check_label($groupLabel)->access()){
                                //if ($this->permission->method($moduleName,$label['permission'])->access()) {  
                
                            ?> 
                                <!-- single level menu/link -->
                                <li class="<?php echo (($this->uri->segment(1)==$moduleName && $this->uri->segment(2)==$label['controller'])?"active":null) ?>">
                                    <a href="<?php echo base_url($moduleName."/".$label['controller']."/".$label['method']) ?>"><?php echo display($groupLabel) ?></a>
                                </li>

                            <?php 
                                } 

                            } else { 
                         
                            ?>

                            <!-- multilevel menu/link -->
                            <!-- extract $label to compare with segment -->
                            <?php 
                            if($this->permission->check_label($groupLabel)->access()){
                            
                            foreach ($label as $url) 
                               
                            ?>
                                <li class="<?php echo (($this->uri->segment(2)==$url['controller'])?"active":null) ?>">
                                    <a href="#"><?php echo display($groupLabel) ?>
                                        <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
                                    </a>
                                    <ul class="treeview-menu <?php echo (($this->uri->segment(2)==$url['controller'])?"menu-open":null) ?>"> 
                                        <?php 
                                        foreach ($label as $name => $value) {

                                            if($this->permission->check_label($name)->access()){
                                            // if ($this->permission->method($moduleName,$value['permission'])->access()) {  
                                            ?>
                                            <li class="<?php echo (($this->uri->segment(3)==$value['method'])?"active":null) ?>"><a href="<?php echo base_url($moduleName."/".$value['controller']."/".$value['method']) ?>"><?php echo display($name) ?></a></li>
                                            <?php 
                                            } //endif
                                        } //endforeach
                                        ?> 
                                    </ul>
                                </li> 
                            <?php } ?>    

                            <!-- endif -->
                            <?php } ?>

                        <!-- endforeach -->
                        <?php } ?>

                        <?php if ($moduleName == 'reports'): ?>
                            <li class="<?php echo (($this->uri->segment(1)=='reports' && $this->uri->segment(2)=='cash')?"active":null) ?>">
                                <a href="/reports/cash"><?php echo display('cash') ?></a>
                            </li>

                            <li class="<?php echo (($this->uri->segment(1)=='reports' && $this->uri->segment(2)=='sales')?"active":null) ?>">
                                <a href="/reports/sales"><?php echo display('sales') ?></a>
                            </li>

                            <li class="<?php echo (($this->uri->segment(1)=='reports' && $this->uri->segment(2)=='passengers')?"active":null) ?>">
                                <a href="/reports/passengers"><?php echo display('passengers') ?></a>
                            </li>

                            <li class="<?php echo (($this->uri->segment(1)=='reports' && $this->uri->segment(2)=='tickets')?"active":null) ?>">
                                <a href="/reports/tickets"><?php echo display('ticket_sold_by_company') ?></a>
                            </li>

                            <li class="<?php echo (($this->uri->segment(1)=='reports' && $this->uri->segment(2)=='tickets')?"active":null) ?>">
                                <a href="/reports/salesByCompany"><?php echo display('sales_by_company') ?></a>
                            </li>
                        <?php endif; ?>
                    </ul>
                </li> 
            <!-- end if -->
            <?php } ?>
        <!-- end foreach -->
        <?php } ?> 
        <!-- *************************************
        **********ENDS OF CUSTOM MODULES*********
        ************************************* -->

        <li class="header">Default </li>

        <?php if($this->session->userdata('isAdmin')) { ?>
        <li class="treeview <?php echo (($this->uri->segment(2)=="user")?"active":null) ?>">
            <a href="#">
                <i class="ti-user"></i><span><?php echo display('user')?></span>
                <span class="pull-right-container">
                    <i class="fa fa-angle-left pull-right"></i>
                </span>
            </a>
            <ul class="treeview-menu">
                <li><a href="<?php echo base_url('dashboard/user/form') ?>"><?php echo display('add_user')?></a></li>
                <li><a href="<?php echo base_url('dashboard/user/index') ?>"><?php echo display('user_list')?></a></li> 
            </ul>
        </li>
    <!--     <li class="treeview <?php echo (($this->uri->segment(2)=="module")?"active":null) ?>">
            <a href="#">
                <i class="pe-7s-box2"></i><span><?php echo display('module')?></span>
                <span class="pull-right-container">
                    <i class="fa fa-angle-left pull-right"></i>
                </span>
            </a>
            <ul class="treeview-menu">
                <li><a href="<?php echo base_url('dashboard/module/install') ?>"><?php echo display('add_module')?></a></li>
                <li><a href="<?php echo base_url('dashboard/module/index') ?>"><?php echo display('module_list')?></a></li> 
            </ul>
        </li> -->
        <li class="treeview <?php echo (($this->uri->segment(2)=="role")?"active":null) ?>">
            <a href="#">

                <i class="ti-lock"></i><span><?php echo display('role_permission')?></span>
                <span class="pull-right-container">
                    <i class="fa fa-angle-left pull-right"></i>
                </span>
            </a>
            <ul class="treeview-menu">
                <li><a href="<?php echo base_url('dashboard/permission_setup') ?>"><?php echo display('permission_setup')?></a></li> 
                <li><a href="<?php echo base_url('dashboard/role/create_system_role') ?>"><?php echo display('add_role')?></a></li>
                  <li><a href="<?php echo base_url('dashboard/role/role_list') ?>"><?php echo display('role_list')?></a></li>
                  <li><a href="<?php echo base_url('dashboard/role/user_access_role') ?>"><?php echo display('user_access_role')?></a></li>
               <!--  <li><a href="<?php echo base_url('dashboard/module_permission/create') ?>"><?php echo display('add_module_permission')?></a></li>
                <li><a href="<?php echo base_url('dashboard/module_permission/index') ?>"><?php echo display('module_permission_list')?></a></li>  -->
            </ul>
        </li>

        <li class="treeview <?php echo (($this->uri->segment(2)=="language")?"active":null) ?>">
            <a href="<?php echo base_url('dashboard/language') ?>"><i class="ti-flag-alt"></i> <span><?php echo display('language')?></span> 
            </a>
        </li>

        <li class="treeview <?php echo (($this->uri->segment(2)=="backup_restore")?"active":null) ?>">
            <a href="<?php echo base_url('dashboard/backup_restore/index') ?>"><i class="fa fa-database"></i> <span><?php echo display('backup_and_restore') ?></span> 
            </a>
        </li>

        <li class="treeview <?php echo (($this->uri->segment(2)=="setting")?"active":null) ?>">
            <a href="<?php echo base_url('dashboard/setting') ?>"><i class="ti-settings"></i> <span><?php echo display('application_setting')?></span> 
            </a>
        </li>
        <?php } ?>
        <!-- ends of admin area -->



        <?php if($this->session->userdata('isLogIn')): ?>
        <li class="treeview <?php echo (($this->uri->segment(2)=="message")?"active":null) ?>">
            <a href="#">
                <i class="ti-comments"></i><span><?php echo display('message')?></span>
                <span class="pull-right-container">
                    <i class="fa fa-angle-left pull-right"></i>
                </span>
            </a>
            <ul class="treeview-menu">
                <li><a href="<?php echo base_url('dashboard/message/new_message') ?>"><?php echo display('new')?></a></li>
                <li><a href="<?php echo base_url('dashboard/message/index') ?>"><?php echo display('inbox')?></a></li>
                <li><a href="<?php echo base_url('dashboard/message/sent') ?>"><?php echo display('sent')?></a></li> 
            </ul>
        </li>       
        <?php endif; ?>
       <?php } ?>
  
    </ul> 
</div> <!-- /.sidebar -->