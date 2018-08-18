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
       
        <%!String notice="",dt="",id="",wname="";%>
      <%
          
        try
           {
                HttpSession hs=request.getSession();
            String x="";
            String gender=hs.getAttribute("gender").toString();
               
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/mycreation","root","");
               Statement stmt=con.createStatement();
               if(gender.equalsIgnoreCase("male"))
               {
                x= "select * from warden_notice where hostel='M' order by id desc";   
               }
               else if(gender.equalsIgnoreCase("female"))
               {
                   x= "select * from warden_notice where hostel='I' order by id desc";
               }
              ResultSet rs=stmt.executeQuery(x);
               while(rs.next())
               {
                   id =rs.getString("id");
                  notice =rs.getString("notice");
               dt=rs.getString("ndate");
               wname=rs.getString("warden_name");
                  %>
               Latest Notice :     "<%=notice%>"  on <%=dt%> by <%=wname%><hr>
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
