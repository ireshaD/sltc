<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home_model extends CI_Model{ 
 	function get_page_images($page){
        $this->db->select('*');
        $this->db->from('page_images');
        $this->db->where('page',$page);
       
        $query = $this->db->get();
        if($query){
            return $query->result();
        }
    }

    function get_page_text($page){
        $this->db->select('*');
        $this->db->from('page_text');
        $this->db->where('page',$page);
       
        $query = $this->db->get();
        if($query){
            return $query->result();
        }
    }    
    function get_manu1(){
        $this->db->select('*');
        $this->db->from('manu_level1');
        $this->db->order_by('manu_order','asc');
       
        $query = $this->db->get();
        if($query){
            return $query->result();
        }
    }    
    function get_manu2(){
        $this->db->select('*');
        $this->db->from('manu_level2');
        $this->db->order_by('manu_order','asc');
       
        $query = $this->db->get();
        if($query){
            return $query->result();
        }
    }
    function get_manu3(){
        $this->db->select('*');
        $this->db->from('manu_level3');
        $this->db->order_by('manu_order','asc');
       
        $query = $this->db->get();
        if($query){
            return $query->result();
        }
    }
}