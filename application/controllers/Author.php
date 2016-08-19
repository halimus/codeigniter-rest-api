<?php

defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';

class Author extends REST_Controller {

    function __construct() {
        parent::__construct();
        $this->load->helper('Api');
    }
    
    public function index() {
        echo 'test';
    }

    /*
     * 
     */

    public function author_get0() {
        //$id = $this->get('id');
        $id = $this->uri->segment(3);

        $authors = array(
            1 => array('title' => 'author1', 'mobile' => ''),
            2 => array('title' => 'author2', 'mobile' => '92945667990')
        );

        if (isset($authors[$id])) {
            $this->set_response(array('status' => 'success', 'message' => $authors[$id]));
        } else {
            $this->response(array('status' => 'failure', 'message' => 'The specefied author could not be found'), REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }

    /*
     * 
     */

    public function author_get() {
        $author_id = $this->uri->segment(3);
        $this->load->model('Author_model');

        $authors = $this->Author_model->get_by(array('author_id' => $author_id, 'author_status' => 'active'));

        if (isset($authors['author_id'])) {
            $this->set_response(array('status' => 'success', 'message' => $authors));
        } else {
            $this->response(array('status' => 'failure', 'message' => 'The specefied author could not be found'), REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }

    /*
     * 
     */

    public function author_put() {
        $this->load->library('form_validation');

        $data = remove_unknown_fields($this->put(), $this->form_validation->get_field_names('author_put'));

        //print_r($data); exit;

        $this->form_validation->set_data($data);
        if ($this->form_validation->run('author_put') != false) {
            //echo 'good data';
            $this->load->model('Author_model');

            $exist_email = $this->Author_model->get_by(array('email' => $this->put('email')));
            if ($exist_email) {
                $this->response(array('status' => 'failure', 'message' => 'The specefied email address already exists in the system'), REST_Controller::HTTP_CONFLICT); // HTTP_CONFLICT (409)
            }
            $author_id = $this->Author_model->insert($data);
            if (!$author_id) {
                $this->response(array('status' => 'failure', 'message' => 'An unexpected error occured white trying to create the author'), REST_Controller::HTTP_INTERNAL_SERVER_ERROR); // INTERNAL_SERVER_ERROR (500)
            } else {
                $this->set_response(array('status' => 'success', 'message' => 'created'));
            }
        } else {
            $this->response(array('status' => 'failure', 'message' => $this->form_validation->get_errors_as_array()), REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }
    }

    /*
     * 
     */

    public function author_post() {
        $author_id = $this->uri->segment(3);
        $this->load->model('Author_model');

        $author = $this->Author_model->get_by(array('author_id' => $author_id, 'author_status' => 'active'));

        if (isset($author['author_id'])) {
            $this->load->library('form_validation');
            $data = remove_unknown_fields($this->post(), $this->form_validation->get_field_names('author_post'));

            $this->form_validation->set_data($data);
            if ($this->form_validation->run('author_post') != false) {
                //echo 'good data';
                $this->load->model('Author_model');

                $safe_email = !isset($data['email']) || $data['email'] == $author['email']  || !$this->Author_model->get_by(array('email' => $data['email']));
                if (!$safe_email) {
                    $this->response(array('status' => 'failure', 'message' => 'The specefied email address already in use'), REST_Controller::HTTP_CONFLICT); // HTTP_CONFLICT (409)
                }
                $updated = $this->Author_model->update($author_id, $data);
                if (!$updated) {
                    $this->response(array('status' => 'failure', 'message' => 'An unexpected error occured white trying to update the author'), REST_Controller::HTTP_INTERNAL_SERVER_ERROR); // INTERNAL_SERVER_ERROR (500)
                } 
                else {
                    $this->set_response(array('status' => 'success', 'message' => 'updated'));
                }
            } else {
                $this->response(array('status' => 'failure', 'message' => $this->form_validation->get_errors_as_array()), REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
            }
            
        } 
        else {
            $this->response(array('status' => 'failure', 'message' => 'The specefied author could not be found'), REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }
    
    /*
     * 
     */
    public function author_delete() {
        $author_id = $this->uri->segment(3);
        $this->load->model('Author_model');

        $author = $this->Author_model->get_by(array('author_id' => $author_id, 'author_status' => 'active'));

        if (isset($author['author_id'])) {
            
            $data['author_status'] = 'deleted';
            $deleted = $this->Author_model->update($author_id, $data);
            if(!$deleted){
                $this->response(array('status' => 'failure', 'message' => 'An unexpected error occured white trying to delete the author'), REST_Controller::HTTP_INTERNAL_SERVER_ERROR); // INTERNAL_SERVER_ERROR (500)
            }
            else{
                $this->set_response(array('status' => 'success', 'message' => 'deleted'));
            }
        } 
        else {
            $this->response(array('status' => 'failure', 'message' => 'The specefied author could not be found'), REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }

}
