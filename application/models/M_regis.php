<?php 

class M_regis extends CI_Model 
{
	
	public function __construct()
	{
        parent::__construct();
	}
 
	function register($user,$pass,$nama)
	{
	$data_user = array(
                'user' => $user,
                'pass' => password_hash($pass, PASSWORD_DEFAULT),
                'level' => 'Anggota',
                'nama' => $nama,
                'tgl_bergabung'=>date('Y-m-d'),
                'foto' => 'default.jpg'
	);
		$this->db->insert('tbl_login',$data_user);
	}
}
?>