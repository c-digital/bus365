<?php

// module name
$HmvcMenu["trip"] = array(
    //set icon
    "icon"           => "<i class='fa fa-road'></i>", 

    // location
    "location" => array( 
        'add_location'    => array( 
            "controller" => "location",
            "method"     => "form",
            "permission" => "create"
        ), 
        'location_list'  => array( 
            "controller" => "location",
            "method"     => "index",
            "permission" => "read"
        ), 
    ), 

    // route
    "route" => array( 
        'add_route'    => array( 
            "controller" => "route",
            "method"     => "form",
            "permission" => "create"
        ), 
        'route_list'  => array( 
            "controller" => "route",
            "method"     => "index",
            "permission" => "read"
        ), 
    ), 

    "shedules" => array(

        'add_shedule' => array(
        'controller'  => "shedule",
        'method'      => 'add_shedule',
        'permission'  => 'create'
        ),
        'shedule_list' => array(
        'controller'  => "shedule",
        'method'      => 'shedule_list',
        'permission'  => 'create'
        ),
    ),
   "trips" => array(

        'add_trip' => array(
        'controller'  => "trip",
        'method'      => 'form',
        'permission'  => 'create'
        ),
        'trip_list' => array(
        'controller'  => "trip",
        'method'      => 'index',
        'permission'  => 'read'
        ),
    ),

    // assign
    "assigns" => array( 
        'add_assign'    => array( 
            "controller" => "assign",
            "method"     => "form",
            "permission" => "create"
        ), 
        'assign_list'  => array( 
            "controller" => "assign",
            "method"     => "index",
            "permission" => "read"
        ), 
    ), 

    // close
    "close" => array(  
        'close_list'  => array( 
            "controller" => "close",
            "method"     => "index",
            "permission" => "read"
        ), 
    ), 
  
);
   

 