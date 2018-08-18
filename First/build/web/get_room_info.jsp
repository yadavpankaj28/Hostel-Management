<%-- 
    Document   : get_room_info
    Created on : Nov 25, 2017, 12:48:24 PM
    Author     : omaneesshh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><%@page import="java.sql.*" %>
    <center>
        <div style="height:300px; overflow: auto">
        <table border="0px">
      <%!
      String hostel="",floor="",type="";
      %>
      
       <tr>  <th>Floor</th>
       <th>Room No.</th>
                  <th>Room Type</th>
                  <th>Status</th>
                 </tr>
      
      
      <%
      hostel=request.getParameter("hostel");
              floor=request.getParameter("floor");
              type=request.getParameter("type");
            try
           {    
               String x="";    
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/mycreation","root","");
               Statement stmt=con.createStatement();
               if(hostel.equals("I"))
               {
                  
           x="select * from hostel_i where type like '"+type+"%' and floor="+floor+"";
                   
               }
               else if(hostel.equals("M"))
               {
           x="select * from hostel_m where type like '"+type+"%' and floor="+floor+"";
                   }
                       
               
               
               ResultSet rs=stmt.executeQuery(x);
               while(rs.next())
               {
                   
                   String fl="",ro="",ty="",st="",flo="";
                   fl=rs.getString("floor");
                   ro=rs.getString("room_no");
                   ty=rs.getString("type");
                   st=rs.getString("status");
                   if(fl.equals("0") )
                   {
                       flo="Ground";
                       
                   }
                   else{flo=fl;}
                   if(st.equals("0"))
                   {
                       st="Unallocated";
                       %>
      
                   <tr>  <td><%=flo%></td>
                  <td><%=ro%></td>
                  <td><%=ty%></td>
                  <td><%=st%></td>
                  <td><input type="button" value="Allocate" onclick="allocate('<%=fl%>','<%=ro%>','<%=hostel%>','<%=ty%>')"></td>
                 </tr>
                 <%
                   }
                   else
                   {
                 st="Occupied";
                 %>
                         <tr>  <td><%=flo%></td>
                  <td><%=ro%></td>
                  <td><%=ty%></td>
                  <td><%=st%></td>
                  
                 </tr>
                 <%
                   }
                  
                 
      %>
    
                  
                  
                  
                
        <%
                   
               }
             
           }
           catch(Exception ex)
           {
               out.print(ex);
           }
      
      %>
   </table>
        </div>
    </center>
    </body>
</html>
