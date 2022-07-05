
package plantkartaction;

import dbconnection.PlantKartDBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import static plantkartaction.LoginAction.con;


public class ChatAction {
    static Connection con=PlantKartDBConnect.getPlantKartDBConnection();
    
    public boolean userChatMessage(String email,String msg)
    {
        boolean b=false;
        
        try 
        {
           PreparedStatement ps=con.prepareStatement("insert into chat(email, usermsg) values(?,?) ");
           ps.setString(1, email);   
           ps.setString(2, msg);
           int i=ps.executeUpdate();
           if(i>0)
           {
               b=true;
           }
        } catch (Exception e) {
        }
        return b;
    }
    public ResultSet getUserMessege(String email)
    {
        ResultSet rs=null;
        try
        {
          Statement smt=  con.createStatement();
          rs=smt.executeQuery("select * from chat where email='"+email+"'");
               
        }catch(Exception e)
        {
            
        }
        return rs;
    }
    
    
}
