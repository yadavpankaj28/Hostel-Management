<%-- 
    Document   : warden_notice
    Created on : Nov 24, 2017, 2:37:56 PM
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
         <script>
            function demo(a)
            {
                
window.open("warden_notice_edit.jsp?id="+a+"","","title=no status=no width=500px height=500px");                
            }
       
        function add() {
            b=document.getElementById("not").value;
            if (b.length == 0) {
                alert("Enter a Notice");
            }
            else {
                var a;
                if (window.XMLHttpRequest) {
                    a = new XMLHttpRequest();
                }
                else {
                    a = new ActiveXObject("Microsoft.XMLHTTP");
                }

                a.onreadystatechange = function () {
                    if (a.readyState == 4 && a.status == 200) {
                        document.getElementById("d1").innerHTML = a.responseText;
                    } 
                }
                a.open("GET", "warden_notice_add?id=" + b, true);
                a.send();
            }
        }
    
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
                a.open("GET", "warden_notice_old.jsp", true);
                a.send();
            
        }
        setInterval("old()",2000);
    </script>
         <%@include file="warden_header.jsp" %>
         <br><br><center>
             <h4> Enter Notice</h4> <textarea class="form-control" id="not" rows="5" cols="60" style="resize: none">Enter Here</textarea>
    <br><br>
  
    <input type="button" onclick="add()" value="Add Notice"><br>
    <span id="d1"></span><hr>
    <center> <h1>Old Notices</h1></center>
    <div id="dd"></div>
    
    </center><%@include file="demoadminfooter.jsp" %>
   
</html>
