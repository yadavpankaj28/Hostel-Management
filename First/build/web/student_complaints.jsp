<%-- 
    Document   : student_complaints
    Created on : Nov 25, 2017, 3:36:01 PM
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
         <%@include file="header.jsp" %>
          <body onload="old()">
         <script>
            function demo(a)
            {
                
window.open("student_reply.jsp?id="+a+"","","title=no status=no height=650 width=1350");                
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
                a.open("GET", "stu_complaints_add?id=" + b, true);
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
                a.open("GET", "stu_complaints_old.jsp", true);
                a.send();
            
        }
        setInterval("old()",2000);
    </script>
         
         
  <center>  <h4>Enter Complaints</h4> <textarea class="form-control"  id="not" rows="5" cols="60" style="resize: none">Enter Here</textarea>
    <br><br>
  
    <input type="button" onclick="add()" value="Add Complaint"><br>
    <span id="d1"></span><hr>
     
        <h1>My Old Complaints</h1>
    <div id="dd" style="width:900px;border:1px aqua solid;padding: 10px" ></div>
    </center>
          <br><br>
   <%@include file="demoadminfooter.jsp"%>
    
</html>
