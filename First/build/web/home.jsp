<%-- 
    Document   : home
    Created on : 15 Sep, 2017, 3:04:52 PM
    Author     : vishwas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>




<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Home</title>
    </head>
    <body>
        <%@include file="header.jsp"%>
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
                a.open("GET", "warden_notice_show.jsp", true);
                a.send();
            
        }
        setInterval("old()",2000);
                </script><br><br>
    <center>
        <h1>-Notice Board-</h1><br>
        
        <div id="dd" style="width:600px;border:1px aqua solid;padding: 10px;overflow: auto" ></div>
    </center><br><br>
  
         <%@include file="demoadminfooter.jsp"%>
    </body>
</html>
