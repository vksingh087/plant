
package plantkartservlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import plantkartaction.PlantOrderAction;


public class PlantPaymentSuccessServlet extends HttpServlet {

   
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id=request.getParameter("orderid");
        int orderid=Integer.parseInt(id);
        PlantOrderAction ac=new PlantOrderAction();
        boolean b=ac.paymentSuccess(orderid);
        if(b==true)
        {
            response.sendRedirect("admin.jsp");
        }
        
    }

   
}
