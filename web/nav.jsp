 <%@page import="plantkartaction.PlantOrderAction"%>
<nav class="navbar bg-success navbar-expand-sm navbar-dark">
	   <a href="#" class="navbar-brand">
	   
           <img src="img/logo.png" style="width:35px; height:35px; border-radius:70px;">&nbsp;&nbsp;PlantKarts
	   </a>
	   <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#menu">
	    <span class="navbar-toggler-icon"></span>
	   </button>
           <%
                  String email1=null;
                  
                    HttpSession sess1=request.getSession();
                    if(sess1!=null)
                    {
                        try
                        {
                            email1=sess1.getAttribute("userSessionid").toString();
                        }
                        catch(Exception e)
                        {
                            email1=" ";
                        }
                    }
                    
                    
                    PlantOrderAction aac=new PlantOrderAction();
                    int i=aac.orderInKart(email1);
                    
                  
               
            %>
	   <div id="menu" class="navbar-collapse collapse">
	     <ul class="nav navbar-nav">
		    <li class="nav-item"><a href="index.jsp" class="nav-link">Home</a></li>
		    <li class="nav-item"><a href="#" class="nav-link">Service</a></li>
		    <li class="nav-item"><a href="#" class="nav-link">Gallary</a></li>
		    <li class="nav-item"><a href="#" class="nav-link">About Us</a></li>
                    <li class="nav-item" ><a href="user.jsp" class="nav-link" style="color:white;"><%=email1%></a></li>
                    
                    <%
                        if(!email1.equals(" "))
                        {
                    %>    
                    <li class="nav-item"><a href="logout.jsp" class="nav-link" style="color:white">Logout</a></li>
                    <%
                        }
                    %>
                    <li><a href="payment.jsp"><img src="img/cart.png" style="width: 40px; height: 40px;"><sup><span style="font-weight: 800;font-size: 20px;color:white"><%=i%></span></sup></a></li>
	     </ul>
             
	   </div>
	
	
	
	</nav>
