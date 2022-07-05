
package plantkartservlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import plantkartaction.PlantAction;


public class PlantDeleteServlet extends HttpServlet {

    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
     
         String pid=request.getParameter("pid");
         int plantId=Integer.parseInt(pid);
         
         PlantAction ac=new PlantAction();
         if(ac.deletePlant(plantId))
         {
             response.sendRedirect("admin.jsp");
         }
         
         
    }

    
}
