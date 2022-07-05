
<%@page import="plantkartaction.SignUpAction"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link href="css/bootstrap.css" type="text/css" rel="stylesheet"/>
         <style>
             .my-custom-scrollbar {
                position: relative;
                height: 200px;
                overflow: auto;
            }
.table-wrapper-scroll-y {
display: block;
}
         </style>
    </head>
    <body>
        <%
            String email=null;
            HttpSession sess=request.getSession();
            String msg=null;
            msg=request.getParameter("msg");
            if(sess!=null)
            {
                email=sess.getAttribute("userSessionid").toString();
            }
            else
            {
                response.sendRedirect("login.jsp");
            }
          
        
        %>
        <div class="container-fluid">
            <%@include file="userpandingorder.jsp" %>
            <%@include file="usersuccesspayment.jsp" %>
            <%@include file="updateuseraddress.jsp" %>
            <%@include file="chatmodal.jsp" %>
            <div class="row">
                <%@include file="usertopbar.jsp" %>
            </div>
                <%@include file="usernav.jsp" %>
                <div class="row mt-2">
                    <div class="col-1">
                         <a href="index.jsp" class="btn btn-success btn-sm">Add Plants <img src="img/plus.png" style="width: 15px; height: 15px;"></a>
                  
                    </div>
                    <div class="col-2">
                        <a href="#" class="btn btn-success btn-sm" data-toggle="modal" data-target="#pendinguserorder">Pending Orders</a>
                        
                    </div>
                    <div class="col-1">
                        <a href="#" class="btn btn-success btn-sm" data-toggle="modal" data-target="#successuserorder">Payment Success</a>
                        
                    </div>
                    <div class="col-2">
                        <a href="completeorder.jsp" class="btn btn-success btn-sm">Completed Orders</a>
                    </div>
                    <div class="col-2">
                        <a href="#" class="btn btn-success btn-sm">Cancel Orders</a>
                    </div>
                    <div class="col-2">
                        <a href="#" class="btn btn-success btn-sm">Update Profile</a>
                    </div>
                    
                    <div class="col-2">
                        <a href="#" class="btn btn-success btn-sm" data-toggle="modal" data-target="#updateaddress">Update Address</a>
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-lg-9">
                        <span class="h4">Delivery Order Status</span>
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
                                    PlantOrderAction  oac=new PlantOrderAction();
                                    
                                    ResultSet ors=oac.getCompleteOrder(email);
                                            
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
                            <div class="col-lg-3 pt-4">
                                <%
                                     SignUpAction acd=new SignUpAction();
                                     ResultSet rsd=acd.getUser(email);
                                     rsd.next();
                                     
                                 %> 
                                 <table class="table table-bordered">
                                     <caption>Shipping Address</caption>
                                     <tr><td><%=rsd.getString(1)%></td></tr>
                                     <tr> <td><%=rsd.getString(2)%></td></tr>
                                     <tr><td><%=rsd.getString(3)%></td></tr>
                                     <tr>  <td><%=rsd.getString(5)%></td></tr>
                                 </table>
                            </div>
                </div>
        </div>
        
        
        
        
        
       
        
        
          <script src="js/jquery.js"></script>
        <script src="js/bootstrap.js"></script>
        
        
        
    </body>
</html>
