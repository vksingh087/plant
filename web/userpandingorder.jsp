
<%@page import="java.sql.ResultSet"%>
<%@page import="plantkartaction.UserPlantAction"%>
<div class="modal fade bd-example-modal-xl" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true" id="pendinguserorder">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5>All Plants Order:</h5> 
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <%
                                      UserPlantAction uac=new UserPlantAction();
                                      ResultSet rs=uac.getPandingOrder(email);
                         %>
                         <table class="table table-primary table-bordered">
                             
                            <thead>
                                <tr>
                            <th>OrderId</th>
                            
                            <th>PlantID</th>
                            <th>PlantName</th>
                            <th>price</th>
                            <th>Discount</th>
                            <Th>Quantity</Th>
                            <th>Total</th>
                            <th>Status</th>
                            
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    while(rs.next())
                                    {
                                %>
                                 
                                <tr>
                                    <td><%=rs.getInt(1)%></td>
                                    <td><%=rs.getInt(3)  %></td>
                                    <td><%=rs.getString(4)  %></td>
                                    <td><%=rs.getInt(6)  %></td>
                                    <td><%=rs.getInt(7)  %></td>
                                    <td><%=rs.getInt(8)  %></td>
                                    <td><%=rs.getInt(9)  %></td>
                                    <td><%=rs.getString(10)  %></td>
                                    
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
