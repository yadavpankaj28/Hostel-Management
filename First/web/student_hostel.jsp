<%-- 
    Document   : student_hostel
    Created on : Nov 25, 2017, 2:40:39 PM
    Author     : omaneesshh
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%@include file="header.jsp"%>
       <center><h1>Room Allocation Info</h1>
       
            <table border="0px">
        <%         
        try
           {
               String x="",hostel="";
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/mycreation","root","");
               Statement stmt=con.createStatement();
               if(gender.equals("male"))
               {
           x="select * from hostel_m_allot where roll="+roll+" ";    
           hostel="M";
               }
               else if(gender.equals("female"))
                       {
                           x="select * from hostel_i_allot  where roll="+roll+" "; 
                           hostel="I";
                       }
               ResultSet rs=stmt.executeQuery(x);
               while(rs.next())
               {
      %>
      <tr>  
          
              <th> &nbsp;Student name &nbsp;</th>
              <td><%=rs.getString("stu_name")%></td>
      </tr>
      <tr>  
          <th> &nbsp;Course &nbsp;</th>
      <td><%=rs.getString("course")%></td>
      </tr>
      <tr><th> &nbsp;Semester &nbsp;</th><td><%=rs.getString("sem")%></td></tr>
          <tr>      <th> &nbsp;Roll No. &nbsp;</th><td><%=rs.getString("roll")%></td></tr>
              <tr>  <th> &nbsp;Preferred Room Type &nbsp;</th><td><%=rs.getString("preftype")%></td></tr>
                <tr><th> &nbsp;Email &nbsp;</th><td><%=rs.getString("email")%></td></tr>
                <tr><th> &nbsp;Mobile No. &nbsp;</th><td><%=rs.getString("phone")%></td></tr>
               <tr> <th> &nbsp;Allocate Date &nbsp;</th><td><%=rs.getString("date")%></td></tr>
               <tr> <th> &nbsp;Floor &nbsp;</th><td><%=rs.getString("floor")%></td></tr>
              <tr>  <th> &nbsp;Room No. &nbsp;</th><td><%=rs.getString("roomno")%></td></tr>
              <tr>  <th> &nbsp;Allocate Room Type &nbsp;</th><td><%=rs.getString("allottype")%></td></tr>
              <tr>  <th> &nbsp;Hostel &nbsp;</th><td><%=hostel%></td></tr><%
                   
               }
             
           }
           catch(Exception ex)
           {
               out.print(ex);
           }
      
      %>
        </table>
    </center><br></br><%@include file="demoadminfooter.jsp"%>
</html>
