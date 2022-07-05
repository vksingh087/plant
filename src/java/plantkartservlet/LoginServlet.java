/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package plantkartservlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import plantkartaction.LoginAction;

public class LoginServlet extends HttpServlet {

   
  
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
             String person=request.getParameter("person");
             String email=request.getParameter("user");
             String password=request.getParameter("password");
             LoginAction ac=new LoginAction();
             boolean b=ac.checkUser(email, password);
             if(person.equals("user"))
             {
                 if(b==true)
                 {
                     HttpSession session=request.getSession();
                     session.setAttribute("userSessionid",email);
                     response.sendRedirect("user.jsp");
                 }
                 else
                 {
                     response.sendRedirect("login.jsp");
                 }
                     
             }
             else if(person.equals("admin"))
             {
                 boolean b1=ac.checkAdmin(email, password);
                 if(b1==true)
                 {
                     HttpSession session=request.getSession();
                     session.setAttribute("adminsessionid",email);
                     response.sendRedirect("admin.jsp");
                 }
                 else
                 {
                     response.sendRedirect("error.jsp");
                 }
             }
    }

 
}
