
    
    <table class="table table-dark table-bordered">
            <tr>
                <th>SNO</th>
                <th>EMAIL</th>
                <th>NAME</th>
                <th>MOBILE</th>
                <th>PASSWORD</th>
                <th>ADDRESS</th>
                <th>DELETE</th>
                <th>UPDATE</th>
            </tr>
        <%
           SignUpAction ac=new SignUpAction(); 
           ResultSet rs=ac.getCustomers();
           int i=1;
           while(rs.next())
           {
        %>
        <tr>
            <td><%=i%></td>
            <td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%></td>
            <td><%=rs.getString(5)%></td>
            <td><a href="DeletePersonServlet?email=<%=rs.getString(1)%>" onclick="return confirm('Are you sure want to delete?')"><img src="img/delete.png" style="width: 20px;height: 25px;"></a></td>
            <td>
                <a href="admin.jsp?email=<%=rs.getString(1)%>" class="btn btn-success btn-sm">  Update 
                </a>
            </td>
        </tr>
        
             <%
               i++;
           }
                 
             %>    
        </table>
        <%
                 rs.beforeFirst();
                 String id=null,name=null,mobile=null,address=null,password=null;
                 while(rs.next())
                 {
                     if(rs.getString(1).equals(emailid))
                     {
                         id=rs.getString(1);
                         name=rs.getString(2);
                         mobile=rs.getString(3);
                         password=rs.getString(4);
                         address=rs.getString(5);
                     }
                 }
             
             
             %>
      
        

