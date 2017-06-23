<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * @file form_validation.php
 */

$config = array(
    'user_post' => array(
        array('field' => 'first_name', 'label' => 'First name', 'rules' => 'trim|required|max_length[20]'),
        array('field' => 'last_name', 'label' => 'Last_name', 'rules' => 'trim|required|max_length[20]'),
        array('field' => 'phone', 'label' => 'Phone number', 'rules' => 'trim|alpha_dash'),
        //array('field' => 'email', 'label' => 'Email address', 'rules' => 'trim|required|valid_email|is_unique[student.email]'),
        array('field' => 'email', 'label' => 'Email address', 'rules' => 'trim|required|valid_email'),
        array('field' => 'password', 'label' => 'Password', 'rules' => 'trim|required|min_length[8]|alpha_numeric'),
        array('field' => 'status', 'label' => 'Status', 'rules' => 'trim|required'),
        array('field' => 'role', 'label' => 'Role', 'rules' => 'trim|required'),
    ),
    'user_put' => array(
        array('field' => 'first_name', 'label' => 'First name', 'rules' => 'trim|max_length[20]'),
        array('field' => 'last_name', 'label' => 'Last_name', 'rules' => 'trim|max_length[20]'),
        array('field' => 'phone', 'label' => 'Phone number', 'rules' => 'trim|alpha_dash'),
        array('field' => 'email', 'label' => 'Email address', 'rules' => 'trim|valid_email'),
        array('field' => 'status', 'label' => 'Status', 'rules' => 'trim'),
        array('field' => 'role', 'label' => 'Role', 'rules' => 'trim'),
    ),
);

