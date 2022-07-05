<div class="modal fade bd-example-modal-xl" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true" id="updateaddress">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5>Update Shipping Address:</h5> 
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <form method="post" action="UpdateUserAddressServlet">
                            <div class="form-group">
                                <label>User:</label>
                                <input type="text" name="email" class="form-control" value="<%=email%>" readonly=""/>
                            </div>
                            <div class="form-group">
                                <label>Update Address:</label>
                                <input type="text" name="address" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <input type="submit"  value="Update" class="btn btn-success btn-lg"/>
                            </div>
                        </form> 
                    </div>
                    <div class="modal-footer">
                        
                    </div>
                </div>
            </div>
        </div>
