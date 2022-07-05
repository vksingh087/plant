<%@page import="plantkartaction.PlantAction" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="plantkartaction.SignUpAction"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.css" type="text/css" rel="stylesheet"/>
    </head>
    <body>
        <%
            String email=null;
            HttpSession sess=request.getSession();
           
            if(sess!=null)
            {
                email=sess.getAttribute("adminsessionid").toString();
            }
            else
            {
                response.sendRedirect("login.jsp");
            }
            
            String emailid=request.getParameter("email");
           
         %>
         
         <div class="container-fluid">
             <div class="row">
                 <div class="col-lg-12">
                     <h4>Welcome admin: <%=email%></h4>
                 </div>
             </div>
                 <div class="row">
                     <div class="col-lg-2">
                         <a class="btn btn-success btn-sm" data-toggle="modal" data-target="#addplant">Add Plants</a>
                     </div>
                     <div class="col-lg-2">
                         <a class="btn btn-success btn-sm" data-toggle="modal" data-target="#showplant">View Plants</a>
                     </div>
                     <div class="col-lg-2">
                         <a class="btn btn-success btn-sm" data-toggle="modal" data-target="#currentorder">Current Order</a>
                     </div>
                     <div class="col-lg-2">
                         <a class="btn btn-success btn-sm" data-toggle="modal" data-target="#delivered">Delivered Plants Status</a>
                     </div>
                     <div class="col-lg-2">
                         <a href="admin.jsp?msg=success" class="btn btn-success btn-sm" style="color:white" data-toggle="modal" data-target="#adminchatbox">Chat</a>
                     </div>
                     <div class="col-lg-2">
                         <a class="btn btn-success btn-sm" href="adminlogout.jsp">Logout</a>
                     </div>
                 </div>
                 <div class="row mt-3">
                     <div class="col-lg-12">
                         <%@include file="customers.jsp" %>
                     </div>
                 </div>
         </div>
                 
        
        
        
        
        
        
        
       
       
        
        <%@include file="customermodel.jsp" %>
       
        <%@include file="plantupdatemodal.jsp" %> 
        <%@include file="plantviewmodal.jsp" %>
        <%@include file="plantordermodal.jsp" %>
        <%@include file="deliveredplantstatus.jsp" %>
        <%@include  file="adminchatmodal.jsp" %>
       
           
          <script src="js/jquery.js"></script>
          <script src="js/bootstrap.js"></script>
          
          <%
           if(emailid!=null)
           {
               
          %>
          <script>
             $(document).ready(function()
             {
                 $("#update").modal('show');
             }

             );
          
          </script>
          <%
           }
          %>  
    </body>
</html>
  