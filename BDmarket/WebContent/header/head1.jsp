<%@page import="com.bdmarket.serviceImp.CartServiceImp"%>
<%@page import="com.bdmarket.serviceImp.CustomerServiceImp"%>
<%@page import="com.bdmarket.model.Cart"%>
<%@page import="java.util.List"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>BDmarket</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="lib/nivo-slider/css/nivo-slider.css" rel="stylesheet">
<link href="lib/owlcarousel/owl.carousel.css" rel="stylesheet">
<link href="lib/owlcarousel/owl.transitions.css" rel="stylesheet">
<link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="lib/animate/animate.min.css" rel="stylesheet">
<link href="lib/venobox/venobox.css" rel="stylesheet">
<link href="lib/css/nivo-slider-theme.css" rel="stylesheet">
<link href="lib/css/style1.css" rel="stylesheet">
<link href="lib/css/responsive.css" rel="stylesheet">
<link href="lib/css/main.css" rel="stylesheet">
<link href="lib/css/util.css" rel="stylesheet">
<link href="lib/css/micro.css" rel="stylesheet">


<style>
.segment {
	padding: 5px;
	margin-top: 5px;
}

.logout_seg {
	float: left;
	width: 100px;
}
</style>
</head>

<body data-spy="scroll" data-target="#navbar-example">

	<div id="preloader"></div>
	<header>
	<%
	CustomerServiceImp customerService=new CustomerServiceImp();
	CartServiceImp cusdservice = new CartServiceImp();
	
	%>
		<%
			String username = null;
			Cookie[] cookies = request.getCookies();
			if (cookies != null) {
				for (Cookie cookie : cookies) {
					if (cookie.getName().equals("username"))
						username = cookie.getValue();
				}
			}
		%>
		<%
			if (username == null) {
				response.sendRedirect("login.jsp");
			}
		%>
		<%
			
			List<Cart> list = cusdservice.getcartList(username);
			int cartItem = 0;
			for (Cart c : list) {
				cartItem += 1;
			}
		%>
		<div id="sticker" class="header-area">
			<div class="container">
				<div class="row">
					<div class="col-md-12 col-sm-12">
						<nav class="navbar navbar-default">
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
									href="index.jsp">
									<h1>
										<span style="color: orange;">B<span
											style="color: yellow;">D</span></span>market
									</h1>
								</a>
							</div>
							<div
								class="collapse navbar-collapse main-menu bs-example-navbar-collapse-1"
								id="navbar-example">
								<ul class="nav navbar-nav navbar-right">
									<li class="active"><a class="page-scroll" href="index.jsp">Home</a>
									<li><a class="page-scroll" href="product.jsp">Product</a></li>
									<%
										if (username != null) {
									%>
									<li><a class="page-scroll" href="cart.jsp"><span
											class="glyphicon glyphicon-shopping-cart"></span> Cart <span
											style="padding: 2px; background: orange; border-radius: 2px;"><%=cartItem%></span></a></li>
									<li><a class="page-scroll" id="dropdownMenuButton2"
										href="" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false"><span class="glyphicon glyphicon-user"></span> <%=customerService.getcustomerName(username) %> <span style="font-size:10px;" class="glyphicon glyphicon-chevron-down"></span></a>

										<div style="background: #FFFFFF; width: 180px;"
											class="dropdown-menu" aria-labelledby="dropdownMenuButton2">
											<img style="margin-left: 50px; margin-bottom: 10px;"
												src="img/pro.png" class="img-circle" alt="Cinque Terre"
												width="65" height="65"><br> <a
												style="padding-left: 6px; color: #57992E; font-size: 11px;"
												href="#"><%=username%></a></br>
											<div class="segment">
												<div class="logout_seg">
													<a
														style="padding: 5px; background: #74B54D; margin-left: 5px; border-radius: 2px;"
														href="ManageLogout">Logout</a>
												</div>
												<div class="profile_seg">
													<a
														style="padding: 5px; background: #74B54D; border-radius: 2px;"
														href="customerprofile.jsp?customeremail=<%=username%>">Profile</a>
												</div>
											</div>
										</div></li>
									<%
										} else {
									%>

									<li><a class="page-scroll" href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
									<li><a class="page-scroll" href="reg.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>

									<%
										}
									%>
								</ul>
							</div>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</header>