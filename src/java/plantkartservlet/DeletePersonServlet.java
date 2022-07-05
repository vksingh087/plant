
package plantkartservlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import plantkartaction.SignUpAction;


public class DeletePersonServlet extends HttpServlet {

    

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        String email=request.getParameter("email");
        SignUpAction ac=new SignUpAction();
        boolean b=ac.deletePerson(email);
        if(b==true)
        {
            response.sendRedirect("admin.jsp");
        }
    }

    
}
