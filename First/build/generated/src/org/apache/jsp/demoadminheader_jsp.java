package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class demoadminheader_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

String uname="";
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("   \t<meta http-equiv=\"x-ua-compatible\" content=\"ie=edge\">\n");
      out.write("\t<meta name=\"description\" content=\"Eduread - Education HTML5 Template\">\n");
      out.write("\t<meta name=\"keywords\" content=\"college, education, institute, responsive, school, teacher, template, university\">\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\t<title>Admin</title> \n");
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
      out.write("       ");
      out.write("\n");
      out.write("        ");

        HttpSession ses=request.getSession();
        if(ses.getAttribute("adminname")==null)
        {
            response.sendRedirect("admin_login.jsp");
        }
        else
        {
        uname=(String)ses.getAttribute("adminname");
        }
        
      out.write("\n");
      out.write("        \n");
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
      out.write("\t\t\t\t\t<a href=\"index-2.html\" class=\"navbar-brand  data-scroll\"><img src=\"images/logo.png\" alt=\"\"><span>Eduread</span></a>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t<div class=\"collapse navbar-collapse edu-nav main-menu\" id=\"bs-example-navbar-collapse-1\">\n");
      out.write("\t\t\t\t\t<ul class=\"nav navbar-nav pull-right\">\n");
      out.write("\t\t\t\t\t\t<li class=\"active\" ><a data-scroll=\"\" href=\"admin_home.jsp\">Home</a>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t<li><a data-scroll=\"\" href=\"\">Info</a>\n");
      out.write("\t\t\t\t\t\t\t<!-- dropdwon start -->\n");
      out.write("                            <ul class=\"dropdown list-unstyled\">\n");
      out.write("                                <li><a href=\"warden_info.jsp\">Warden Info</a></li>\n");
      out.write("                                <li><a href=\"student_info.jsp\">Student Info</a></li>\n");
      out.write("                               </ul>\n");
      out.write("                            <!-- dropdown end -->\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t<li><a data-scroll href=\"admin_notices.jsp\">Notices</a>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t<li><a data-scroll href=\"hostal_room_info.jsp\">Hostel Rooms</a>\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t<li><a data-scroll href=\"change_pass_admin.jsp\">Change Password</a>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t<li><a data-scroll href=\"admin_logout.jsp\">Logout</a>\n");
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
      out.print(uname);
      out.write("</h1>\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div><!-- /.row -->\n");
      out.write("\t\t</div><!-- /.container -->\n");
      out.write("\t</div>\n");
      out.write("</header>\n");
      out.write("<!--  End header section-->\n");
      out.write("\n");
      out.write("\n");
      out.write("    \n");
      out.write("    \n");
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
