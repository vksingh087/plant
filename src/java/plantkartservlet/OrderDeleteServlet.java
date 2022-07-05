
package plantkartservlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import plantkartaction.PlantOrderAction;


public class OrderDeleteServlet extends HttpServlet {



    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
          String id=request.getParameter("orderid");
          int orderId=Integer.parseInt(id);
          PlantOrderAction ac=new PlantOrderAction();
          if(ac.deletePlantOrder(orderId))
          {
              response.sendRedirect("admin.jsp");
          }
          
    }

    
}
