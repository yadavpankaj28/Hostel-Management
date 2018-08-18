<%-- 
    Document   : hostal_room_info
    Created on : Nov 16, 2017, 1:56:22 AM
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
         
          <%
         hostel =(String)ses.getAttribute("hostel");
          %><br>
    <center><h3>Allocated Rooms</h3>
          <table border="0px">
            <tr>
                <th> &nbsp;Request No. &nbsp;</th>
                <th> &nbsp;Student name &nbsp;</th>
                <th> &nbsp;Course &nbsp;</th>
                <th> &nbsp;Semester &nbsp;</th>
                <th> &nbsp;Roll No. &nbsp;</th>
                <th> &nbsp;Preferred Room Type &nbsp;</th>
                <th> &nbsp;Email &nbsp;</th>
                <th> &nbsp;Mobile No. &nbsp;</th>
                <th> &nbsp;Allocate Date &nbsp;</th>
                <th> &nbsp;Floor &nbsp;</th>
                <th> &nbsp;Room No. &nbsp;</th>
                <th> &nbsp;Allocate Room Type &nbsp;</th>
                <th> &nbsp;Hostel &nbsp;</th>
                
                
            </tr>
      <%         
        try
           {         
                
                String x="";
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/mycreation","root","");
               Statement stmt=con.createStatement();
               if(hostel.equals("I"))
               {
           x="select * from hostel_i_allot  order by req_no  ";    
               }
               else if(hostel.equals("M"))
                       {
                           x="select * from hostel_m_allot  order by req_no "; 
                       }
               
               
               ResultSet rs=stmt.executeQuery(x);
               while(rs.next())
               {
                  
                   String req=rs.getString("req_no");
      %>
      
      <tr>  
          <td><%=rs.getString("req_no")%></td>
          <td><%=rs.getString("stu_name")%></td>
                  <td><%=rs.getString("course")%></td>
                  <td><%=rs.getString("sem")%></td>
                  <td><%=rs.getString("roll")%></td>
                  <td><%=rs.getString("preftype")%></td>
                  <td><%=rs.getString("email")%></td>
                  <td><%=rs.getString("phone")%></td>
                  <td><%=rs.getString("date")%></td>
                  <td><%=rs.getString("floor")%></td>
                  <td><%=rs.getString("roomno")%></td>
                  <td><%=rs.getString("allottype")%></td>
                  <td><%=hostel%></td>
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
    </center><br><br>
      
      <%@include file="demoadminfooter.jsp" %>
</html>
