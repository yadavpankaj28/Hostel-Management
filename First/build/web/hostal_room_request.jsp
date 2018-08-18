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
          <script>
              function allocate(x)
              {

        window.open("room_allocation.jsp?req="+x+"","","title=no status=no width=1200 height=700 left=100 top=50");
              }
              
              
          </script><br><center>
          <h3>Room Requests</h3><br>
          <div style="height:300px;overflow: auto">
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
                <th> &nbsp;Request Date &nbsp;</th>
                <th> &nbsp;Allocate Room &nbsp;</th>
                
                
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
           x="select * from hostel_i_req where status='0' order by req_no  ";    
               }
               else if(hostel.equals("M"))
                       {
                           x="select * from hostel_m_req where status='0' order by req_no "; 
                       }
               
               
               ResultSet rs=stmt.executeQuery(x);
               while(rs.next())
               {
                   String roll=rs.getString("roll_no");
                   String req=rs.getString("req_no");
      %>
      
      <tr>  
          <td><%=rs.getString("req_no")%></td>
          <td><%=rs.getString("stu_name")%></td>
                  <td><%=rs.getString("course")%></td>
                  <td><%=rs.getString("sem")%></td>
                  <td><%=rs.getString("roll_no")%></td>
                  <td><%=rs.getString("type")%></td>
                  
                  <td><%=rs.getString("email")%></td>
                  <td><%=rs.getString("phone")%></td>
                  <td><%=rs.getString("req_date")%></td>
                  
                  
                  <td><input type="button" value="Allocate" onclick="allocate(<%=req%>)"></td>
      
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
        </center><br><br>
        <%@include file="demoadminfooter.jsp" %>
</html>
