<?php  
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 *
 * @file form_validation.php
 */

$config = array(
  'author_put' => array(
        array('field' => 'email', 'label' => 'email', 'rules' => 'trim|required|valid_email'),
        array('field' => 'password', 'label' => 'password', 'rules' => 'trim|required|min_length[2]|max_length[8]'),
        array('field' => 'first_name', 'label' => 'first_name', 'rules' => 'trim|required|max_length[30]'),
        array('field' => 'last_name', 'label' => 'last_name', 'rules' => 'trim|required|max_length[30]'),
        array('field' => 'phone', 'label' => 'phone', 'rules' => 'trim|required|alpha_dash'),
    ),   
    'author_post' => array(
        array('field' => 'email', 'label' => 'email', 'rules' => 'trim|valid_email'),
        array('field' => 'password', 'label' => 'password', 'rules' => 'trim|min_length[2]|max_length[8]'),
        array('field' => 'first_name', 'label' => 'first_name', 'rules' => 'trim|max_length[30]'),
        array('field' => 'last_name', 'label' => 'last_name', 'rules' => 'trim|max_length[30]'),
        array('field' => 'phone', 'label' => 'phone', 'rules' => 'trim|alpha_dash'),
    ),  
);



?>