<%-- 
    Document   : warden_reply
    Created on : Nov 25, 2017, 4:30:04 PM
    Author     : omaneesshh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body onload="old()">
         <%@page import="java.sql.*" %>
         <%@include file="warden_header.jsp" %><center>
            <%!String complaint="",dt="",id="",x="",roll="";%>
      <%          
        try
         {
             String cid=request.getParameter("id");
             
         String hostel=(String)ses.getAttribute("hostel");
         if(hostel.equals("I"))
         {
          x="select * from complaint_i where cid="+cid+"";   
         }
         else if(hostel.equals("M"))
         {
         x="select * from complaint_m where cid="+cid+"";    
         }
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/mycreation","root","");
               Statement stmt=con.createStatement();
               ResultSet rs=stmt.executeQuery(x);
               while(rs.next())
               {
                id =rs.getString("cid");
                complaint =rs.getString("complaint");
                roll =rs.getString("roll");
                %>
        <h3> Complaint :  <%=complaint%> <hr><br> 
        <%
               }
               ses.setAttribute("coid", id);
               ses.setAttribute("roll", roll);
             
           }
           catch(Exception ex)
           {
               out.print(ex);
           }
      
        %>
        <script>function old() {
           
                var a;
                if (window.XMLHttpRequest) {
                    a = new XMLHttpRequest();
                }
                else {
                    a = new ActiveXObject("Microsoft.XMLHTTP");
                }

                a.onreadystatechange = function () {
                    if (a.readyState == 4 && a.status == 200) {
                        document.getElementById("dd").innerHTML = a.responseText;
                    } 
                }
                a.open("GET", "show_reply.jsp", true);
                a.send();
            
        }
        setInterval("old()",5000);</script>
        <div id="dd" style="height:250px;width:700px;border:2px aqua solid;margin-left:100px;overflow: auto"></div>
        <br>
        
      <form action="warden_reply" method="post">     
            Enter Reply : <br> <br> <textarea  name="rep" rows="3" cols="60"  style="resize: none"></textarea>
          <input type="submit" value="Reply"><br><br><br>
      </form>
      </h3>
    </center><br><br><%@include file="demoadminfooter.jsp"%>
</html>
