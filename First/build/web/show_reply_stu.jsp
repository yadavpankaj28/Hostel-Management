<%-- 
    Document   : show_reply
    Created on : Nov 26, 2017, 6:08:33 PM
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
          <%!String reply="",dt="",tm="",wname="",roll="",x="";%>
      <%          
        try
         {
         HttpSession ses=request.getSession();
         String gender=(String)ses.getAttribute("gender");
         String compid=(String)ses.getAttribute("coid");
         if(gender.equals("female"))
         {
          x="select * from warden_reply where hostel='i' and  comp_id="+compid+"";   
         }
         else if(gender.equals("male"))
         {
         x="select * from warden_reply where hostel='i' and  comp_id="+compid+"";    
         }
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/mycreation","root","");
               Statement stmt=con.createStatement();
               ResultSet rs=stmt.executeQuery(x);
               while(rs.next())
               {
               
                reply =rs.getString("reply");
                wname =rs.getString("warden_name");
                dt =rs.getString("rdate");
                tm =rs.getString("rtime");
                %>
                <h5 style="text-align:left">  <%=wname%> replied  : "<%=reply%>" on <%=dt%> at <%=tm%> </h5> 
        <%
               }
              
             
           }
           catch(Exception ex)
           {
               out.print(ex);
           }
      
        %>
    </body>
</html>
