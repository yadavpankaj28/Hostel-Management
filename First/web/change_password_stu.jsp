<%-- 
    Document   : change_password
    Created on : 15 Sep, 2017, 3:04:41 PM
    Author     : vishwas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 
 
    </head>
    <body>
    <br><br><center><h3>Change Password Here</h3>
        <form action="change_password_student"method="post">  
            Old Password : <input type="password" placeholder="" name="pp1" >
    
    New Password : <input type="password" placeholder="" name="np1" >
    
    Retype Password : <input type="password" placeholder="" name="cp1" >
    
     <input type="submit">
        </form>
    </center>
    <br><br>
    <%@include file="demoadminfooter.jsp"%>
</html>
