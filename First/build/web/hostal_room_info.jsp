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
        <title>JSP Page</title>
    </head>
    <body>
          <%@page import="java.sql.*" %>
          <%@include file="admin_header.jsp" %>
          <center>
<section class="teachers-area">
	<div class="container">
		<div class="row teachers-wapper-01">
         <%!String req="",x="",a="",b="",c="",d="",e="";%>
          
          <script>
              function get_info()
              {
                  
                  fl=document.getElementById("s1").selectedIndex;
                  fl1=document.getElementById("s1").options[fl].innerHTML;
                  ty=document.getElementById("s2").selectedIndex;
                  ty1=document.getElementById("s2").options[ty].innerHTML;
                  hos=document.getElementById("s3").selectedIndex;
                  hos1=document.getElementById("s3").options[hos].innerHTML;
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
                a.open("GET", "get_room_info_admin.jsp?floor="+fl1+"&type="+ty1+"&hostel="+hos1 , true);
                a.send();
            

              }
           
          </script>
          <br>
          <br><h1>Hostel Info</h1><br><br>
          
           Hostel : <select id="s3">
              <option>Select</option>
              <option selected>M</option>
              <option>I</option></select>
          
          Floor : <select id="s1">
              <option>Select</option>
              <option selected>0</option>
              <option>1</option>
              <option>2</option>
              <option>3</option>
              <option>4</option>
                  </select>
          Room Type : <select id="s2">
              <option>Select</option>
              <option selected>Single</option>
              <option>Double</option>
              <option>Triple</option>
                  </select>
                  <input type="button" value="Get-Info" onclick="get_info()"><br><br>
                  <div id="d1"></div>
                  								
		</div>											
		</div>											
		
</section>
          </center>
<%@include file="demoadminfooter.jsp" %>
</html>
