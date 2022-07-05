<div id="addplant" class="modal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h3 class="modal-title">Add New Plant</h3>
			 <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <form method="post" action="PlantAddServlet">
                            <div class="form-group">
                                <label>Plant Id</label>
                                <input type="text" name="pid" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <label>Plant Name</label>
                                <input type="text" name="pname" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <label>Plant Detail</label>
                                <input type="text" name="pdetail" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <label>Plant Price</label>
                                <input type="text" name="price" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <label>Plant Quantity</label>
                                <input type="text" name="quantity" class="form-control"/>
                            </div>
                            <input type="submit" class="btn btn-success"/>
                        </form>
                    </div>
                    <div class="modal-footer">
                        
                    </div>
                </div>
                
            </div>
        </div>



