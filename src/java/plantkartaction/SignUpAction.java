
package plantkartaction;

import dbconnection.PlantKartDBConnect;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import plantkartbean.SignUpBean;


public class SignUpAction {
    
   static Connection con=PlantKartDBConnect.getPlantKartDBConnection();
    public boolean signUpRegister(SignUpBean data)
    {
        boolean b=false;
        
        try 
        {
            
            Statement smt=con.createStatement();
            int i=smt.executeUpdate("insert into signup (email,name,mobile,password) values('"+data.getEmail()+"','"+data.getUser()+"','"+data.getMobile()+"','"+data.getPassword()+"')");
            if(i>0)
                b=true;
            else
                b=false;
              
        } 
        catch (Exception e) 
        {
        }
        return b;
    }
    
    public  ResultSet getCustomers()
    {
        ResultSet rs=null;
        try 
        {
               Statement smt=con.createStatement();
               rs=smt.executeQuery("select * from signup");
        } catch (Exception e) {
        }
         return rs;   
    }
    public boolean deletePerson(String email)
    {
        boolean b=false;
        try 
        {
              Statement smt=con.createStatement();
              int i=smt.executeUpdate("delete from signup where email='"+email+"'");
              if(i>0)
                  b=true;
        }
        catch (Exception e) {
        }
        return true;
    }
    public boolean updateUserAddress(String email,String address)
    {
        boolean b=false;
        try
        {
              Statement smt=con.createStatement();
              int i=smt.executeUpdate("update signup set address='"+address+"' where email='"+email+"'");
              if(i>0)
                  b=true;
        }
        catch(Exception e)
        {
            
        }
        return b;
    }
    public ResultSet getUser(String email)
    {
       
        ResultSet rs=null;
        try 
        {
               Statement smt=con.createStatement();
               rs=smt.executeQuery("select * from signup where email='"+email+"'");
        } catch (Exception e) {
        }
         return rs; 
        
    }
}
