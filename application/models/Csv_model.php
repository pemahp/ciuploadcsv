<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Csv_model extends CI_Model {
	
	public function insert($table_name='',  $data=''){
		$query=$this->db->insert($table_name, $data);
		 // $this->db->last_query(); die();
		if($query)
			$this->db->insert_id(); 
		else
			return FALSE;		
	}
}
