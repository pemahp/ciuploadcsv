<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CsvFileUpload extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->helper('url');
        $this->load->library('session');
        $this->load->model('Csv_model');
	}
	public function index()
	{
		$this->load->view('csv_file_upload');
	}
	public function saveFile()
	{
        if($_FILES['csv_file']['tmp_name']) {
            $path = "uploads/file/";
            $csv_file   = $_FILES['csv_file'];
            $_FILES['csv_file']['name'] = $csv_file['name'];
            $_FILES['csv_file']['type'] = $csv_file['type'];
            $_FILES['csv_file']['tmp_name'] = $csv_file['tmp_name'];
            $_FILES['csv_file']['error'] = $csv_file['error'];
            $_FILES['csv_file']['size'] = $csv_file['size'];
            $FName = to_upload_csv('csv_file', $path, 'csv');
            if(is_array($FName)) {
                echo "debuging...some error";
                exit;
            }
            else {
                if (!empty($FName)) {
                    $fileName = $path.$FName;
                    $fileNameForDB = $FName;
                    $this->Csv_model->insert('csv_file',array('file_name'=>$fileNameForDB));
                    $this->session->set_flashdata('fileName',$fileName);
                    redirect("CsvFileUpload/thankyou");
                }
            }
        }
	}
    public function thankyou(){
            $fileName = $this->session->flashdata('fileName');
            $this->load->view('thankyou',$fileName);

        }
}
