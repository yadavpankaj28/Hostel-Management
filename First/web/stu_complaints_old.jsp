<%-- 
    Document   : admin_notice_old
    Created on : Nov 15, 2017, 11:27:55 PM
    Author     : omaneesshh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@page import="java.sql.*" %>
    </head>
    <body>
       
        <%!String complaint="",dt="",id="",tm;%>
      <%
          String x="";
        try
           {
               HttpSession hs=request.getSession();            
           //String name=hs.getAttribute("stuname").toString();
           String roll=hs.getAttribute("sturoll").toString();
           String gender=hs.getAttribute("gender").toString();
            if(gender.equals("male"))
            {
                x="select * from complaint_m where roll="+roll+" order by cid desc";
            }
            else  if(gender.equals("female"))
            {
                x="select * from complaint_i where roll="+roll+"  order by cid desc";
            }
           
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/mycreation","root","");
               Statement stmt=con.createStatement();
               ResultSet rs=stmt.executeQuery(x);
               while(rs.next())
               {
                   id =rs.getString("cid");
                  complaint =rs.getString("complaint");
               dt=rs.getString("cdate");
               tm=rs.getString("ctime");
                  %>
                 Your Complaint "<%=complaint%>" on  <%=dt%> at  <%=tm%> <u><a onclick="demo(<%=id%>)">Show</a></u><hr>
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
