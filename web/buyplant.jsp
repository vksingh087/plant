
<%@page import="java.sql.ResultSet"%>
<%@page import="plantkartaction.PlantAction"%>
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
              
              try
              {
                  HttpSession sess=request.getSession();
                  if(sess!=null)
                     email=sess.getAttribute("userSessionid").toString();
              }
              catch(Exception e)
              {
                  response.sendRedirect("login.jsp");
              }
              
              String plantId=request.getParameter("pid");
              int pid=Integer.parseInt(plantId);
              PlantAction ac=new PlantAction();
              ResultSet rs=ac.getBuyPlant(pid);
              rs.next();
                      
        %>
        <div class="container-fluid">
            <div class="row">
                <%@include file="top.jsp" %> 
            </div>
             <%@include file="nav.jsp" %>
            <div class="row">
                <div class="col-lg-3"></div>
                <div class="col-lg-6">
                    <form action="PlantOrderServlet" method="post">
            <div class="form-group">
                <label>Email</label>
                <input type="text" name="email" class="form-control" value="<%=email%>" readonly=""/>
            </div>
            <div class="form-group">
                <label>Plant Id</label>
                <input type="text" name="pid" class="form-control" value="<%=rs.getInt(1) %>" readonly=""/>
            </div>
            <div class="form-group">
                <label>Plant Name</label>
                <input type="text" name="pname" class="form-control" value="<%=rs.getString(2) %>" readonly=""/>
            </div>
            <div class="form-group">
                <label>Plant Details</label>
                <textarea name="detail" class="form-control" readonly=""><%=rs.getString(3) %></textarea>
            </div>
            <div class="form-group">
                <label>Price</label>
                <input id="price" name="price" type="text" class="form-control" value="<%=rs.getString(4) %>"  readonly=""/>
            </div>
            <div class="form-group">
                <label>Quantity</label>
                <input name="quantity" id="quantity" type="number" class="form-control"/>
            </div>
            <div class="form-group">
                <label>Discount</label>
                <input name="discount" id="discount" type="text" class="form-control" readonly="" value="0"/>
            </div>
            <div class="form-group">
                <label>Total</label><span style="color:red;font-size: 10px;"> ( To get the total price click on total field)</span>
                <input name="total" id="total" type="text" class="form-control" readonly="" onclick="totalPrice()"/>
            </div>
            <input type="submit" class="btn btn-success" >
        </form> 
                </div>
                <div class="col-lg-3"></div>
            </div>
        </div>
            <script>
                function totalPrice()
                {
                    var p=document.getElementById("price").value;
                    var q=document.getElementById("quantity").value;
                    var d=document.getElementById("discount").value;
                    
                    var price=parseInt(p);
                    var quantity=parseInt(q);
                    var discount=parseInt(d);
                    
                    var total=price*quantity;
                    total=total*(100-discount)/100;
                    document.getElementById("total").value=total;
                }
            </script>   
                
        
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.js"></script>
    </body>
</html>
