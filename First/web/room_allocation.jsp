<%-- 
    Document   : room_allocation
    Created on : Nov 24, 2017, 4:51:51 PM
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
          <%@include file="warden_header.jsp" %>
          <%!String req="",x="",a="",b="",c="",d="",e="";%>
          
          <%
          req=request.getParameter("req").toString();
          %>
          <script>
              function get_info(o)
              {
                  
                  fl=document.getElementById("s1").selectedIndex;
                  fl1=document.getElementById("s1").options[fl].innerHTML;
                  ty=document.getElementById("s2").selectedIndex;
                  ty1=document.getElementById("s2").options[ty].innerHTML;
                  

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
                a.open("GET", "get_room_info.jsp?floor="+fl1+"&type="+ty1+"&hostel="+o , true);
                a.send();
            

              }
              function allocate(f,r,h,t)
              {
                    var a;
                if (window.XMLHttpRequest) {
                    a = new XMLHttpRequest();
                }
                else {
                    a = new ActiveXObject("Microsoft.XMLHTTP");
                }

                a.onreadystatechange = function () {
                    if (a.readyState == 4 && a.status == 200) {
                        document.getElementById("msg").innerHTML = a.responseText;
                    } 
                }
                a.open("GET", "room_accotaion.jsp?floor="+f+"&room="+r+"&req="+<%=req%>+"&hostel="+h+"&rtype="+t , true);
                a.send();
              }
          </script>
          <center>
          <br>
          <h3>Room Selection Area</h3><br>
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
           <input type="button" value="Get-Info" onclick="get_info('<%=hostel%>')">
                  <div id="d1"></div>
          
                  <span id="msg"></span>
                  <br></center>
   <%@include file="demoadminfooter.jsp" %>
</html>
