<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Check extends MX_Controller
{

	public function __construct()
	{
		parent::__construct();	 
	}

    public function index()
    {
        $ticket = $_POST['ticket'];
        return redirect('/website/Paypal/local_success/' . $ticket);
    }
}
