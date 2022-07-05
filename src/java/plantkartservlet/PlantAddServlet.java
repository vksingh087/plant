
package plantkartservlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import plantkartaction.PlantAction;
import plantkartbean.PlantBean;


public class PlantAddServlet extends HttpServlet {

   
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String pid=request.getParameter("pid");
        String pname=request.getParameter("pname");
        String pdetail=request.getParameter("pdetail");
        String price=request.getParameter("price");
        String quantity=request.getParameter("quantity");
        
        int plantId=Integer.parseInt(pid);
        int plantPrice =Integer.parseInt(price);
        int quant=Integer.parseInt(quantity);
        
        PlantBean data=new PlantBean();
        data.setPid(plantId);
        data.setPlantName(pname);
        data.setPlantDetail(pdetail);
        data.setPrice(plantPrice);
        data.setQunatity(quant);
        
        PlantAction ac=new PlantAction();
        if(ac.addPlant(data))
        {
            response.sendRedirect("admin.jsp?msg=plant added successfully");
        }
        
        
       
    }

    
}
