<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>REST Server Tests</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.6.5/sweetalert2.css">
        <style>
            a {
                color: #039;
                background-color: transparent;
                font-weight: normal;
                text-decoration: none;
            }
            a:hover{
                color:orangered;
            }
        </style>
    </head>
    <body>
        <div class="container" style="padding-bottom: 100px;">
            <h2>REST Server Tests</h2>
            <div class="row">
                <div class="col-md-12" style="">
                    <p>
                        See the article
                        <a href="http://net.tutsplus.com/tutorials/php/working-with-restful-services-in-codeigniter-2/" target="_blank">
                            http://net.tutsplus.com/tutorials/php/working-with-restful-services-in-codeigniter-2/
                        </a>
                    </p>
                    <p>
                        The master project repository is
                        <a href="https://github.com/chriskacerguis/codeigniter-restserver" target="_blank">
                            https://github.com/chriskacerguis/codeigniter-restserver
                        </a>
                    </p>
                    <p>Click on the links to check whether the REST server is working.</p>
                    
                    <h3><u>GET users</u></h3>
                    <ol>
                        <li><a href="<?php echo site_url('api/users'); ?>"><?php echo site_url('api/users'); ?></a> - get it in JSON by default</li>
                        <li><a href="<?php echo site_url('api/users/format/json'); ?>"><?php echo site_url('api/users/format/json'); ?></a> - get it in JSON</li>
                        <li><a href="<?php echo site_url('api/users/format/xml'); ?>"><?php echo site_url('api/users/format/xml'); ?></a> - get it in XML</li>
                        <li><a href="<?php echo site_url('api/users/format/html'); ?>"><?php echo site_url('api/users/format/html'); ?></a> - get it in HTML</li>
                        <li><a href="<?php echo site_url('api/users/format/csv'); ?>"><?php echo site_url('api/users/format/csv'); ?></a> - get it in CSV</li>
                        <br>           
                        <li><a href="<?php echo site_url('api/users?format=json'); ?>"><?php echo site_url('api/users?format=json'); ?></a> - get it in JSON</li>
                        <li><a href="<?php echo site_url('api/users?format=xml'); ?>"><?php echo site_url('api/users?format=xml'); ?></a> - get it in XML</li>
                        <li><a href="<?php echo site_url('api/users?format=html'); ?>"><?php echo site_url('api/users?format=html'); ?></a> - get it in HTML</li>
                        <li><a href="<?php echo site_url('api/users?format=csv'); ?>"><?php echo site_url('api/users?format=csv'); ?></a> - get it in CSV</li>            
                        <br>
                        <li><a href="<?php echo site_url('api/users.json'); ?>"><?php echo site_url('api/users.json'); ?></a> - get it in JSON</li> 
                        <li><a href="<?php echo site_url('api/users.xml'); ?>"><?php echo site_url('api/users.xml'); ?></a> - get it in XML</li>
                        <li><a href="<?php echo site_url('api/users.html'); ?>"><?php echo site_url('api/users.html'); ?></a> - get it in HTML</li>
                        <li><a href="<?php echo site_url('api/users.csv'); ?>"><?php echo site_url('api/users.csv'); ?></a> - get it in CSV</li>
                    </ol>
                    
                    <h3><u>GET users/id/1</u></h3>
                    <ol>    
                        <li><a href="<?php echo site_url('api/users/id/1'); ?>"><?php echo site_url('api/users/id/1'); ?></a> - get it in JSON by default</li>
                        <li><a href="<?php echo site_url('api/users/id/1/format/json'); ?>"><?php echo site_url('api/users/id/1/format/json'); ?></a> - get it in JSON</li>
                        <li><a href="<?php echo site_url('api/users/id/1/format/xml'); ?>"><?php echo site_url('api/users/id/1/format/xml'); ?></a> - get it in XML</li>
                        <li><a href="<?php echo site_url('api/users/id/1/format/html'); ?>"><?php echo site_url('api/users/id/1/format/html'); ?></a> - get it in HTML</li>
                        <li><a href="<?php echo site_url('api/users/id/1/format/csv'); ?>"><?php echo site_url('api/users/id/1/format/csv'); ?></a> - get it in CSV</li>
                        <br>           
                        <li><a href="<?php echo site_url('api/users/id/1?format=json'); ?>"><?php echo site_url('api/users/id/1?format=json'); ?></a> - get it in JSON</li>
                        <li><a href="<?php echo site_url('api/users/id/1?format=xml'); ?>"><?php echo site_url('api/users/id/1?format=xml'); ?></a> - get it in XML</li>
                        <li><a href="<?php echo site_url('api/users/id/1?format=html'); ?>"><?php echo site_url('api/users/id/1?format=html'); ?></a> - get it in HTML</li>
                        <li><a href="<?php echo site_url('api/users/id/1?format=csv'); ?>"><?php echo site_url('api/users/id/1?format=csv'); ?></a> - get it in CSV</li>            
                        <br>
                        <li><a href="<?php echo site_url('api/users/id/1.json'); ?>"><?php echo site_url('api/users/id/1.json'); ?></a> - get it in JSON</li> 
                        <li><a href="<?php echo site_url('api/users/id/1.xml'); ?>"><?php echo site_url('api/users/id/1.xml'); ?></a> - get it in XML</li>
                        <li><a href="<?php echo site_url('api/users/id/1.html'); ?>"><?php echo site_url('api/users/id/1.html'); ?></a> - get it in HTML</li>
                        <li><a href="<?php echo site_url('api/users/id/1.csv'); ?>"><?php echo site_url('api/users/id/1.csv'); ?></a> - get it in CSV</li>
                    </ol>  

                    <h3><u>POST user</u></h3>
                    <ol>
                        <li><a href="#" id="post-user"><?php echo site_url('api/users/'); ?></a> - create new user</li>  
                    </ol>
                    
                    <h3><u>PUT user</u></h3>
                    <ol>
                       <li><a href="#" id="put-user"><?php echo site_url('api/users/id/'); ?></a><input type="text" id="input-put" size="3" value="1"> - update specific user</li> 
                    </ol>

                    <h3><u>DELETE user</u></h3>
                    <ol>
                        <li><a href="#" id="delete-user"><?php echo site_url('api/users/id/'); ?></a><input type="text" id="input-delete" size="3" value="1"> - delete specific user</li>  
                    </ol>
                </div>
            </div>

        </div>
        <?php
            require_once(APPPATH . 'views/includes/put_user.php');
            require_once(APPPATH . 'views/includes/post_user.php');
        ?>

        <!-- JS -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> 
        <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.6.5/sweetalert2.min.js"></script>
        <script>
            $(function () {
                /**
                 * 
                 */
                $(document).on('click', '#post-user', function () {
                    $('#form-post-user .modal').modal({backdrop: 'static', keyboard: false});
                    return false;
                });
                
                /**
                 * 
                 */
                $(document).on('click', '#put-user', function () {
                    var id = $(this).next("input").val();
                    var url = $(this).text()+id;
                    if(id!==''){
                        $.ajax({
                            type: "GET",
                            url: url,
                            dataType: 'JSON',
                            beforeSend: function () {
                            },
                            success: function (response) {   
                                var url = $('#form-put-user').attr("action");
                                url = url.split("/id/");
                                url = url[0] +'/id/'+response.message['user_id'];
                                $('#form-put-user').attr('action', url);
                                $('#form-put-user #first_name').val(response.message['first_name']);
                                $('#form-put-user #last_name').val(response.message['last_name']);
                                $('#form-put-user #phone').val(response.message['phone']);
                                $('#form-put-user #email').val(response.message['email']);
                                $('#form-put-user #role').val(response.message['role']);
                                $('#form-put-user #status').val(response.message['status']);
                                $('#form-put-user .modal').modal({backdrop: 'static', keyboard: false});
                            },
                            statusCode: {
                                400: function(response) { //HTTP_BAD_REQUEST
                                },
                                401: function(response) { //HTTP_UNAUTHORIZED
                                   swal('Oops...','HTTP_UNAUTHORIZED','error');
                                },
                                403: function(response) { //HTTP_FORBIDDEN
                                   swal('Oops...','HTTP_FORBIDDEN','error');
                                },
                                404: function(response) { //HTTP_NOT_FOUND
                                  swal('Oops...','HTTP_NOT_FOUND','error');
                                },
                                408: function(response) { //HTTP_REQUEST_TIMEOUT
                                  swal('Oops...','HTTP_REQUEST_TIMEOUT','error');
                                },
                                409: function(response) { //HTTP_CONFLICT 
                                   var response =  JSON.parse(response.responseText).message;
                                   swal('Oops...', response, 'error');
                                },
                                500: function(response) { //HTTP_INTERNAL_SERVER_ERROR
                                   swal('Oops...', HTTP_INTERNAL_SERVER_ERROR, 'error');
                                },
                            }, 
                            error: function () {
                                console.log('failed request!');
                            }
                        }); 
                    }
                    return false;
                });
                     
                /**
                 * 
                 */
                $(document).on('click', '#delete-user', function () {
                    var id = $(this).next("input").val();
                    var url = $(this).text()+id;
                    if(id!==''){
                        swal({
                         title: 'Are you sure?',
                         text: "You won't be able to revert this!",
                         type: 'warning',
                         showCancelButton: true,
                         confirmButtonColor: '#3085d6',
                         cancelButtonColor: '#d33',
                         confirmButtonText: 'Yes, delete it!'
                       }).then(function () {
                            $.ajax({
                                type: "DELETE",
                                url: url,
                                dataType: 'JSON',
                                beforeSend: function () {
                                },
                                success: function (response) {   
                                },
                                statusCode: {
                                    204: function(response) { //NO_CONTENT
                                        swal('Deleted!', 'Your file has been deleted.', 'success');
                                    },
                                    401: function(response) { //HTTP_UNAUTHORIZED
                                       swal('Oops...','HTTP_UNAUTHORIZED','error');
                                    },
                                    403: function(response) { //HTTP_FORBIDDEN
                                       swal('Oops...','HTTP_FORBIDDEN','error');
                                    },
                                    404: function(response) { //HTTP_NOT_FOUND
                                      swal('Oops...','HTTP_NOT_FOUND','error');
                                    },
                                    405: function(response) { //HTTP_NOT_FOUND
                                      swal('Oops...','HTTP_METHOD_NOT_ALLOWED','error');
                                    },
                                    408: function(response) { //HTTP_REQUEST_TIMEOUT
                                      swal('Oops...','HTTP_REQUEST_TIMEOUT','error');
                                    },
                                    500: function(response) { //HTTP_INTERNAL_SERVER_ERROR
                                      swal('Oops...', HTTP_INTERNAL_SERVER_ERROR, 'error');
                                    },
                                }, 
                                error: function () {
                                    console.log('failed request!');
                                }
                            });
                       });
                    }
                    return false;
                });

                /**
                 * 
                 */
                $(document).on('submit', '#form-post-user', function () {
                    var form = $("#form-post-user");
                    $.ajax({
                        type: "POST",
                        url: form.attr("action"),
                        data: form.serialize(),
                        dataType: 'JSON',
                        beforeSend: function () {
                        },
                        success: function (response) {   
                        },
                        statusCode: {
                            201: function(response) { //HTTP_CREATED
                                swal('','User created!','success');
                                $('#form-post-user')[0].reset();
                            },
                            400: function(response) { //HTTP_BAD_REQUEST
                               var response =  JSON.parse(response.responseText).message;
                               var output='';
                               for(var key in response) { 
                                    output+=response[key]+'<br>';
                               }
                               swal('Oops...', output, 'error');
                            },
                            401: function(response) { //HTTP_UNAUTHORIZED
                               swal('Oops...','HTTP_UNAUTHORIZED','error');
                            },
                            403: function(response) { //HTTP_FORBIDDEN
                               swal('Oops...','HTTP_FORBIDDEN','error');
                            },
                            404: function(response) { //HTTP_NOT_FOUND
                              swal('Oops...','HTTP_NOT_FOUND','error');
                            },
                            408: function(response) { //HTTP_REQUEST_TIMEOUT
                              swal('Oops...','HTTP_REQUEST_TIMEOUT','error');
                            },
                            409: function(response) { //HTTP_CONFLICT 
                               var response =  JSON.parse(response.responseText).message;
                               swal('Oops...', response, 'error');
                            },
                            500: function(response) { //HTTP_INTERNAL_SERVER_ERROR
                               swal('Oops...', HTTP_INTERNAL_SERVER_ERROR, 'error');
                            },
                        }, 
                        error: function () {
                            console.log('failed request!');
                        }
                    });
                    return false;
                });

                /**
                 * 
                 */
                $(document).on('submit', '#form-put-user', function () {
                    var form = $("#form-put-user");
                    $.ajax({
                        type: "PUT",
                        url: form.attr("action"),
                        data: form.serialize(),
                        dataType: 'JSON',
                        beforeSend: function () {
                        },
                        success: function (response) {   
                            swal('', response.message, 'success');
                        },
                        statusCode: {
                            400: function(response) { //HTTP_BAD_REQUEST
                               var response =  JSON.parse(response.responseText).message;
                               var output='';
                               for(var key in response) { 
                                    output+=response[key]+'<br>';
                               }
                               swal('Oops...', output, 'error');
                            },
                            401: function(response) { //HTTP_UNAUTHORIZED
                               swal('Oops...','HTTP_UNAUTHORIZED','error');
                            },
                            403: function(response) { //HTTP_FORBIDDEN
                               swal('Oops...','HTTP_FORBIDDEN','error');
                            },
                            404: function(response) { //HTTP_NOT_FOUND
                              swal('Oops...','HTTP_NOT_FOUND','error');
                            },
                            405: function(response) { //HTTP_METHOD_NOT_ALLOWED
                              swal('Oops...','HTTP_METHOD_NOT_ALLOWED','error');
                            },
                            408: function(response) { //HTTP_REQUEST_TIMEOUT
                              swal('Oops...','HTTP_REQUEST_TIMEOUT','error');
                            },
                            409: function(response) { //HTTP_CONFLICT 
                               var response =  JSON.parse(response.responseText).message;
                               swal('Oops...', response, 'error');
                            },
                            500: function(response) { //HTTP_INTERNAL_SERVER_ERROR
                               swal('Oops...', HTTP_INTERNAL_SERVER_ERROR, 'error');
                            },
                        }, 
                        error: function () {
                            console.log('failed request!');
                        }
                    });
                    return false;
                });
                
            });
        </script>
    </body>
</html>
