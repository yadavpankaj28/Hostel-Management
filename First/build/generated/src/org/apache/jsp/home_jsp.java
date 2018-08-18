package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

String name="",roll="",gender="";
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/demoadminfooter.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Student Home</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("   \t<meta http-equiv=\"x-ua-compatible\" content=\"ie=edge\">\n");
      out.write("\t<meta name=\"description\" content=\"Eduread - Education HTML5 Template\">\n");
      out.write("\t<meta name=\"keywords\" content=\"college, education, institute, responsive, school, teacher, template, university\">\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\t<title>Student Portal</title> \n");
      out.write("\t<link rel=\"shortcut icon\" href=\"images/favicon.ico\" type=\"image/x-icon\">\n");
      out.write("    <!-- Bootstrap CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/assets/bootstrap.min.css\">\n");
      out.write("    <!-- Font Awesome -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/assets/font-awesome.min.css\">\n");
      out.write("    <!-- Google Fonts -->\n");
      out.write("\t<link href=\"https://fonts.googleapis.com/css?family=Montserrat:600,700%7COpen+Sans:400,600\" rel=\"stylesheet\">     \n");
      out.write("\t<!-- Popup -->\n");
      out.write("\t<link href=\"css/assets/magnific-popup.css\" rel=\"stylesheet\"> \n");
      out.write("\t<!-- Slick Slider -->\n");
      out.write("\t<link href=\"css/assets/slick.css\" rel=\"stylesheet\"> \t\n");
      out.write("\t<link href=\"css/assets/slick-theme.css\" rel=\"stylesheet\"> \t   \n");
      out.write("\t<!-- owl carousel -->\n");
      out.write("\t<link href=\"css/assets/owl.carousel.css\" rel=\"stylesheet\">\n");
      out.write("\t<link href=\"css/assets/owl.theme.css\" rel=\"stylesheet\">\n");
      out.write("\t<!-- Main Menu-->\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/assets/meanmenu.css\">   \n");
      out.write("\t<!-- Custom CSS -->\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/responsive.css\">\t\n");
      out.write("</head>\n");
      out.write("<body class=\"teachers-01\">\n");
      out.write("     ");
      out.write("\n");
      out.write("        ");

            HttpSession hs=request.getSession();
            
            name=hs.getAttribute("stuname").toString();
            roll=hs.getAttribute("sturoll").toString();
              gender=hs.getAttribute("gender").toString();
        
        
      out.write("\n");
      out.write("            \n");
      out.write("            \n");
      out.write("     \n");
      out.write("<!-- Preloader -->\n");
      out.write("<div id=\"preloader\">\n");
      out.write("\t<div id=\"status\">&nbsp;</div>\n");
      out.write("</div>\n");
      out.write("<header id=\"header\">\n");
      out.write("\t<div class=\"header-top\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t<div class=\"col-sm-6 col-xs-12 header-top-left\">\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"col-sm-6 col-xs-12 header-top-right\">\n");
      out.write("\t\t\t\t\t<ul class=\"list-unstyled\">\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div><!-- Ends: .header-top -->\n");
      out.write("\n");
      out.write("\t<div class=\"header-body\">\n");
      out.write("\t\t<nav class=\"navbar edu-navbar\">\n");
      out.write("\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t<div class=\"navbar-header\">\n");
      out.write("\t\t\t\t\t<button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\" aria-expanded=\"false\">\n");
      out.write("\t\t\t\t\t\t<span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("\t\t\t\t\t\t<span class=\"icon-bar\"></span>\n");
      out.write("\t\t\t\t\t\t<span class=\"icon-bar\"></span>\n");
      out.write("\t\t\t\t\t\t<span class=\"icon-bar\"></span>\n");
      out.write("\t\t\t\t\t</button>\n");
      out.write("\t\t\t\t\t<a href=\"home.jsp\" class=\"navbar-brand  data-scroll\"><img src=\"images/a.png\" height=\"50px\" alt=\"\"><span></span></a>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t<div class=\"collapse navbar-collapse edu-nav main-menu\" id=\"bs-example-navbar-collapse-1\">\n");
      out.write("\t\t\t\t\t<ul class=\"nav navbar-nav pull-right\">\n");
      out.write("\t\t\t\t\t\t<li class=\"active\" ><a data-scroll=\"\" href=\"home.jsp\">Home</a>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("                                                <li><a data-scroll=\"\" href=\"student_hostel.jsp\">Hostel Info</a>\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("                                                <li><a data-scroll href=\"student_profile.jsp\">My Profile</a>\n");
      out.write("                                                </li><li><a data-scroll href=\"gallery.jsp\">Gallery</a>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("                                                <li><a data-scroll href=\"student_complaints.jsp\">Complaints Area</a>\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("                                                <li><a data-scroll href=\"change_password_stu.jsp\">Change Password</a>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("                                                <li><a data-scroll href=\"student_logout.jsp\">Logout</a>\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t</div><!-- /.navbar-collapse -->\n");
      out.write("\t\t\t</div><!-- /.container -->\n");
      out.write("\t\t</nav>\n");
      out.write("\t\t\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t<div class=\"col-md-12\">\n");
      out.write("\t\t\t\t\t<div class=\"intro-text \">\n");
      out.write("\t\t\t\t\t\t<h1>Welcome ");
      out.print(name);
      out.write("</h1>\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div><!-- /.row -->\n");
      out.write("\t\t</div><!-- /.container -->\n");
      out.write("\t</div>\n");
      out.write("</header>\n");
      out.write("                                                \n");
      out.write("<!--  End header section-->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    \n");
      out.write("    \n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("            \n");
      out.write("    \n");
      out.write("     function old() {\n");
      out.write("           \n");
      out.write("                var a;\n");
      out.write("                if (window.XMLHttpRequest) {\n");
      out.write("                    a = new XMLHttpRequest();\n");
      out.write("                }\n");
      out.write("                else {\n");
      out.write("                    a = new ActiveXObject(\"Microsoft.XMLHTTP\");\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                a.onreadystatechange = function () {\n");
      out.write("                    if (a.readyState == 4 && a.status == 200) {\n");
      out.write("                        document.getElementById(\"dd\").innerHTML = a.responseText;\n");
      out.write("                    } \n");
      out.write("                }\n");
      out.write("                a.open(\"GET\", \"warden_notice_show.jsp\", true);\n");
      out.write("                a.send();\n");
      out.write("            \n");
      out.write("        }\n");
      out.write("        setInterval(\"old()\",2000);\n");
      out.write("                </script><br><br>\n");
      out.write("    <center>\n");
      out.write("        <h1>-Notice Board-</h1><br>\n");
      out.write("        \n");
      out.write("        <div id=\"dd\" style=\"width:600px;border:1px aqua solid;padding: 10px;overflow: auto\" ></div>\n");
      out.write("    </center><br><br>\n");
      out.write("  \n");
      out.write("         ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    \n");
      out.write("<!-- Footer Area section -->\n");
      out.write("<footer>\n");
      out.write("\t<div class=\"container\">\n");
      out.write("\t\t<div class=\"row\">\n");
      out.write("\t\t\t<div class=\" col-sm-12 footer-content-box\">\n");
      out.write("\t\t\t\t\n");
      out.write("\n");
      out.write("\t\t\t\t\n");
      out.write("\n");
      out.write("\t\t\t\t<div class=\"col-sm-2\">\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t<div class=\"col-sm-2\">\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t</div>\t\n");
      out.write("\n");
      out.write("\t\t\t\t<div class=\"col-sm-3\">\n");
      out.write("\t\t\t\t\t\n");
      out.write("\n");
      out.write("\t\t\t\t\t<form action=\"#\">\n");
      out.write("\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</form>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\n");
      out.write("\t<div class=\"footer-bottom\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<div class=\"footer-bottom-inner\">\n");
      out.write("\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t <div class=\"col-md-6 col-sm-12 footer-no-padding\">\n");
      out.write("                                           <p>&copy; Copyright 2017 Thapar University | All rights reserved</p>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div><!-- ./ End footer-bottom -->\t\t\n");
      out.write("</footer><!-- ./ End Footer Area -->\n");
      out.write("    <!-- ============================\n");
      out.write("    JavaScript Files\n");
      out.write("    ============================= -->\n");
      out.write("    <!-- jQuery -->\n");
      out.write("\t<script src=\"js/vendor/jquery-1.12.4.min.js\"></script>\n");
      out.write("\t<!-- Bootstrap JS -->\n");
      out.write("\t<script src=\"js/assets/bootstrap.min.js\"></script>\n");
      out.write("\t<!-- Sticky JS -->\n");
      out.write("\t<script src=\"js/assets/jquery.sticky.js\"></script>\n");
      out.write("\t<!-- Popup -->\n");
      out.write("    <script src=\"js/assets/jquery.magnific-popup.min.js\"></script>\n");
      out.write("\t<!-- Counter Up -->\n");
      out.write("    <script src=\"js/assets/jquery.counterup.min.js\"></script>\n");
      out.write("    <script src=\"js/assets/waypoints.min.js\"></script>\n");
      out.write(" \t<!-- owl carousel -->\n");
      out.write("    <script src=\"js/assets/owl.carousel.min.js\"></script>\n");
      out.write("   <!-- Slick Slider-->\n");
      out.write("    <script src=\"js/assets/slick.min.js\"></script>\n");
      out.write("    <!-- Main Menu -->\n");
      out.write("\t<script src=\"js/assets/jquery.meanmenu.min.js\"></script>\n");
      out.write("\t<!-- Custom JS -->\n");
      out.write("\t<script src=\"js/custom.js\"></script>\n");
      out.write("</body>\n");
      out.write("    \n");
      out.write("</html>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
