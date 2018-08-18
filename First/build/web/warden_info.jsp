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
       <%@include file="admin_header.jsp" %>
       

<section class="teachers-area">
	<div class="container">
		<div class="row teachers-wapper-01">
			<table border="1px" width="1200px">
            <tr height="50px">
                <th> &nbsp;Warden name &nbsp;</th>
                <th> &nbsp;Hostel &nbsp;</th>
                <th> &nbsp;Gender &nbsp;</th>
                <th> &nbsp;Designation &nbsp;</th>
                <th> &nbsp;Mobile No. &nbsp;</th>
                <th> &nbsp;Email id  &nbsp;</th>
                <th> &nbsp;Address &nbsp;</th>
                <th> &nbsp;Father`s Name &nbsp;</th>
                <th> &nbsp;Emergency Contact No. &nbsp;</th>
                <th> &nbsp;Account Status &nbsp;</th>
                <th> &nbsp;Account Date &nbsp;</th>
            </tr>
      <%         
        try
           {               
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/mycreation","root","");
               Statement stmt=con.createStatement();
               
               String x="select * from warden order by wname ";
               String st="";
               ResultSet rs=stmt.executeQuery(x);
               while(rs.next())
               {
                   if(rs.getString("acctstatus").equals("0"))
                   {
                        st="Active";
                   }
                   else  if(rs.getString("acctstatus").equals("1"))
                   {
                       st="Blocked";
                       
                   }
                       %>
      
             <tr height="50px" >    
          <td><%=rs.getString("wname")%></td>
                  <td><%=rs.getString("hostel")%></td>
                  <td><%=rs.getString("gender")%></td>
                  <td><%=rs.getString("desig")%></td>
                  <td><%=rs.getString("mobile")%></td>
                  <td><%=rs.getString("email")%></td>
                  <td><%=rs.getString("address")%></td>
                  <td><%=rs.getString("father")%></td>
                  <td><%=rs.getString("econtact")%></td>
                  <td><%=st%></td>
                  <td><%=rs.getString("acdate")%></td>
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
