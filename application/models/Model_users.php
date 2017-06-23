<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_users extends MY_Model {
    
    protected $_table = 'users';
    protected $primary_key = 'user_id';
    protected $return_type = 'array';
    
    protected $after_get = array('remove_sensitive_data');
    protected $before_create = array('prepare_data');
    protected $before_update = array('update_timestamp');

    /**
     * 
     * @param type $student
     * @return type
     */
    protected function remove_sensitive_data($student){
        unset($student['password']);
        unset($student['ip_address']);
        return $student;
    }
    
    /**
     * 
     * @param type $student
     * @return type
     */
    protected function prepare_data($student){
        $student['password'] = md5($student['password']);
        $student['ip_address'] = $this->input->ip_address(); 
        $student['created_at'] = date('Y-m-d H:i:s');
        return $student;
    }
    
    /**
     * 
     * @param array $student
     * @return type
     */
    protected function update_timestamp($student){
        $student['updated_at'] = date('Y-m-d H:i:s');
        return $student;
    }
    
}

