<form method="post" action="<?php echo base_url('api/users/id/'); ?>" id="form-put-user">
<div class="modal fade" role="dialog">
        <div class="modal-dialog modal-md">    
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title b_name">Update User</h4>
                </div>
                <div class="modal-body">
                    <div class="row form-group">
                        <div class="col-md-6">
                            <label>First Name</label><em>*</em>
                            <input type="text" name="first_name" id="first_name" class="form-control" value="">
                        </div>
                        <div class="col-md-6">
                            <label>Last Name</label><em>*</em>
                            <input type="text" name="last_name" id="last_name" class="form-control" value="">
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-6">
                            <label>Phone</label><em>*</em>
                            <input type="text" name="phone" id="phone" class="form-control" value="">
                        </div>
                        <div class="col-md-6">
                            <label>Email</label><em>*</em>
                            <input type="text" name="email" id="email" class="form-control" value="">
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-6">
                            <label>Role</label><em>*</em>
                            <select name="role" id="role" class="form-control">
                                <option value="" style="display: none"></option>
                                <option value="administrator">administrator</option>
                                <option value="colaborator">colaborator</option>
                            </select>
                        </div>
                        <div class="col-md-6">
                            <label>Status</label><em>*</em>
                            <select name="status" id="status" class="form-control">
                                <option value="" style="display: none"></option>
                                <option value="active">active</option>
                                <option value="inactive">inactive</option>
                            </select>
                        </div>
                    </div>  
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-success" role="button">Update</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</form>


