
<jsp:include page="header/head2.jsp"></jsp:include>

<body>
	<!-- Navigation -->

	<!-- About Section -->
	<div id="loginideaportal">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-md-12 col-md-offset-5">
					<img src="img/login.png" class="img-circle" alt="Profile image" width="150" height="150"/>
				</div>
				<div class="col-xs-12 col-md-8 col-md-offset-4">
					<p
						style="color:black; font-size: 23px; padding-left: 70px; margin-bottom: 15px; margin-top: 10px;">Login
						To BDmarket</p>
				</div>
				<%
					String error = "";
					if (request.getAttribute("error") != null) {
						error = (String) request.getAttribute("error");
				%>
				<div class="col-xs-12 col-md-4 col-md-offset-4">
					<div class="alert alert-danger alert-dismissible">
						<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
						<strong>Error!</strong><%=error%>
					</div>
				</div>
				<%
					}
				%>
				<div class="col-xs-12 col-md-4 col-md-offset-4">
					<form action="Managelogin" method="POST" class="form_design">

						<div class="form-group">
							<label style="font-weight: bold; color: #000;"
								for="inputUserName">Email Address</label> <input
								type="email" class="form-control" name="lname"
								placeholder="Enter your email " required />
						</div>
						<div class="form-group">
							<label style="font-weight: bold; color: #000;"
								for="inputPassword">Password</label> <input type="password"
								class="form-control" name="lpass"
								placeholder="Enter your password " required />

						</div>
						<button type="submit" class="btn custombutton" name="login">
							 Sign In
						</button>
						<div class="forgotpassword">
							<a style="color: #FFFFFF;" href="forgot.jsp">Forgot password?</a>
						</div>
					</form>
				</div>
			</div>
		</div>
		<br />
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-md-4 col-md-offset-4">
					<div style="background: #57992E;" class="well well-sm">
						<p style="color: #FFFFFF; text-align: center; margin-top: 7px;">
							New to BDmarket?<a style="color: #FFFFFF;font-weight:bold;border-bottom:1px solid #FFFFFF;" href="reg.jsp">
								Create an account.</a>
						</p>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-md-4 col-md-offset-4">
					<div style="background-color: #57992E; border: 1px solid #FFFFFF;"
						class="well well-sm">
						<p style="color: #FFFFFF; text-align: center; margin-top: 7px;">
							<a style="color: #FFFFFF;" href="index.jsp"> Home |</a><a
								style="color: #FFFFFF;" href="privacey.jsp"> Terms |</a><a
								style="color: #FFFFFF;" href="privacey.jsp"> Security |</a><a
								style="color: #FFFFFF;" href="privacey.jsp"> Privacy</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>