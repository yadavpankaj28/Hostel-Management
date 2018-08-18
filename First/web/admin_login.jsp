<%-- 
    Document   : admin_login
    Created on : Nov 15, 2017, 10:34:44 PM
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
        <form action="admin_login" method="post">
    UserName : <input type="text" placeholder="Username" name="un1" ><br><br>
    Password : <input type="password" placeholder="Password" name="pw1" ><br><br>
   <input type="submit" value="Log in"><br>
    </form>
        <a href="index.jsp">Home</a>
    </body>
</html>
