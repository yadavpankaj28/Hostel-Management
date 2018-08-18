<%-- 
    Document   : hostal_room_info
    Created on : Nov 16, 2017, 1:56:22 AM
    Author     : omaneesshh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
          <%@page import="java.sql.*" %>
          <%@include file="warden_header.jsp" %>
          <script>
     function old() {
           
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
                a.open("GET", "warden_complaint_show.jsp", true);
                a.send();
            
        }
        setInterval("old()",2000);
        
        function demo(o)
        {
            window.open("warden_reply.jsp?id="+o+"","","title=no status=no height=650 width=1350");                
        }
        
        
    </script>
         
    <center> 
        <h1>Hostel Complaints</h1>
    <div id="dd" style="width:900px;border:1px aqua solid;padding: 10px" ></div>
    </center>
    <br>
    <%@include file="demoadminfooter.jsp"%>
</html>
