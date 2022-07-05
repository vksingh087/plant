

<%@page import="plantkartaction.DeliveryPlantAction"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="plantkartaction.PlantOrderAction"%>
<div class="modal fade bd-example-modal-xl" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true" id="delivered">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5>Delivered Plants Status:</h5> 
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <table class="table table-primary">
                            <thead>
                                <tr>
                                   <th>Order Id</th>
                                   <th>Plant Id</th>
                                   <th>User</th>
                                   <th>Plant Name</th>
                                   <th>Payment</th>
                                   <th>Quantity</th>
                                   <th>Code</th>
                                   <th>Delivery Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    DeliveryPlantAction dac=new DeliveryPlantAction();
                                    
                                    ResultSet ors=dac.getAllDeliverdOrdered();
                                            
                                    while(ors.next())
                                    {
                                
                                %>
                                <tr>
                                    <td><%=ors.getInt(1) %></td>
                                    <td><%=ors.getInt(2) %></td>
                                    <td><%=ors.getString(3) %></td>
                                    <td><%=ors.getString(4) %></td>
                                    <td><%=ors.getInt(5) %></td>
                                    <td><%=ors.getInt(6) %></td>
                                    <td><%=ors.getInt(7) %></td>
                                    <%
                                        if(ors.getString(8).equals("Success"))
                                        {
                                    %>
                                    
                                           <td style="color:green;font-weight: 700"><%=ors.getString(8) %></td>
                                    <%
                                        }
                                        else
                                        {
                                      %>
                                         <td style="color:red;font-weight: 700"><%=ors.getString(8) %></td>
                                   
                                      <%
                                        }
                                      %>
                                </tr>
                                
                                <%
                                    }
                                %>
                            </tbody>
                        </table>
                    </div>
                    <div class="modal-footer">
                        
                    </div>
                </div>
            </div>
        </div>
