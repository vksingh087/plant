
package plantkartservlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import plantkartaction.ChatAction;


public class UserChatServlet extends HttpServlet {

   

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         
        String msg=request.getParameter("usermsg");
        String email=request.getParameter("email");
        ChatAction ac=new ChatAction();
        if(ac.userChatMessage(email, msg))
        {
            response.sendRedirect("user.jsp?msg=success");
        }
        
    }

    
}
