
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.css" type="text/css" rel="stylesheet"/>
    </head>
    <body>
       <div class="container-fluid">
            <div class="row">
                <%@include file="top.jsp" %> 
            </div>
                <%@include file="nav.jsp" %>
                <div class="row">
                    <div class="col-lg-4">
                        
                    </div>
                    <div class="col-lg-4">
                        <form method="post" action="LoginServlet">
                            <fieldset class="border p-3">
                                <legend class="w-auto">Login</legend>
                            <div class="form-group">
                                <input type="radio" name="person" value="user"/>User&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="radio" name="person" value="admin"/>Admin&nbsp;&nbsp;&nbsp;&nbsp;
                            </div>
                            <div class="form-group">
                                <lebal>USER</lebal>
                                <input type="text" name="user" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <lebal>PASSWORD</lebal>
                                <input type="password" name="password" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <input type="submit" value="Log In" class="btn btn-success"/>&nbsp;&nbsp;&nbsp;&nbsp;
                                <a href="#">Forgot Password</a>&nbsp;&nbsp;&nbsp;&nbsp;
                                <a href="signup">Sign Up</a>
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
