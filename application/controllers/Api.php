<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH.'/libraries/REST_Controller.php';

class Api extends REST_Controller {

    function __construct() {
        parent::__construct();
    }
    
    
    /*
     * 
     */
    public function author_get(){
        
        //$id = $this->get('id');
        $id = $this->uri->segment(3);
        
        $authors = array(
            1=> array('title'=>'author1', 'mobile'=>''),
            2=> array('title'=>'author2', 'mobile'=>'92945667990')
        );
        
        if(isset($authors[$id])){
            $this->set_response(array('status'=>'success', 'message'=>$authors[$id]));
        }
        else{
            $this->response(array('status'=>'failure', 'message'=>'The specefied author could not be found'), REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
        
            
    }
}
