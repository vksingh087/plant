<%@page import="plantkartbean.CompleteOrderBean"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="plantkartaction.PlantOrderAction"%>
<%
           String email=null;
           HttpSession sess=request.getSession();
          
            if(sess!=null)
            {
                email=sess.getAttribute("userSessionid").toString();
            }
            else
            {
                response.sendRedirect("login.jsp");
            }
         try
         {
            PlantOrderAction ac=new PlantOrderAction();
            ResultSet rs=ac.plantsForPayment(email);
            PlantOrderAction pac=new PlantOrderAction();
            
         
            while(rs.next())
            {
                if(rs.getString(10).equals("Success"))
                {
                    Random r=new Random();
                    int code=r.nextInt(999999);
                    int orderid=rs.getInt(1);
                    String user=rs.getString(2);
                    int plantid=rs.getInt(3);
                    String plantname=rs.getString(4);
                    int plantPrice=rs.getInt(6);
                    int quantity=rs.getInt(8);
                    CompleteOrderBean data=new CompleteOrderBean();
                    data.setCode(code);
                    data.setOrderId(orderid);
                    data.setUser(user);
                    data.setPlantId(plantid);
                    data.setPlantName(plantname);
                    data.setPayment(plantPrice);
                    data.setQuantity(quantity);
                    pac.insertCompleteOrder(data);
               
                }
            }
                response.sendRedirect("user.jsp");
        }
        catch(Exception e)
        {
                 response.sendRedirect("user.jsp"); 
        }


%>
