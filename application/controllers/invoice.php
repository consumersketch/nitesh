<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class invoice extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -  
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in 
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see http://codeigniter.com/user_guide/general/urls.html
	 */
	
	public function __construct(){
		parent::__construct();
		$this->load->model('invoice_model'); // Load the Invoice Model Class
		$this->load->helper('url'); // load codeigniter's url helpers
		date_default_timezone_set("Asia/Bangkok"); // setting up timezone
	} 
	
	// By default this function is called and load the invoice page
	public function index()
	{			
		$data['clients'] = $this->invoice_model->getAllClient();
		$this->load->view('template/header');
		$this->load->view('invoice/index',$data);
		$this->load->view('template/footer');
	}
	
	// Function will load the product of client
	public function loadProduct(){
		$clientId = $this->input->post('clientId');
		$product = $this->invoice_model->getProduct($clientId);
		echo json_encode($product);
	}
	
	public function loadData(){
		$clientId = $this->input->post('clientId');
		$productId = $this->input->post('productId');
		$date_filter = $this->input->post('date_filter');
		
		if($date_filter == 'last_year'){
			$record = $this->invoice_model->getLastYearData($clientId,$productId);
		}else if($date_filter == 'current_year'){
			$record = $this->invoice_model->getCurrentYearData($clientId,$productId);
		}else if($date_filter == 'current_month'){
			$record = $this->invoice_model->getCurrentMonthData($clientId,$productId);
		}else{
			$record = $this->invoice_model->getLastMonthToDateData($clientId,$productId);
		}	
		echo json_encode($record);	
	}
	
	
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */