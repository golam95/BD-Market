<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.bdmarket.serviceImp.ShopkeeperServiceImp"%>
<%@page import="com.bdmarket.serviceImp.StatisticsServiceImpl"%>
<%@page import="com.bdmarket.model.ShopKeeper"%>


<%
	StatisticsServiceImpl statisticservice = new StatisticsServiceImpl();
%>

<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>BDmarket</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<link href="../lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="../lib/css/style1.css" rel="stylesheet">
<link href="../lib/css/responsive.css" rel="stylesheet">
<link href="../lib/css/main.css" rel="stylesheet">
<link href="../lib/css/util.css" rel="stylesheet">
<link href="../lib/css/micro.css" rel="stylesheet">
<link href="../lib/css/layout.css" rel="stylesheet">
</head>

<body data-spy="scroll" data-target="#navbar-example">
	<div id="preloader"></div>
	<header>
		<!-- header-area start -->
		<div id="sticker" class="header-area">
			<div class="container">
				<div class="row">
					<div class="col-md-12 col-sm-12">
						<!-- Navigation -->
						<nav class="navbar navbar-default">
							<!-- Brand and toggle get grouped for better mobile display -->
							<div class="navbar-header">
								<button type="button" class="navbar-toggle collapsed"
									data-toggle="collapse"
									data-target=".bs-example-navbar-collapse-1"
									aria-expanded="false">
									<span class="sr-only">Toggle navigation</span> <span
										class="icon-bar"></span> <span class="icon-bar"></span> <span
										class="icon-bar"></span>
								</button>
								<a class="navbar-brand page-scroll sticky-logo"
									href="shopdashboard.jsp">
									<h1>
										<span style="color: orange;">B<span
											style="color: yellow;">D</span></span>market
									</h1>
								</a>
							</div>
							<div
								class="collapse navbar-collapse main-menu bs-example-navbar-collapse-1"
								id="navbar-example">
								<%
									String username = null;
									Cookie[] cookies = request.getCookies();
									if (cookies != null) {
										for (Cookie cookie : cookies) {
											if (cookie.getName().equals("shopkeeperusername"))
												username = cookie.getValue();
										}
									}
								%>
								<ul class="nav navbar-nav navbar-right">
									<%
										ShopkeeperServiceImp shop_reg = new ShopkeeperServiceImp();
										if (shop_reg.check_updateprofile(username)) {
									%>

									<li><a class="page-scroll" href="#"><span
											class="glyphicon glyphicon-phone-alt"></span> Order <span
											style="padding: 2px; background: orange; border-radius: 2px;"><%=statisticservice.checkNotification(username)%></span></a></li>

									<li><a class="page-scroll" href="#"><span
											class="glyphicon glyphicon-envelope"></span> Message <span
											style="padding: 2px; background: orange; border-radius: 2px;"><%=statisticservice.checkMessage(username)%></span></a></li>

									<li><a class="page-scroll" href="#"><span
											class="glyphicon glyphicon-bell"></span> Notification <span
											style="padding: 2px; background: orange; border-radius: 2px;"><%=statisticservice.checkStock(username)%></span></a></li>
									<%
										}
									%>
									<li><a class="page-scroll" id="dropdownMenuButton"
										href="#contact" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false"><span
											class="glyphicon glyphicon-user"></span> <%=shop_reg.getshopkeeperName(username)%>
											<span style="font-size: 10px;"
											class="glyphicon glyphicon-chevron-down"></span></a>
										<div style="background: #FFFFFF; width: 180px;"
											class="dropdown-menu" aria-labelledby="dropdownMenuButton">
											<img style="margin-left: 50px; margin-bottom: 10px;"
												src="../img/pro.png" class="img-circle" alt="Cinque Terre"
												width="65" height="65"><br> <a
												style="padding-left: 6px; color: #57992E; font-size: 11px;"
												href="#"><%=username%></a><br>
											<div class="segment">
												<div class="logout_seg">
													<a
														style="padding: 5px; background: #74B54D; margin-left: 5px; border-radius: 2px;"
														href="../ManageLogout">Logout</a>
												</div>
												<%
													if (shop_reg.check_updateprofile(username)) {
												%>
												<div class="profile_seg">
													<a
														style="padding: 5px; background: #74B54D; border-radius: 2px;"
														href="shopkeeperprofile.jsp?username=<%=username%>">Profile</a>
												</div>
												<%
													}
												%>
											</div>
										</div></li>
								</ul>
							</div>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</header>