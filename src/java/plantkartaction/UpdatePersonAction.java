
package plantkartaction;

import dbconnection.PlantKartDBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import plantkartbean.SignUpBean;


public class UpdatePersonAction 
{
  public boolean updateUser(SignUpBean data)
  {
      boolean b=false;
        try
        {
            Connection con=PlantKartDBConnect.getPlantKartDBConnection();
            PreparedStatement ps=con.prepareStatement("update signup set name=?, mobile=?,password=?, address=? where email=?");
            ps.setString(1, data.getUser());
            ps.setString(2, data.getMobile());
            ps.setString(3, data.getPassword());
            ps.setString(4, data.getAddress());
            ps.setString(5,data.getEmail());
            int i=ps.executeUpdate();
            if(i>0)
            {
                b=true;
            }
            
        }
        catch(Exception e)
        {
       
        }
   return b;
  }
   
}
