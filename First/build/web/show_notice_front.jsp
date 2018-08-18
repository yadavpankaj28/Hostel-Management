<%-- 
    Document   : show_notice_front
    Created on : Nov 27, 2017, 12:31:29 PM
    Author     : omaneesshh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      <%@page import="java.sql.*" %>
    </head>
    <body>
       
        <%!String notice="",dt="",id="";%>
      <%
          
        try
           {
               
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/mycreation","root","");
               Statement stmt=con.createStatement();
               
               String x="select * from notice order by id desc";
               
               ResultSet rs=stmt.executeQuery(x);
               while(rs.next())
               {
                   id =rs.getString("id");
                  notice =rs.getString("notice");
               dt=rs.getString("ndate");
                  %>
                  <%=dt%> : <%=notice%> 
                  <hr>
        <%
                   
               }
             
           }
           catch(Exception ex)
           {
               out.print(ex);
           }
      
      %>
      
    </body>
</html>
