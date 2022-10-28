<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends MX_Controller {
 	
 	public function __construct()
 	{
 		parent::__construct();
 	}

	public function user_info()
	{	
		extract($_POST);

		$user = $this->db->query("SELECT * FROM users_app WHERE role = 'user' AND email = '$email' AND password = '$password'")->row();

		if (isset($user->id)) {
			$_SESSION['auth'] = $user;
			return redirect('/');
		}

		$this->session->set_flashdata('exception', display('incorrect_email_or_password'));
		return redirect('/mobile/userlog');
	}
}
