<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

class Author_model extends MY_Model {
    
    protected $_table = 'author';
    protected $primary_key = 'author_id';
    protected $return_type = 'array';
    
    protected $after_get = array('remove_sensitive_data');
    
    protected function remove_sensitive_data($author){
        unset($author['password']);
        unset($author['ip_address']);
        return $author;
    }

    /*
     * 
     */
    
//    public function Authentif() {
//        
//        
//    }



}

