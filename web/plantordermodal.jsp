
<%@page import="java.sql.ResultSet"%>
<%@page import="plantkartaction.PlantOrderAction"%>
<div class="modal fade bd-example-modal-xl" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true" id="currentorder">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5>All Plants Order:</h5> 
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <table class="table table-primary table-bordered">
                            <thead>
                            <th>OrderId</th>
                            <th>Email</th>
                            <th>PlantID</th>
                            <th>PlantName</th>
                            <th>price</th>
                            <th>Discount</th>
                            <Th>Quantity</Th>
                            <th>Total</th>
                            <th>Status</th>
                            <th>Delete</th>
                            </thead>
                            <tbody>
                                <%
                                   
                                    PlantOrderAction orderac=new PlantOrderAction();
                                   ResultSet rs2= orderac.allPlantOrder();
                                    while(rs2.next())
                                    {
                                %>
                                <tr>
                                    <td><%=rs2.getInt(1) %></td>
                                    <td><%=rs2.getString(2) %></td>
                                    <td><%=rs2.getInt(3) %></td>
                                    <td><%=rs2.getString(4) %></td>
                                    <td><%=rs2.getInt(6) %></td>
                                    <td><%=rs2.getInt(7) %></td>
                                    <td><%=rs2.getInt(8) %></td>
                                    <td><%=rs2.getInt(9) %></td>
                                    <td>
                                        <%
                                           if(rs2.getString(10).equals("pending"))
                                           {
                                         %>
                                            <a href="PlantPaymentSuccessServlet?orderid=<%=rs2.getInt(1) %>" onclick="return confirm('Are you sure to received Payment')"><%=rs2.getString(10) %></a>
                                         <%
                                           }
                                           else
                                           {
                                        %>
                                           <span style="color:green"><%=rs2.getString(10) %></span>
                                              <%
                                           }
                                               %>
                                    </td>
                                    <td><a href="OrderDeleteServlet?orderid=<%=rs2.getInt(1) %>" onclick="return confirm('Are you sure want to delete!')">[DELETE]</a></td>
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
