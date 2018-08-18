/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
/**
 *
 * @author vishwas
 */
@WebServlet(urlPatterns = {"/signup"})
public class signup extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           String a=request.getParameter("t1");
           String b=request.getParameter("t2");
           String k=request.getParameter("t9");
           String c=request.getParameter("t3");
           String d=request.getParameter("t4");
           String e=request.getParameter("t5");
           String f=request.getParameter("t6");
           String g=request.getParameter("gn");
           String h=request.getParameter("t7");
           String i=request.getParameter("t8");
           String j=request.getParameter("se1");
           String sem=request.getParameter("sem");
          
          
           try
           {
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/mycreation","root","");
               Statement stmt=con.createStatement();
               String x="insert into student_reg values('"+a+"','"+b+"','"+k+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','"+sem+"','"+i+"','"+j+"')";
               stmt.executeUpdate(x);
                Statement stmt1=con.createStatement();
               String x1="";
               if(g.equals("male"))
               { 
               x1="insert into hostel_m_req values(null,'"+a+"','"+h+"','"+sem+"','"+i+"','"+j+"','"+b+"','"+c+"',curdate(),'0')";
               }
               else if(g.equals("female"))
               {
                   x1="insert into hostel_i_req values(null,'"+a+"','"+h+"','"+sem+"','"+i+"','"+j+"','"+b+"','"+c+"',curdate(),'0')";
                   
               }
                stmt1.executeUpdate(x1);
               //out.print("<script>alert('done')</script>");
           }
           
           catch(Exception ex)
           {
               out.print(ex);
           }
             response.sendRedirect("logins.jsp");
        }
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
