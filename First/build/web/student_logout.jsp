<%-- 
    Document   : logout
    Created on : 15 Sep, 2017, 3:05:07 PM
    Author     : vishwas
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
          HttpSession hs=request.getSession(false);
           hs.setAttribute("stuname", null);
           hs.setAttribute("sturoll", null);
           hs.removeAttribute("stuname");
           hs.removeAttribute("sturoll");
           hs.invalidate();
           response.sendRedirect("logins.jsp");
           %>
    </body>
</html>
