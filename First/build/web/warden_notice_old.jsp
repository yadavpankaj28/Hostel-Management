<%-- 
    Document   : admin_notice_old
    Created on : Nov 15, 2017, 11:27:55 PM
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
             HttpSession ses=request.getSession();   
         String    hostel=(String)ses.getAttribute("hostel");
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/mycreation","root","");
               Statement stmt=con.createStatement();
               
               String x="select * from warden_notice where hostel='"+hostel+"' order by id desc";
               
               ResultSet rs=stmt.executeQuery(x);
               
               
               
               
               while(rs.next())
               {
                   id =rs.getString("id");
                  notice =rs.getString("notice");
               dt=rs.getString("ndate");
                  %>
                  <%=dt%> : <%=notice%> <a onclick="demo(<%=id%>)" >Edit</a>
                  <a href="warden_notice_delete.jsp?id=<%=id%>">Delete</a><hr>
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
