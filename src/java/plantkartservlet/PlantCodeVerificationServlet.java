
package plantkartservlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import plantkartaction.DeliveryPlantAction;


public class PlantCodeVerificationServlet extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String c=request.getParameter("code");
       int code=Integer.parseInt(c);
       String email=request.getParameter("email");
       
       DeliveryPlantAction ac=new DeliveryPlantAction();
       if(ac.codeVerification(email, code))
       {
           response.sendRedirect("deliveryPlants.jsp?msg=Varification is done Successfully..");
       }
       else
       {
           response.sendRedirect("deliveryPlants.jsp?msg=Please check your email and code..");
       }
    }

    
}
