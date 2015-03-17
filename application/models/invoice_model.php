<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class invoice_model extends CI_Model {

	public function __construct()
	{
		parent::__construct();
	}
	
	// Function to load data for the specified condition.
	public function getAllDataByQuery(){
		$res = $this->db->query("select invc.invoice_num,invc.invoice_date,pr.product_description,invcitm.qty,invcitm.price from invoicelineitems invcitm right join invoices invc on invcitm.invoice_num=invc.invoice_num right join products pr on invcitm.product_id=pr.product_id");
		return $res->result_array();
	}
	
	// Get the list of all clients from the database table clients
	public function getAllClient(){
		$res = $this->db->query('select * from clients');
		return $res->result_array();
	}
	
	// Function get the product of selected client	
	public function getProduct($id){
		$query = $this->db->query("select * from products where client_id='".$id."'");
		return $query->result_array();
	}
	
	// Fetches the record of last year from the current year
	public function getLastYearData($clientId,$productId){
		$query = $this->db->query("select invc.invoice_num,invc.invoice_date,pr.product_description,invcitm.qty,invcitm.price from invoicelineitems invcitm right join invoices invc on invcitm.invoice_num=invc.invoice_num right join products pr on invcitm.product_id=pr.product_id where invc.client_id='".$clientId."' and YEAR(invc.invoice_date) = YEAR(DATE_SUB(CURDATE(), INTERVAL 1 YEAR)) group by invc.invoice_num");
		return $query->result_array();
	}
	
	// Fetches the record of current year
	public function getCurrentYearData($clientId,$productId){
		$query = $this->db->query("select invc.invoice_num,invc.invoice_date,pr.product_description,invcitm.qty,invcitm.price from invoicelineitems invcitm right join invoices invc on invcitm.invoice_num=invc.invoice_num right join products pr on invcitm.product_id=pr.product_id where invc.client_id='".$clientId."' and YEAR(invc.invoice_date) = YEAR(CURDATE()) group by invc.invoice_num");
		return $query->result_array();
	}
	
	// Fetches record of current month
	public function getCurrentMonthData($clientId,$productId){
		$query = $this->db->query("select invc.invoice_num,invc.invoice_date,pr.product_description,invcitm.qty,invcitm.price from invoicelineitems invcitm right join invoices invc on invcitm.invoice_num=invc.invoice_num right join products pr on invcitm.product_id=pr.product_id where invc.client_id='".$clientId."' and MONTH(invc.invoice_date) = MONTH(CURDATE()) and YEAR(invc.invoice_date) = YEAR(CURDATE()) group by invc.invoice_num");
		return $query->result_array();
	}
	
	// Fetches the record from last month to current year
	public function getLastMonthToDateData($clientId,$productId){
		$query = $this->db->query("select invc.invoice_num,invc.invoice_date,pr.product_description,invcitm.qty,invcitm.price from invoicelineitems invcitm right join invoices invc on invcitm.invoice_num=invc.invoice_num right join products pr on invcitm.product_id=pr.product_id where invc.client_id='".$clientId."' and invc.invoice_date >= DATE_ADD(LAST_DAY(DATE_SUB(NOW(), INTERVAL 1 MONTH)), INTERVAL 1 DAY) group by invc.invoice_num");
		return $query->result_array();
	}
	
}
