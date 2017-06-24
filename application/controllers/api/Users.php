<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH.'/libraries/REST_Controller.php';

class Users extends REST_Controller {
    
    function __construct() {
        parent::__construct();
        $this->load->helper('api');
        
        //Configure limits on our controller methods
        //Ensure you have created the 'limits' table and enabled 'limits' within application/config/rest.php
        //$this->methods['users_get']['limit'] = 100; // 100 requests per hour per user/key
        //$this->methods['user_post']['limit'] = 100; // 100 requests per hour per user/key
        //$this->methods['user_delete']['limit'] = 50; // 50 requests per hour per user/key 
    }
  
    /**
    * 
    */
    public function users_get(){   
        $this->load->model('Model_users');
        $user_id = $this->get('id');
        
        // If the id parameter doesn't exist return all users
        if($user_id === NULL){
            $users = $this->Model_users->get_many_by(array('status' =>  array('active', 'inactive')));
            if($users){
                // Set the response and exit
                $this->response($users, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
            }
            else{
                // Set the response and exit
                $this->response(array('status'=> false, 'message'=> 'The Specified user could not be found'), REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
            }
        }
        
        // Find and return a single record for a particular user.
        $user_id = (int) $user_id;
        if ($user_id <= 0){
            // Invalid id, set the response and exit.
            $this->response(NULL, REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }
        $user = $this->Model_users->get_by(array('user_id' => $user_id, 'status' => array('active', 'inactive')));
        if(isset($user['user_id'])){
            $this->response(array('status'=> 'success', 'message'=> $user));
        }
        else{
           $this->response(array('status'=> 'failure', 'message'=> 'The Specified user could not be found'), REST_Controller::HTTP_NOT_FOUND);
        } 
    } 
    
    /**
     * 
     */
    
    public function users_post(){   
        $this->load->library('form_validation');
        $data = remove_unknown_fields($this->post(), $this->form_validation->get_field_names('user_post'));
        $this->form_validation->set_data($data);
        if($this->form_validation->run('user_post') !=false){
            $this->load->model('Model_users');
            $exists = $this->Model_users->get_by(array('email' => $this->post('email')));
            if($exists){
                $this->response(array('status'=>'failure', 'message'=> 'The specified email address already exist in the system.'), REST_Controller::HTTP_CONFLICT);
            } 
            $user_id = $this->Model_users->insert($data);
            if(!$user_id){
                $this->response(array('status'=>'failure', 'message'=> 'An unexpected error while trying to create the user'), REST_Controller::HTTP_INTERNAL_SERVER_ERROR);
            }
            else{
                $this->response(array('status'=> 'success', 'message'=> 'user created'), REST_Controller::HTTP_CREATED);
            }
        }
        else{
            // BAD_REQUEST (400) being the HTTP response code
            $this->response(array('status'=>'failure', 'message'=> $this->form_validation->get_errors_as_array()), REST_Controller::HTTP_BAD_REQUEST);
        }
    }
    
    /**
     * 
     */
    public function users_put(){    
        //$user_id = $this->uri->segment(3);
        $user_id = $this->get('id');
        $this->load->model('Model_users');
        
        // Find and return a single record for a particular user.
        $user_id = (int) $user_id;
        // Validate the id.
        if ($user_id <= 0){
            // Invalid id, set the response and exit.
            $this->response(NULL, REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }
        $user = $this->Model_users->get_by(array('user_id' => $user_id, 'status' =>  array('active', 'inactive')));
        
        if(isset($user['user_id'])){
            $this->load->library('form_validation');
            $data = remove_unknown_fields($this->put(), $this->form_validation->get_field_names('user_put'));
            $this->form_validation->set_data($data);
            if($this->form_validation->run('user_put') !=false){
                $this->load->model('Model_users');
                $safe_email = !isset($data['email']) || $data['email'] == $user['email'] || !$this->Model_users->get_by(array('email' => $data['email']));
                if(!$safe_email){
                    $this->response(array('status'=>'failure', 'message'=> 'The specified email address already in the use.'), REST_Controller::HTTP_CONFLICT);
                } 
                $updated = $this->Model_users->update($user_id, $data);
                if(!$updated){
                    $this->response(array('status'=>'failure', 'message'=> 'An unexpected error while trying to updated the user'), REST_Controller::HTTP_INTERNAL_SERVER_ERROR);
                }
                else{
                    $this->response(array('status'=> 'success', 'message'=> 'user updated'), REST_Controller::HTTP_OK);
                }
            }
            else{
                // BAD_REQUEST (400) being the HTTP response code
                $this->response(array('status'=>'failure', 'message'=> $this->form_validation->get_errors_as_array()), REST_Controller::HTTP_BAD_REQUEST);
            }
        }
        else{
           $this->response(array('status'=> 'failure', 'message'=> 'The Specified user could not be found'), REST_Controller::HTTP_NOT_FOUND);
        }  
    }
    
    /**
     * 
     */
    public function users_delete(){    
        //$user_id = $this->uri->segment(3);
        $user_id = $this->get('id');
        $this->load->model('Model_users');

        // Find and return a single record for a particular user.
        $user_id = (int) $user_id;
        // Validate the id.
        if ($user_id <= 0){
            // Invalid id, set the response and exit.
            $this->response(NULL, REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }
        $user = $this->Model_users->get_by(array('user_id' => $user_id, 'status' =>  array('active', 'inactive')));
        if(isset($user['user_id'])){
            $data['status'] = 'deleted';
            $deleted = $this->Model_users->update($user_id, $data);
            if(!$deleted){
                $this->response(array('status'=>'failure', 'message'=> 'An unexpected error while trying to delete the user'), REST_Controller::HTTP_INTERNAL_SERVER_ERROR);
            }
            else{
                $this->response(array('status'=> 'success', 'message'=> 'User deleted'), REST_Controller::HTTP_NO_CONTENT); // NO_CONTENT (204) being the HTTP response code
            }
        }
        else{
           $this->response(array('status'=> 'failure', 'message'=> 'The Specified user could not be found'), REST_Controller::HTTP_NOT_FOUND);
        }  
    }
    
  
}
