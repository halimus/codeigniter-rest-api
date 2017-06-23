<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * MY_Form_validation class.
 * @extends CI_Form_validation
 */
class My_Form_validation extends CI_Form_validation {

    public function __construct($rules = array()) {
        parent::__construct($rules);
        $this->ci = & get_instance();
    }
    
    /**
     * 
     */
    public function get_errors_as_array() {
        return $this->_error_array;
    }
    
    /**
     * 
     */
    public function get_config_rules() {
        return $this->_config_rules;
    }
    
    /**
     * 
     */
    public function get_field_names($form) {
       $filed_names = array();
       $rules = $this->get_config_rules();
       $rules = $rules[$form];
       foreach ($rules as $key => $value) {
           $filed_names[] = $value['field'];
       }
       return $filed_names;
    }

}


