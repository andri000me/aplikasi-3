<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
        $this->load->model('indekos_model');
        $this->load->library('form_validation');
    }

	public function login()
	{

		$this->_rules();
		if ($this->form_validation->run() == FALSE) {
			$this->load->view('login');
		}else{
			$username = $this->input->post('username');
			$password = md5($this->input->post('password'));

			$cek	= $this->indekos_model->cek_login($username, $password);

			if ($cek == FALSE) {
				$this->session->set_flashdata ('pesan', '<div class = "alert alert-danger alert-dismissible fade show" Role- "Alert"> Username atau Password Salah !!!. 
				<button Type="Button" class = "close" data-dismiss = "alert" aria-label- "Close"> 
				</button> 
				</div>'); 
			redirect ('auth/login');
			}else {
				$this->session->set_flashdata('username',$cek->username);
				$this->session->set_flashdata('id_level',$cek->id_level);

				switch ($cek->id_level) {
					case 1: redirect ('admin/dashboard');
						break;
					case 2: redirect ('pemilik/dashboard');
						break;
					case 3: redirect ('pencari/dashboard');
						break;

					default:
						break;
				}
			}
	
		}	
	}

	public function _rules() 
	{
	$this->form_validation->set_rules('username', 'username','required'); 
	$this->form_validation->set_rules('password', 'password', 'required');
	}

	public function logout(){
		$this->session->sess_destroy();
		redirect('welcome');
	}
}
?>
