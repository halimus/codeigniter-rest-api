<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH.'/libraries/REST_Controller.php';

class Api extends REST_Controller {

    function __construct() {
        parent::__construct();
    }
    
    
    
    public function book_get(){
        
        $books = array(
            1=> array('title'=>'Book1', 'descreption'=>''),
            2=> array('title'=>'book2', 'descreption'=>'samll descreption')
        );
        
        $this->response($books);
            
    }
}
