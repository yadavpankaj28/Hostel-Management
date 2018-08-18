/*
 * To change this template, choose Tools | Templates
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
 * @author omaneesshh
 */
@WebServlet(urlPatterns = {"/change_password_warden"})
public class change_password_warden extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
             
            
           String op1=request.getParameter("pp1");
           String newp=request.getParameter("np1");
           String cp=request.getParameter("cp1");
           
           String op="";
           String a="",b="";
   
            HttpSession hs=request.getSession();
            a=hs.getAttribute("wardename").toString();
           try
           {
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/mycreation","root","");
               Statement stmt=con.createStatement();
               
               String x="select * from warden where email='"+a+"'";
               
               ResultSet rs=stmt.executeQuery(x);
               while(rs.next())
               {
                   op=rs.getString("pass");
                  
                   
               }
               if(op1.equals(op))
               {
                   if(cp.equals(newp))
                   {
                   Statement stmt1=con.createStatement();
               
               String x1="update warden set pass='"+newp+"' where email='"+a+"'";
               stmt1.execute(x1);
               response.sendRedirect("change_password.jsp");}
                   else
                   {
                   out.print("New / Confirm password do not match");
                   }
               }
               else
               {
                   out.print("Old password do not match");
               }
           }
           catch(Exception ex)
           {
               out.print(ex);
           }
        
        } finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
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
