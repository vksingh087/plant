
package plantkartaction;

import dbconnection.PlantKartDBConnect;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class UserPlantAction {
    
    static Connection con=PlantKartDBConnect.getPlantKartDBConnection();
    public ResultSet getPandingOrder(String email)
    {
        ResultSet rs=null;
        try 
        {
            Statement smt=con.createStatement();
            rs=smt.executeQuery("select * from plantorder where status='pending' and email='"+email+"'");
           
        } catch (Exception e) {
        }
        return rs;
           
    }
    
    public ResultSet getSuccessOrder(String email)
    {
        ResultSet rs=null;
        try 
        {
            Statement smt=con.createStatement();
            rs=smt.executeQuery("select * from plantorder where status='Success' and email='"+email+"'");
           
        } catch (Exception e) {
        }
        return rs;
           
    }
}
