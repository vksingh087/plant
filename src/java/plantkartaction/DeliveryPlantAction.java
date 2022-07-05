
package plantkartaction;

import dbconnection.PlantKartDBConnect;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;


public class DeliveryPlantAction 
{
  static Connection con=PlantKartDBConnect.getPlantKartDBConnection();
 public boolean codeVerification(String email,int code)
 {
    boolean b=false;  
    
     try 
     {
         Statement smt=con.createStatement();
         ResultSet rs=smt.executeQuery("select * from completeorder where user='"+email+"' and code='"+code+"'");
         if(rs.next())
         {
            b=true; 
            smt.executeUpdate("update completeorder set deliverystatus='Success' where user='"+email+"' and code='"+code+"'");
         }
     } 
     catch (Exception e) 
     {
         
     }
     return b;
 }
 public ResultSet getAllDeliverdOrdered()
 {
      ResultSet rs=null;
       try 
     {
         Statement smt=con.createStatement();
          rs=smt.executeQuery("select * from completeorder");
        
     } 
     catch (Exception e) 
     {
         
     }
       return rs;
 }
}
