<%-- 
    Document   : logins.jsp
    Created on : Nov 27, 2017, 11:32:55 AM
    Author     : omaneesshh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login | Area</title>
    </head>
    <body>
        <%@include file="header_main.jsp"%>
        
        
        <div style="width:600px;height:500px;margin-left:50px;">
            
            <form method="post" action="login_1">
<div style="width:500px;height:500px;margin-top:100px;margin-left:30px;">
    <div style="width:405px;height:40px;margin-left:27px;margin-top:5px;"><center>Student Login</center></div>
<div style="border:0px;width:405px;height:300px;margin-left:47px;margin-top:5px;">
<input type="text" name="t1" placeholder="Enter Roll No." ><br><br>

<input type="password" name="t2" placeholder="Enter password" ><br><br>


<input type="submit" value="Log in" name="lname" ><br><br>
<a href="forgerpass.jsp">Lost your password?</a>
<hr>
New to site? 
<a href="signup.html">Create Account</a>
</div>
</div>
            </form>

        </div>
        <div style="width:600px;height:500px;margin-left:650px;margin-top:-606px;">
    <div style="width:405px;height:40px;margin-left:27px;margin-top:5px;">
        <div style="border:2px;width:405px;height:40px;margin-left:47px;margin-top:100px;"><center>Warden Login</center></div>
<div style="width:405px;height:300px;margin-left:47px;margin-top:5px;">
    <form action="wardenlogin" method="post">
    <input type="text" placeholder="Enter Email id" name="u1" ><br><br>
<input type="password" placeholder="Enter Password" name="p1" ><br><br><br>
<input type="submit" style="width:80px;height:25px;" value="Log in" name="lname" ><br>
    </form><br><br>
    <a href="warden_signup.jsp">New Warden? Sign-up</a>

<hr>


</div>
            </div>
          
        </div> 
        
        <a href="admin_login.jsp">admin</a>
        
                   <%@include file="demoadminfooter.jsp"%>
    </body>
</html>
