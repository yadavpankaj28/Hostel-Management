/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author vishwas
 */
@WebServlet(urlPatterns = {"/login_1"})
public class login_1 extends HttpServlet {

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
         String roll=request.getParameter("t1");
         String pass=request.getParameter("t2");
         String rollno="",name="",pw="",g="";
            try
           {
                
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/mycreation","root","");
               Statement stmt=con.createStatement();
               String x="select * from student_reg where rollno='"+roll+"'";
             
               ResultSet rs=stmt.executeQuery(x);
               while(rs.next())
               {
                   rollno=rs.getString("rollno");
                   pw=rs.getString("password");
                   name=rs.getString("name");
                   g=rs.getString("gender");
               }
              
               if(roll.equals(rollno)&&pass.equals(pw))
               {
                     HttpSession hs=request.getSession();
                     hs.setAttribute("stuname", name);
                        hs.setAttribute("sturoll", rollno);
                        hs.setAttribute("gender", g);
                   response.sendRedirect("home.jsp");
               }
               else
               {
                   response.sendRedirect("pre_home.html");
               }
           }
           catch(Exception ex)
           {
               out.print(ex);
           }
        
        
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
