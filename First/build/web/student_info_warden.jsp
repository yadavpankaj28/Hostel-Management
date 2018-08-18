<%-- 
    Document   : student_info
    Created on : Nov 16, 2017, 1:43:34 AM
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
       <%@include file="warden_header.jsp" %>
       <br>
   
       
    <center>
        <table border="1px">
            <tr>
                <th> &nbsp;Student name &nbsp;</th>
                <th> &nbsp;Email &nbsp;</th>
                <th> &nbsp;Mobile No. &nbsp;</th>
                <th> &nbsp;Father`s Name &nbsp;</th>
                <th> &nbsp;Father`s Phone No.  &nbsp;</th>
                <th> &nbsp;Father`s Email id  &nbsp;</th>
                <th> &nbsp;Gender &nbsp;</th>
                <th> &nbsp;Course &nbsp;</th>
                <th> &nbsp;Semester &nbsp;</th>
                <th> &nbsp;Roll No. &nbsp;</th>
                <th> &nbsp;Preferred Room &nbsp;</th>
                
                
            </tr>
      <%         
        try
           {         
                String hostel=(String)ses.getAttribute("hostel");
            String x="";    
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/mycreation","root","");
               Statement stmt=con.createStatement();
               if(hostel.equals("I"))
               {
           x="select * from student_reg where gender='female' order by name ";    
               }
               else if(hostel.equals("M"))
                       {
                           x="select * from student_reg where gender='male' order by name "; 
                       }
               
               
               ResultSet rs=stmt.executeQuery(x);
               while(rs.next())
               {
                 
      %>
      <tr>  <td><%=rs.getString("name")%></td>
                  <td><%=rs.getString("email")%></td>
                  <td><%=rs.getString("mobile")%></td>
                  <td><%=rs.getString("fname")%></td>
                  <td><%=rs.getString("fphone")%></td>
                  <td><%=rs.getString("femail")%></td>
                  <td><%=rs.getString("gender")%></td>
                  <td><%=rs.getString("courseinfo")%></td>
                  <td><%=rs.getString("sem")%></td>
                  <td><%=rs.getString("rollno")%></td>
                  <td><%=rs.getString("room")%></td></tr>
                  
                  
                  
                
        <%
                   
               }
             
           }
           catch(Exception ex)
           {
               out.print(ex);
           }
      
      %>
        </table>
    </center>
      <br>
      <%@include file="demoadminfooter.jsp"%>
</html>
