
package plantkartaction;

import dbconnection.PlantKartDBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import plantkartbean.CompleteOrderBean;
import plantkartbean.PlantOrderBean;


public class PlantOrderAction {
    static Connection con=PlantKartDBConnect.getPlantKartDBConnection();
    
    public boolean setPlantsOrder(PlantOrderBean data)
    {
        boolean b=false;
        try
        {
            PreparedStatement ps=con.prepareStatement("insert into plantorder(email,plantid,plantName,plantDetail,plantPrice,discount,quantity,total) value(?,?,?,?,?,?,?,?)");
            ps.setString(1, data.getEmail());
            ps.setInt(2, data.getPlantId());
            ps.setString(3, data.getPlantName());
            ps.setString(4, data.getPlantDetail());
            ps.setInt(5, data.getPrice());
            ps.setInt(6, data.getDiscount());
            ps.setInt(7, data.getQuantity());
            ps.setInt(8, data.getTotal());
            int i=ps.executeUpdate();
            if(i>0)
                b=true;
        }
        catch(Exception e)
        {
            
        }
        return b;
    }
    public ResultSet plantsForPayment(String email)
    {
        ResultSet rs=null;
        try
        {
            Statement smt=con.createStatement();
            rs=smt.executeQuery("select * from plantorder where email='"+email+"'");
        }
        catch(Exception e)
        {
            
        }
        return rs;
    }
    
    public int orderInKart(String email)
    {
        int i=0;
        try
        {
            Statement smt=con.createStatement();
            ResultSet rs=smt.executeQuery("select count(status) from plantorder where email='"+email+"' and status='pending'");
            rs.next();
            i=rs.getInt(1);
        }
        catch(Exception e)
        {
            
        }
        return i;
    }
    public boolean removeFromKart(int orderId)
    {
        boolean b=false;
        
        try {
                Statement smt=con.createStatement();
                int i=smt.executeUpdate("delete from plantorder where orderid='"+orderId+"'");
                if(i>0)
                {
                    b=true;
                }
        } 
        catch (Exception e) {
        }
        return b;
    }
    
    public ResultSet allPlantOrder()
    {
        ResultSet rs=null;
        try
        {
            Statement smt=con.createStatement();
            rs=smt.executeQuery("select * from plantorder");
        }
        catch(Exception e)
        {
            
        }
        return rs;
    }
    public boolean paymentSuccess(int orderid)
    {
        boolean b=false;
        try 
        {
                Statement smt=con.createStatement();   
                int i=smt.executeUpdate("update plantorder set status='Success' where orderid='"+orderid+"'");
                if(i>0)
                    b=true;
        } 
        catch (Exception e) {
        }
        return b;
    }
    public boolean deletePlantOrder(int orderId)
    {
        boolean b=true;
        try 
        {
            Statement smt=con.createStatement();
            int i=smt.executeUpdate("delete from plantorder where orderid='"+orderId+"'");
            if(i>0)
                b=true;
        }
        catch (Exception e) 
        {
             
        }
        return b;
    }
    public boolean insertCompleteOrder(CompleteOrderBean data)
    {
        boolean b=false;
        try 
        {
            PreparedStatement smt=con.prepareStatement("insert into completeorder (orderid,plantid,user,plantname,payment,quantity,code) values(?,?,?,?,?,?,?)");
            smt.setInt(1, data.getOrderId());
            smt.setInt(2, data.getPlantId());
            smt.setString(3, data.getUser());
            smt.setString(4, data.getPlantName());
            smt.setInt(5, data.getPayment());
            smt.setInt(6, data.getQuantity());
            smt.setInt(7, data.getCode());
            int i= smt.executeUpdate();
            if(i>0)
                b=true;
        } catch (Exception e) {
        }
        return b;
    }
    public ResultSet getCompleteOrder(String email)
    {
        ResultSet rs=null;
        try 
        {
            Statement smt=con.createStatement();
            rs=smt.executeQuery("select * from completeorder where user='"+email+"'");
        }
        catch (Exception e) {
        }
        return rs;
    }
}
