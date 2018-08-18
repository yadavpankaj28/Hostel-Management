<%-- 
    Document   : demoadminheader
    Created on : Nov 26, 2017, 7:05:29 PM
    Author     : omaneesshh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<meta name="description" content="Eduread - Education HTML5 Template">
	<meta name="keywords" content="college, education, institute, responsive, school, teacher, template, university">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Admin</title> 
	<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/assets/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="css/assets/font-awesome.min.css">
    <!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:600,700%7COpen+Sans:400,600" rel="stylesheet">     
	<!-- Popup -->
	<link href="css/assets/magnific-popup.css" rel="stylesheet"> 
	<!-- Slick Slider -->
	<link href="css/assets/slick.css" rel="stylesheet"> 	
	<link href="css/assets/slick-theme.css" rel="stylesheet"> 	   
	<!-- owl carousel -->
	<link href="css/assets/owl.carousel.css" rel="stylesheet">
	<link href="css/assets/owl.theme.css" rel="stylesheet">
	<!-- Main Menu-->
	<link rel="stylesheet" href="css/assets/meanmenu.css">   
	<!-- Custom CSS -->
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/responsive.css">	
</head>
<body class="teachers-01">
       <%!String uname="";%>
        <%
        HttpSession ses=request.getSession();
        if(ses.getAttribute("adminname")==null)
        {
            response.sendRedirect("admin_login.jsp");
        }
        else
        {
        uname=(String)ses.getAttribute("adminname");
        }
        %>
        
     
<!-- Preloader -->
<div id="preloader">
	<div id="status">&nbsp;</div>
</div>
<header id="header">
	<div class="header-top">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-xs-12 header-top-left">
					
				</div>
				<div class="col-sm-6 col-xs-12 header-top-right">
					<ul class="list-unstyled">
						
					</ul>
				</div>
			</div>
		</div>
	</div><!-- Ends: .header-top -->

	<div class="header-body">
		<nav class="navbar edu-navbar">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a href="index-2.html" class="navbar-brand  data-scroll"><img src="images/logo.png" alt=""><span>Eduread</span></a>
				</div>

				<div class="collapse navbar-collapse edu-nav main-menu" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav pull-right">
						<li class="active" ><a data-scroll="" href="admin_home.jsp">Home</a>
						</li>
						<li><a data-scroll="" href="">Info</a>
							<!-- dropdwon start -->
                            <ul class="dropdown list-unstyled">
                                <li><a href="warden_info.jsp">Warden Info</a></li>
                                <li><a href="student_info.jsp">Student Info</a></li>
                               </ul>
                            <!-- dropdown end -->
						</li>
						<li><a data-scroll href="admin_notices.jsp">Notices</a>
						</li>
						<li><a data-scroll href="hostal_room_info.jsp">Hostel Rooms</a>
							
						</li>
						<li><a data-scroll href="change_pass_admin.jsp">Change Password</a>
						</li>
						<li><a data-scroll href="admin_logout.jsp">Logout</a>
							
						</li>
						
					</ul>
				</div><!-- /.navbar-collapse -->
			</div><!-- /.container -->
		</nav>
		
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="intro-text ">
						<h1>Welcome <%=uname%></h1>
						
					</div>
				</div>
			</div><!-- /.row -->
		</div><!-- /.container -->
	</div>
</header>
<!--  End header section-->


    
    
</html>
