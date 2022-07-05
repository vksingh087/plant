
package plantkartservlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import plantkartaction.SignUpAction;
import plantkartbean.SignUpBean;


public class SignUpServlet extends HttpServlet {
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String email=request.getParameter("email");
        String mobile=request.getParameter("mobile");
        String name=request.getParameter("user");
        String password=request.getParameter("password");
        
        SignUpBean data=new SignUpBean();
        data.setEmail(email);
        data.setMobile(mobile);
        data.setUser(name);
        data.setPassword(password);
        
        SignUpAction ac=new SignUpAction();
        boolean b=ac.signUpRegister(data);
        if(b==true)
            response.sendRedirect("login.jsp");
        else
            response.sendRedirect("error.jsp");
             
        
        
    }

    
}
