
package plantkartaction;

import dbconnection.PlantKartDBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class LoginAction 
{
   static Connection con=PlantKartDBConnect.getPlantKartDBConnection();
   public boolean checkUser(String email,String password)
   {
       boolean b=false;
       try
       {
           
           PreparedStatement ps=con.prepareStatement("select * from signup where email=? and password=?");
           ps.setString(1, email);
           ps.setString(2, password);
           ResultSet rs=ps.executeQuery();
           if(rs.next())
           {
              b=true; 
           }
           else
           {
               b=false;
           }
       }
       catch(Exception e)
       {
           
       }
       return b;
   }
   
   public boolean checkAdmin(String email,String password)
   {
       boolean b=false;
       try 
       {
              PreparedStatement ps=con.prepareStatement("select * from admin where email=? and password=?");
              ps.setString(1, email);
              ps.setString(2, password);
              ResultSet rs=ps.executeQuery();
              if(rs.next())
              {
                  b=true;
              }
              else
              {
                  b=false;
              }
              
       } catch (Exception e) {
       }
       return b;
       
   }
   
   
   
   
   
   
   
   
   
   
   
   
   
   
}
