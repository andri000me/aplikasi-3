<?php 

/**
 * 
 */
class Data_indekos extends CI_controller
{
	public function __construct() {
		parent::__construct();
		$this->load->library('pagination');
		$this->load->model('indekos_model');
	}
	
	public function index()
	{
		$data['kosan']= $this->indekos_model->get_data('kosan')->result();
		$this->load->view('admin/_partials/head');
		$this->load->view('admin/_partials/sidebar');
		$this->load->view('admin/data_indekos', $data);
		$this->load->view('admin/_partials/footer');
	}

	public function detail()
	{
		$this->load->view('admin/_partials/head');
		$this->load->view('admin/_partials/sidebar');
		$this->load->view('admin/detail_indekos');
		$this->load->view('admin/_partials/footer');
	}


}

 ?>