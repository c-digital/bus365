<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Company_model extends CI_Model
{
	public $table = 'companies';

	public function read()
	{
		return $this->db->select("*")
			->from($this->table)
			->order_by('type','asc')
			->get()
			->result();
	}
}
 