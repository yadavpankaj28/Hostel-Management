<%-- 
    Document   : warden_signup
    Created on : Nov 16, 2017, 12:14:26 AM
    Author     : omaneesshh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>
    </head>
    <body><%@include file="header_main.jsp" %>
        <center>
        <h1>Add Your Details Here!</h1>
           <form action="warden_signup" method="post">
            <input type="text" placeholder="Name" name="t1" style="height:30px;width:200px;"><br><br>
             Hostel<br>
        <select name="hos">
              <option>M</option>
            <option>I</option>
        </select><br><br>
           GENDER: Male<input type="radio" value="Male" name="gn">
        Female<INPUT type="radio" value="Female" name="gn"><br><br>
        <input type="text" placeholder="Designation(If Any)" name="t2" style="height:30px;width:200px;"><br><br>
        <input type="text" placeholder="Mobile No." name="t3" style="height:30px;width:200px;"><br><br>
        <input type="text" placeholder="Email" name="t4" style="height:30px;width:200px;"><br><br>
        <textarea rows="2" cols="26" name="t5"  style="resize: none">Address</textarea><br><br>       
        <input type="text" placeholder="Father's Name" name="t6" style="height:30px;width:200px;"><br><br>       
        <input type="text" placeholder="Emergency contact Number" name="t7" style="height:30px;width:200px;"><br><br>
        <input type="submit" style="height:30px;width:100px;">
   
         </form><br><br></center><%@include file="demoadminfooter.jsp"%>
</html>
