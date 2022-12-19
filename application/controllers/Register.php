<?php
defined('BASEPATH') OR exit('No direct script access allowed');
defined('BASEPATH') OR exit('No direct script access allowed');
 
class Register extends CI_Controller {
 
	function __construct()
	{
		parent::__construct();
		$this->load->model('M_regis');
	}
 
	public function index()
	{
		$this->data['title_web'] = 'Register | Sistem Informasi Perpustakaan';
		$this->load->view('register_view',$this->data);
	}
 
	public function proses()
	{
        $this->form_validation->set_rules('user', 'user','trim|required|min_length[1]|max_length[255]|is_unique[tbl_login.user]');
		$this->form_validation->set_rules('pass', 'pass','trim|required|min_length[1]|max_length[255]');
		$this->form_validation->set_rules('nama', 'nama','trim|required|min_length[1]|max_length[255]');
		if ($this->form_validation->run()==true)
	   	{
			$user = $this->input->post('user');
			$pass = $this->input->post('pass');
			$nama = $this->input->post('nama');
			$this->M_regis->register($user,$pass,$nama);
			$this->session->set_flashdata('success_register','Proses Pendaftaran User Berhasil');
			redirect('login');
		}
		else
		{
			$this->session->set_flashdata('error', validation_errors());
			redirect('register');
		}
	}
}
?>