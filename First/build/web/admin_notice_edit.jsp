<%-- 
    Document   : admin_notice_edit
    Created on : Nov 15, 2017, 11:40:39 PM
    Author     : omaneesshh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.sql.*" %>
       <%!String noti="",dt="",id="";%>
      <%
          
        try
           {
               
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/mycreation","root","");
               Statement stmt=con.createStatement();
                String notice=request.getParameter("id");
               String x="select * from notice where id='"+notice+"'";
               
               ResultSet rs=stmt.executeQuery(x);
               while(rs.next())
               {
                   id =rs.getString("id");
                  noti =rs.getString("notice");
               dt=rs.getString("ndate");               
                   
               }
               HttpSession ses=request.getSession();
               ses.setAttribute("nid", id);
             
           }
           catch(Exception ex)
           {
               out.print(ex);
           }
      
      %>
      <form action="admin_notice_update" method="post">
            Enter Notice <textarea  name="not" rows="5" class="form-control" cols="60"  style="resize: none"><%=noti%></textarea>
    <br><br>
  
    <input type="submit" value="Update Notice"><br>
    </form>
    </body>
</html>
