<div class="clearfix"></div>
<div class="main-search-container" style="background-image: url(<?php echo base_url('application/modules/website/assets/images/bg.jpg') ?>)">
    <div class="main-search-inner">
        <div class="container">
            <div class="row">
                <div id="offer" style="margin-top: 30px" class="owl-carousel owl-theme">
                        <?php 
                        if (!empty($offers)) { 
                            foreach ($offers as $offer) { 
                            echo "<div class=\"item\"><img src=".base_url($offer->image)." class=\"img-responsive\" alt=\"\"></div>";
                            } 
                        } 
                        ?>  
                    </div>

                <div class="col-sm-4">
                    <div class="home-form form-block">
                        <h3 class="form-block_title"><?php echo display('search_tour'); ?></h3>
                        <div class="form-block_des"><?php echo display('find_dream'); ?></div>
                       
                        <form action="<?php echo base_url('mobile/search') ?>"  style="padding:29px 0">
                            <div class="form-group custom-select">
                                <?php echo form_dropdown('start_point', $location_dropdown, $search->start_point, array('class'=>'select2 form-control','required'=>'required', 'data-placeholder'=>display('start_point')) ) ?> 
                                <i class="fa fa-map-marker"></i>
                            </div>
                            <div class="form-group custom-select">
                                <?php echo form_dropdown('end_point', $location_dropdown, $search->end_point, array('class'=>'select2 form-control','required'=>'required', 'data-placeholder'=>display('end_point')) ) ?> 
                                <i class="fa fa-map-marker"></i>
                            </div>
                            <div class="form-group">
                                <input type='text' name="date" class='form-control datepicker' placeholder="<?php echo display('date') ?>" required="required" value="<?php echo $search->date ?>" autocomplete="off">
                                <i class="fa fa-calendar"></i>
                            </div>
                            <div class="form-group custom-select">
                                <?php echo form_dropdown('fleet_type', $fleet_dropdown, $search->fleet_type, array('class'=>'select2 form-control','required'=>'required', 'data-placeholder'=>display('fleet_type')) ) ?> 
                                <i class="fa fa-car"></i>
                            </div>

                            <button type="submit" class="btn btn-block"><?php echo display('find_now'); ?></button>
                        </form>
                    </div>
                </div>  



                <div class="col-sm-8">
                    <div class="header-title-inner">
                        <h2><?php echo display('travel_slogan'); ?></h2>
                        <h4><?php echo display('travel_sub_slogan'); ?></h4>
                    </div>
                    <div class="row counter-inner hidden-sm">
                        <div class="col-sm-4">
                            <div class="counter-content">
                                <div class="border">
                                    <div class="counter-icon">
                                        <i class="fa fa-users" style="line-height:34px;"></i>
                                    </div>
                                </div>
                                <h6><?php echo display('total_passenger') ?></h6> 
                                <p class="count-number">
                                    <?php echo (!empty($notifications->passenger->total)?$notifications->passenger->total:0) ?>    
                                </p>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="counter-content">
                                <div class="border">
                                    <div class="counter-icon">
                                        <i class="flaticon-bus"></i>
                                    </div>
                                </div>
                                <h6><?php echo display('total_fleet') ?></h6> 
                                <p class="count-number">
                                    <?php echo (!empty($notifications->fleet->total)?$notifications->fleet->total:0) ?>    
                                </p>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="counter-content">
                                <div class="border">
                                    <div class="counter-icon">
                                        <i class="flaticon-road-perspective-of-curves"></i>
                                    </div>
                                </div>
                                <h6><?php echo display('todays_trip') ?></h6> 
                                <p class="count-number">
                                    <?php echo (!empty($notifications->trip->total)?$notifications->trip->total:0) ?>    
                                </p>
                            </div>
                        </div>
                    </div>



                    
                </div>


            </div>
        </div>
    </div>
</div> 