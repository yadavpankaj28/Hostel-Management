<%-- 
    Document   : warden_complaint_show
    Created on : Nov 25, 2017, 4:21:57 PM
    Author     : omaneesshh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body> <%@page import="java.sql.*" %>
          <%!String complaint="",dt="",id="",tm,x="",sname="";%>
      <%
          
        try
           {
               HttpSession ses=request.getSession();
               String hostel=(String)ses.getAttribute("hostel");
         if(hostel.equals("I"))
         {
          x="select * from complaint_i order by cid desc";   
         }
         else if(hostel.equals("M"))
         {
         x="select * from complaint_m order by cid desc";    
         }
         
         Class.forName("com.mysql.jdbc.Driver");
               Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/mycreation","root","");
               Statement stmt=con.createStatement();
               ResultSet rs=stmt.executeQuery(x);
               while(rs.next())
               {
                   id =rs.getString("cid");
                  complaint =rs.getString("complaint");
               dt=rs.getString("cdate");
               tm=rs.getString("ctime");
               sname=rs.getString("sname");
                  %>
                  <%=sname%>'s Complaint "<%=complaint%>" on  <%=dt%> at  <%=tm%> <u><a onclick="demo(<%=id%>)">Show</a></u><hr>
        <%
               }}
           catch(Exception ex)
           {
               out.print(ex);
           }
              
      
      %>
      
    </body>
</html>
