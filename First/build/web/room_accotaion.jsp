<%-- 
    Document   : room_accotaion
    Created on : Nov 25, 2017, 1:24:42 PM
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
          <%!
      String room="",floor="",req="",hostel="",roll="",sname="",cour="",sem="",prtype="",email="",phone="",rtype="",x="",y="",z="",z1=""; 
      %>
          
      <%
      floor=request.getParameter("floor");
              room=request.getParameter("room");
              req=request.getParameter("req");
              hostel=request.getParameter("hostel");
              rtype=request.getParameter("rtype");
             // out.println(floor+" "+room+" "+req+" "+hostel+" "+rtype);
              
                try
           {    
                Class.forName("com.mysql.jdbc.Driver");
               Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/mycreation","root","");
               Statement stmt=con.createStatement();              
               
               if(hostel.equals("I"))
               {
                  
           x="select * from hostel_i_req where req_no="+req+"";
                   
               }
               else if(hostel.equals("M"))
               {
          x="select * from hostel_m_req where req_no="+req+"";
                   }
                                    
               
               ResultSet rs=stmt.executeQuery(x);
               while(rs.next())
               {
                   roll=rs.getString("roll_no");
                   sname=rs.getString("stu_name");
                   cour=rs.getString("course");
                   sem=rs.getString("sem");
                   prtype=rs.getString("type");
                   email=rs.getString("email");
                   phone=rs.getString("phone");
               }
                if(hostel.equals("I"))
               { 
y="insert into hostel_i_allot values('"+req+"','"+sname+"','"+cour+"','"+sem+"','"+roll+"','"+prtype+"','"+email+"','"+phone+"',curdate(),'"+floor+"','"+room+"','"+rtype+"')";
z="update hostel_i_req set status='1' where req_no="+req+"";
z1="update hostel_i set status='1' where floor='"+floor+"' and room_no='"+room+"'";
//out.println(z1);


               }
               else if(hostel.equals("M"))
               {
           y="insert into hostel_m_allot values('"+req+"','"+sname+"','"+cour+"','"+sem+"','"+roll+"','"+prtype+"','"+email+"','"+phone+"',curdate(),'"+floor+"','"+room+"','"+rtype+"')";
           z="update hostel_m_req set status='1' where req_no="+req+"";
           z1="update hostel_m set status='1' where floor='"+floor+"' and room_no='"+room+"'";
           //out.println(z1);
               }
                Statement stmt1=con.createStatement(); 
                Statement stmt2=con.createStatement();   
               // Statement stmt3=con.createStatement();   
                stmt1.execute(y);
                stmt1.execute(z);
                stmt2.execute(z1);
                out.println("Room Allocated");
              }
           catch(Exception ex)
           {
               out.print(ex);
           }
      %>
    
</html>
