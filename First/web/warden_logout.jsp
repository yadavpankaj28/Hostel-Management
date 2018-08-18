<%-- 
    Document   : admin_logout
    Created on : Nov 16, 2017, 1:19:10 AM
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
        <%
        HttpSession ses=request.getSession();
        ses.setAttribute("wardenname", null);
        ses.removeAttribute("wardenname");
        ses.invalidate();
        response.sendRedirect("logins.jsp");
        %>
    </body>
</html>
