<%-- 
    Document   : payment
    Created on : 30-May-2022, 18:33:28
    Author     : cloudweb
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="plantkartaction.PlantOrderAction"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" type="text/css" rel="stylesheet"/>
  
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container-fluid">
            <%@include file="nav.jsp" %>
            <%
                ResultSet rs=null;
                try
                {
                    PlantOrderAction ac=new PlantOrderAction();
                    rs=ac.plantsForPayment(email1);
                }
                catch(Exception e)
                {
                    
                }
                
             %>
            
            
            
            
            <div class="row mt-3">
                 <div class="col-lg-1">
                    
                </div>
                <div class="col-lg-5">
                    <a href="index.jsp" class="btn btn-success btn-sm">Add <img src="img/plus.png" style="width: 20px; height: 20px;"></a>
                    <table class="table mt-2">
                        <caption style="color:red">After Payment Please Send Screen shot of receipt at WhatsApp :7500700886 or email at: cloudxweb@gmail.com </caption>
                        <tr>
                            <th>Order Id</th>
                            <th>Plant Id</th>
                            <th>Plant Name</th>
                            <th>Price</th>
                            <th>dis %</th>
                            <th>Quantity</th>
                            <th>Total</th>
                            <th>Delete Item</th>
                        </tr>
                  <%
                      int grandTotal=0;
                     while(rs.next())
                     {
                        if(rs.getString(10).equals("pending"))
                        {
                            grandTotal=grandTotal+rs.getInt(9);
                   %>
                            <tr>
                                <td><%=rs.getInt(1) %></td>
                                <td><%=rs.getInt(3) %></td>
                                <td><%=rs.getString(4) %></td>
                                <td><%=rs.getInt(6) %></td>
                                <td><%=rs.getInt(7) %></td>
                                <td><%=rs.getInt(8) %></td>
                                <td><%=rs.getInt(9) %></td>
                                <td><a href="DeleteKartItemServlet?orderid=<%=rs.getInt(1) %>"><img src="img/minus.png" style="width: 20px; height: 20px;"></a></td>
                            </tr>
                   
                   <%
                        }
                     }
                  
                  
                  %>  
                  <tr>
                      <td colspan="6"><b>Grand Total</b></td>
                      <td><b><%= grandTotal%></b></td>
                  </tr>
                    </table>
                </div>
                <div class="col-lg-5">
                    <img src="img/qrcode.jpg" style="width: 70%; height: 100%;">
                </div>
                 <div class="col-lg-1">
                    
                </div>
            </div>
        </div>
        
        
        
        <script src="js/jquery.js"></script>
       <script src="js/bootstrap.js"></script>
    </body>
    
    
</html>
