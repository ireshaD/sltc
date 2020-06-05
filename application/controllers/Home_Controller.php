<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home_Controller extends CI_Controller {
	function __Construct(){
      parent::__Construct ();
        $this->load->library('session'); // load database
        
        date_default_timezone_set('Asia/Colombo');
        $today=date('Y-m-d');
            $this->load->model('Home_model');
            $this->load->database();
            $this->load->library('form_validation');
            $this->load->helper('form');
    }

	public function index()
	{
		$page        	=1;
		$text_array 	=array();
		$text_url_array	=array();
		$img_array 		=array();
		$img_url_array 	=array();
		$courses  	 	=array();
		$main_urls		=array();


		$manu1	 		=$this->Home_model->get_manu1();
		$manu2	 		=$this->Home_model->get_manu2();
		$manu3	 		=$this->Home_model->get_manu3();
		$text_data 		=$this->Home_model->get_page_text($page);
		// echo $this->db->last_query();
		$img_data  		=$this->Home_model->get_page_images($page);
		// echo "<pre>";
		// print_r($manu2);
		// exit();


				$i=0; $j=0;
                foreach($text_data as $text){
                    $text_array[$text->txt_order]    =$text->text_data;
                    $text_url_array[$text->txt_order]=$text->text_url;

                    
                    if($text->txt_order==20){
                    	
                    	$courses[$i]["txt"] =$text->text_data;
                    	$courses[$i]["url"] =$text->text_url;
                    	$i++;
                    }   
                    if($text->txt_order==22){
                    	
                    	$main_urls[$j]["txt"] =$text->text_data;
                    	$main_urls[$j]["url"] =$text->text_url;
                    	$j++;
                    }
                }

                foreach($img_data as $img){
                    $img_array[$img->img_order]    ='asserts/img/home/'.$img->img;
                    $img_url_array[$img->img_order]=$img->url;
                }
        $this->data['manu1']    =$manu1;
        $this->data['manu2']    =$manu2;
        $this->data['manu3']    =$manu3;
        $this->data['courses']  =$courses;
        $this->data['main_urls']=$main_urls;
        $this->data['txt']      =$text_array;
        $this->data['img']      =$img_array;
        $this->data['img_url']  =$img_url_array;
        $this->data['txt_url']  =$text_url_array;
		$this->load->view('Home',$this->data);
	}
}
