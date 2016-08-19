<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

class Author_model extends MY_Model {
    
    protected $_table = 'author';
    protected $primary_key = 'author_id';
    protected $return_type = 'array';
    
    protected $after_get = array('remove_sensitive_data');
    protected $before_create = array('prepare_data');
    protected $before_update = array('update_timestamp');
    
    /*
     * 
     */
    protected function remove_sensitive_data($author){
        unset($author['password']);
        unset($author['ip_address']);
        return $author;
    }
    /*
     * 
     */
    protected function prepare_data($author){
        $author['password'] = sha1($author['password']);
        $author['ip_address'] = $this->input->ip_address();
        $author['created_at'] = date('Y-m-d H:i:s');
        return $author;
    }
    /*
     * 
     */
    protected function update_timestamp($author){
        $author['updated_at'] = date('Y-m-d H:i:s');
        return $author;
    }


}

