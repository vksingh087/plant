
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
            String msg=" ";
            msg=request.getParameter("msg");
         %>
        <div class="container-fluid">
            <div class="row">
                <%@include file="top.jsp" %> 
            </div>
            <div class="row">
                <div class="col-4"></div>
                <div class="col-4">
                    <% if(msg!=null)
                    {
                        
                        %>
                    <h4 style="color:green"><%=msg%></h4>
                    <%
                        
                    }
                    %>
                </div>
                <div class="col-4"></div>
            </div>
            <div class="row mt-5">
                <div class="col-lg-4">
                    
                </div>
                <div class="col-lg-4">
                    <form action="PlantCodeVerificationServlet" method="post">
                        <fieldset class="border p-3">
                            <legend class="w-auto">Plants Delivery Process</legend>
                        <div class="form-group">
                            <label>Email</label>
                            <input type="text" class="form-control" name="email"/>
                        </div> 
                        <div class="form-group">
                            <label>Code</label>
                            <input type="text" class="form-control" name="code"/>
                        </div> 
                        <div class="form-group">
                            
                            <input type="submit" class="form-control btn btn-success"/>
                        </div> 
                        </fieldset>
                    </form>
                </div>
                <div class="col-lg-4">
                    
                </div>
            </div>
        </div>
        
         <script src="js/jquery.js"></script>
        <script src="js/bootstrap.js"></script>
    </body>
</html>
