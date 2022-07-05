
package plantkartservlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import plantkartaction.PlantOrderAction;
import plantkartbean.PlantOrderBean;


public class PlantOrderServlet extends HttpServlet {

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email=request.getParameter("email");
        String pid=request.getParameter("pid");
        String name=request.getParameter("pname");
        String detail=request.getParameter("detail");
        String price=request.getParameter("price");
        String quantity=request.getParameter("quantity");
        String discount=request.getParameter("discount");
        String total=request.getParameter("total");
        
        int plantId=Integer.parseInt(pid);
        int plantPrice=Integer.parseInt(price);
        int plantQuantity=Integer.parseInt(quantity);
        int plantDiscount=Integer.parseInt(discount);
        int plantsTotal=Integer.parseInt(total);
        
        PlantOrderBean data=new PlantOrderBean();
        
        data.setEmail(email);
        data.setPlantId(plantId);
        data.setPlantName(name);
        data.setPlantDetail(detail);
        data.setPrice(plantPrice);
        data.setQuantity(plantQuantity);
        data.setDiscount(plantDiscount);
        data.setTotal(plantsTotal);
        
        PlantOrderAction ac=new PlantOrderAction();
       boolean b=ac.setPlantsOrder(data);
       if(b==true)
       {
           response.sendRedirect("payment.jsp");
       }
       else
       {
           response.sendRedirect("index.jsp");
       }
        
        
    }

}