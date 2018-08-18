<%-- 
    Document   : student_reply
    Created on : Nov 26, 2017, 6:28:14 PM
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
        
    <body onload="old()">
         <%@page import="java.sql.*" %>
         <%@include file="header.jsp" %><center>
            <%!String complaint="",dt="",id="",x="";%>
      <%          
        try
         {
             String cid=request.getParameter("id");
             HttpSession ses=request.getSession();
         String gender=(String)ses.getAttribute("gender");
         if(gender.equals("female"))
         {
          x="select * from complaint_i where cid="+cid+"";   
         }
         else if(gender.equals("male"))
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
                
                %>
        <h3> Complaint :  <%=complaint%> <hr><br> 
        <%
               }
               ses.setAttribute("coid", id);
               
             
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
                a.open("GET", "show_reply_stu.jsp", true);
                a.send();
            
        }
        setInterval("old()",5000);</script>
        <div id="dd" style="height:250px;width:700px;border:2px aqua solid;margin-left:100px;overflow: auto"></div>
        <br>
        
      <form action="student_reply" method="post">     
            Enter Reply : <br> <br> <textarea class="form-control" name="rep" rows="3" cols="60"  style="resize: none"></textarea>
          <input type="submit" value="Reply"><br><br><br>
      </form>
      </h3>
    </center><br>
    <%@include file="demoadminfooter.jsp"%>
</html>
