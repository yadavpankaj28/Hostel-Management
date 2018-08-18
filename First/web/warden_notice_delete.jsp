<%-- 
    Document   : admin_notice_delete
    Created on : Nov 15, 2017, 11:34:50 PM
    Author     : omaneesshh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
               String notice=request.getParameter("id");
               String x="delete from warden_notice where id="+notice+"";
               stmt.execute(x);
              response.sendRedirect("warden_notice.jsp");
             
           }
           catch(Exception ex)
           {
               out.print(ex);
           }
      
      %>
      
    </body>
</html>
