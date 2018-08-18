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
       <%@include file="admin_header.jsp" %>       
<section class="teachers-area">
	<div class="container">
		<div class="row teachers-wapper-01">
                <table border="1px" width="1200px">
            <tr height="50px">
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
                <th> &nbsp;Room &nbsp;</th>
            </tr>
      <%         
        try
           {               
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/mycreation","root","");
               Statement stmt=con.createStatement();
               
               String x="select * from student_reg order by name ";
               
               ResultSet rs=stmt.executeQuery(x);
               while(rs.next())
               {
      %>
      <tr height="50px">    
                  <td><%=rs.getString("name")%></td>
                  <td><%=rs.getString("email")%></td>
                  <td><%=rs.getString("mobile")%></td>
                  <td><%=rs.getString("fname")%></td>
                  <td><%=rs.getString("fphone")%></td>
                  <td><%=rs.getString("femail")%></td>
                  <td><%=rs.getString("gender")%></td>
                  <td><%=rs.getString("courseinfo")%></td>
                  <td><%=rs.getString("sem")%></td>
                  <td><%=rs.getString("rollno")%></td>
                  <td><%=rs.getString("room")%></td>
                  
      </tr>
                  
                
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
		</div>											
		
</section>
      <%@include file="demoadminfooter.jsp" %>
</html>
