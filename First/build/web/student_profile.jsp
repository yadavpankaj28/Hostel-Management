<%-- 
    Document   : warden_info
    Created on : Nov 16, 2017, 1:30:59 AM
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
         <%@include file="header.jsp" %>
   <br><br>       
    <center> <h1>My profile</h1><table border="0px" style="width:600px">
        <%!String a="",b="",c="",d="",e="",f="",g="",h="",i="";%>   
      <%         
        try
           {               
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/mycreation","root","");
               Statement stmt=con.createStatement();
               
               String x="select * from student_reg order by rollno="+roll+"";
               
               ResultSet rs=stmt.executeQuery(x);
               while(rs.next())
               {
      
       a=rs.getString("name");
       b=rs.getString("email");     
             c=rs.getString("mobile");  
        d=rs.getString("fname");
                   e=rs.getString("fphone");
                   f=rs.getString("gender");
                   g=rs.getString("courseinfo");
                   h=rs.getString("sem");
                   i=rs.getString("rollno");
               }
             
           }
           catch(Exception ex)
           {
               out.print(ex);
           }
      
      %>
      
          <tr><th> &nbsp;Name &nbsp;</th><td><%=a%></td></tr>
                <tr><th> &nbsp;Email Id. &nbsp;</th>  <td><%=b%></td></tr>
                <tr><th> &nbsp;Mobile No. &nbsp;</th>  <td><%=c%></td></tr>
                <tr> <th> &nbsp;Father`s Name &nbsp;</th><td><%=d%></td></tr>
                <tr> <th> &nbsp;Father`s Email id  &nbsp;</th>  <td><%=e%></td></tr>
              <tr>  <th> &nbsp;Gender &nbsp;</th> <td><%=f%></td></tr>
               
               <tr> <th> &nbsp;Course &nbsp;</th>  <td><%=g%></td></tr>
               
               <tr> <th> &nbsp;Semester &nbsp;</th> <td><%=h%></td></tr>
               
               <tr> <th> &nbsp;Roll N. &nbsp;</th><td><%=i%></td></tr>
      
        </table></center><br>
        <%@include file="demoadminfooter.jsp"%>
</html>
