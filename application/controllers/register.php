<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Register extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
        $this->load->model('indekos_model');
        $this->load->library('form_validation');
    }

	public function index()
	{
		$data['level']= $this->indekos_model->get_data('level')->result();
		$this->load->view('register',$data);
		
	}

	public function register_aksi()
	{
		$this->_rules();
		if ($this->form_validation->run() == FALSE) {
			$this->load->view('register');
		}else{

			$username				= $this->input->post('username');
			$alamat					= $this->input->post('alamat');
			$telepon				= $this->input->post('telepon');
			$email					= $this->input->post('email');
			$password				= md5($this->input->post('password'));
			$id_level				= $this->input->post('id_level');

			$data = array (
				'username'			=> $username,
				'id_level'			=> $id_level,
				'alamat'			=> $alamat,
				'telepon'			=> $telepon,
				'email'				=> $email,
				'password'			=> $password,

			);

			$this->indekos_model->insert_data($data, 'user'); 
			$this->session->set_flashdata ('pesan', '<div class = "alert alert-success alert-dismissible fade show" Role- "Alert"> Berhasil Mendaftar, Silahkan Login!. 
				<button Type="Button" class = "close" data-dismiss = "alert" aria-label- "Close"> 
				</button> 
				</div>'); 
			redirect ('auth/login');
		}

	}

	public function _rules() 
	{
	$this->form_validation->set_rules('username', 'username','required'); 
	$this->form_validation->set_rules('id_level', 'id_level','required'); 
	$this->form_validation->set_rules('alamat', 'alamat', 'required'); 
	$this->form_validation->set_rules('telepon', 'telepon','required'); 
	$this->form_validation->set_rules('email', 'email', 'required');  
	$this->form_validation->set_rules('password', 'password', 'required');
	}
}
?>