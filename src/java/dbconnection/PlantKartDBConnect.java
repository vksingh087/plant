
package dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;


public class PlantKartDBConnect 
{
    public static final String user="root";
    public static final String password="root";
    public static final String url="jdbc:mysql://localhost:3306/plantkarts";
    public static Connection con=null;
    static
    {
        try 
        {
           Class.forName("com.mysql.jdbc.Driver");
        } catch (Exception e) {
        }
    }
   public static Connection getPlantKartDBConnection()
   {
       try 
       {
            con = DriverManager.getConnection(url, user, password);
       } 
       catch (Exception e) 
       {
       }
       return con; 
   }
}
