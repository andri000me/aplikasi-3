<?php 

/**
 * 
 */
class Indekos_model extends CI_Model
{
	private $table1 = "indekos";
	private $table2 = "kriteria";
	private $table3 = "fasilitas";
	private $table4 = "kondisi";

	public function cek_login()
	{
		$username	= set_value('username');
		$password	= set_value('password');
		$result	= $this->db
		->where('username',$username)
		->limit(1)
		->get('user');
		if ($result->num_rows()> 0) {
			return $result->row();
		}else {
			return FALSE;
		}
	}

	public function get_data($table)
	{
		return $this->db->get($table);
	}
	public function get_id($id)
	{
		$this->db->select('*');
		$this->db->from('detail');
		$this->db->where('id', $id);

		return $this->db->get();
		// return $this->db->get($table);
	}


	public function insert_data($data, $table)
	{
		return $this->db->insert($table,$data);
	}

	public function insert_batch($data, $table)
	{
		return $this->db->insert($table,$data);
	}
	public function insert($data, $table)
	{
		return $this->db->insert($table,$data);
	}

}
?>