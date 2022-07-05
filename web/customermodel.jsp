<div id="update" class="modal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4>Update User</h4>
                        <button type="button" class="close" data-dismiss="modal" >&times;</button>
                    </div>
                    <div class="modal-body">
                        <form method="post" action="UpdateUserServlet">
                            <div class="form-group">
                                <label>Email</label>
                                <input type="email" value="<%=id%>" class="form-control" name="email" readonly=""/> 
                            </div>
                            <div class="form-group">
                                <label>Name</label>
                                <input type="text" value="<%=name%>" class="form-control" name="user"/> 
                            </div>
                            <div class="form-group">
                                <label>Mobile</label>
                                <input type="text" value="<%=mobile%>" class="form-control" name="mobile"/> 
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" value="<%=password%>" class="form-control" name="pwd"/> 
                            </div>
                            <div class="form-group">
                                <label>Address</label>
                                <input type="text" value="<%=address%>" class="form-control" name="address"/> 
                            </div>
                            <input type="submit" value="Update User" class="btn btn-success"/>
                        </form> 
                    </div>
                    <div class="modal-footer">
                        
                    </div>
                </div>
            </div>
        </div>