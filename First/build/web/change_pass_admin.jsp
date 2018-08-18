<%-- 
    Document   : change_pass_admin
    Created on : Nov 15, 2017, 10:54:43 PM
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
       <%@include file="admin_header.jsp" %>
       

<section class="teachers-area">
	<div class="container">
            <div class="row teachers-wapper-01"><h3>Change Password</h3><br>
                    <form action="change_password_admin" method="post"><table width="700">  <tr><td>
              <input type="password"  placeholder="Old Password" name="pp1" ></td>

                                <td><input type="password" placeholder="New Password" name="np1" ></td>
    
                                <td> <input type="password" placeholder="New Password" name="cp1" >
    </td>
     
    <td> <input type="submit"></td></tr></table>
        </form>
         								
		</div>											
		</div>											
		
</section>
    <%@include file="demoadminfooter.jsp" %>
</html>
