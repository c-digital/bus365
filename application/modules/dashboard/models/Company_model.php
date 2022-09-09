<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Company_model extends CI_Model
{
	public $table = 'companies';

	public function read()
	{
		return $this->db->select("*")
			->from($this->table)
			->order_by('id','desc')
			->get()
			->result();
	}

	public function create($data)
	{
		return $this->db->insert($this->table, $data);
	}

	public function findById($id)
	{
		return $this->db->select("*")
			->from($this->table)
			->where('id', $id) 
			->get()
			->row();
	}

	public function update($data)
	{
		return $this->db->where('id',$data['id'])
			->update($this->table, $data); 
	}

	public function delete($id)
	{
		return $this->db->where('id', $id)
			->delete($this->table);
	}
}
 