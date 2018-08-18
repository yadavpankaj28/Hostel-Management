<%-- 
    Document   : admin_notices
    Created on : Nov 15, 2017, 11:12:20 PM
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
                
window.open("admin_notice_edit.jsp?id="+a+"","","title=no status=no width=500px height=500px");                
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
                a.open("GET", "admin_notice_add?id=" + b, true);
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
                a.open("GET", "admin_notice_old.jsp", true);
                a.send();
            
        }
        setInterval("old()",2000);
    </script>
         <%@include file="admin_header.jsp" %>
               
<section class="teachers-area">
	<div class="container">
		<div class="row teachers-wapper-01">
              <textarea class="form-control"  id="not" rows="5" cols="60" style="resize: none">Enter Here</textarea>
    <br><br>	                                    <div class="col-sm-12">                                    

  	                                    <div class="full-width">

    <input type="button" onclick="add()" value="Add Notice"><br>
                                            </div></div>
    <span id="d1"></span><hr>
    <center> <h1>Old Notices</h1></center>
    <div id="dd"></div>
    
    </div>											
		</div>											
		
</section>
    <%@include file="demoadminfooter.jsp" %>
</html>
