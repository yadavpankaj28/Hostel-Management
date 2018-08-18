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
         <%@include file="warden_header.jsp" %>
       
   <%!String a="",b="",c="",d="",e="",f="",g="",h="",i="",j="";%>   
       
   <br>
    <center> <h3>My Profile</h3><table border="0px" style="width:600px">
           
      <%         
        try
           {               
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/mycreation","root","");
               Statement stmt=con.createStatement();
               
               String x="select * from warden where email='"+uname+"'";
               
               ResultSet rs=stmt.executeQuery(x);
               while(rs.next())
               {
       a=rs.getString("wname");
       b=rs.getString("hostel");     
             c=rs.getString("gender");  
        d=rs.getString("desig");
                   e=rs.getString("mobile");
                   f=rs.getString("email");
                   g=rs.getString("address");
                   h=rs.getString("father");
                   i=rs.getString("econtact");
                   j=rs.getString("acdate");
                   
               }
             
           }
           catch(Exception ex)
           {
               out.print(ex);
           }
      
      %>
       
       
                <tr><th> &nbsp;Warden name &nbsp;</th><td><%=a%></td></tr>
                <tr><th> &nbsp;Hostel &nbsp;</th>  <td><%=b%></td></tr>
              <tr>  <th> &nbsp;Gender &nbsp;</th> <td><%=c%></td></tr>
               <tr> <th> &nbsp;Designation &nbsp;</th><td><%=d%></td></tr>
               <tr> <th> &nbsp;Mobile No. &nbsp;</th>  <td><%=e%></td></tr>
               <tr> <th> &nbsp;Email id  &nbsp;</th>  <td><%=f%></td></tr>
               <tr> <th> &nbsp;Address &nbsp;</th> <td><%=g%></td></tr>
               <tr> <th> &nbsp;Father`s Name &nbsp;</th><td><%=h%></td></tr>
               <tr> <th> &nbsp;Emergency Contact No. &nbsp;</th><td><%=i%></td></tr>
               <tr> <th> &nbsp;Account Date &nbsp;</th>   <td><%=j%></td></tr>
        
        </table></center><%@include file="demoadminfooter.jsp" %>
</html>
