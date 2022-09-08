<?php

// module name
$HmvcMenu["website"] = array(
    //set icon
    "icon"           => "<i class='fa fa-globe'></i>", 

   'websites'  => array( 
        "controller" => "website",
        "method"     => "index",
        "permission" => "read"
    ), 

    // setting
    'web_setting'  => array( 
        "controller" => "setting",
        "method"     => "form",
        "permission" => "update"
    ), 
   
    // Email configuration
    'email_configue'  => array( 
        "controller" => "emails",
        "method"     => "form",
        "permission" => "update"
    ), 
    // offer
    'ticket_offer'  => array( 
        "controller" => "setting",
        "method"     => "offer",
        "permission" => "update"
    ),  
);
   

 