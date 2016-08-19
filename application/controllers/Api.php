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
    public function author_get0(){    
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
    
    /*
     * 
     */
    public function author_get(){    
        $author_id = $this->uri->segment(3);
        $this->load->model('Author_model');
        
        $authors = $this->Author_model->get_by(array('author_id'=> $author_id, 'author_status'=>'active'));
        
        if(isset($authors['author_id'])){
            $this->set_response(array('status'=>'success', 'message'=>$authors));
        }
        else{
            $this->response(array('status'=>'failure', 'message'=>'The specefied author could not be found'), REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }    
    }
    
        /*
     * 
     */
    public function author_put(){    
//        var_dump($this->put());
//        echo 'put';
        $this->load->library('form_validation');
        $this->form_validation->set_data($this->put());
        if($this->form_validation->run('author_put') !=false){
            echo 'good data';
        }
        else{
            //echo 'bad data';
            $this->response(array('status'=>'failure', 'message'=> $this->form_validation->get_errors_as_array()), REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }
        
        
    }
    
    
}
