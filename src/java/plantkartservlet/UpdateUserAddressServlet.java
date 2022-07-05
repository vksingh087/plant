
package plantkartservlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import plantkartaction.SignUpAction;


public class UpdateUserAddressServlet extends HttpServlet {

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        String email=request.getParameter("email");
        String address=request.getParameter("address");
        SignUpAction ac=new SignUpAction();
        boolean b=ac.updateUserAddress(email, address);
        if(b==true)
        {
            response.sendRedirect("user.jsp");
        }
        
        
    }

    
}
