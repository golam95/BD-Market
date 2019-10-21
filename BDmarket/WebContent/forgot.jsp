
<jsp:include page="header/head2.jsp"></jsp:include>

<body>
	<div id="loginideaportal">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-md-12 col-md-offset-5">
					<img src="img/login.png" class="img-circle" alt="Profile image"
						width="150" height="150" />
				</div>
				<div class="col-xs-12 col-md-8 col-md-offset-4">
					<p
						style="color: black; font-size: 23px; padding-left: 60px; margin-bottom: 15px; margin-top: 10px;">Password
						Assistance</p>
				</div>

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
				<div class="col-xs-12 col-md-4 col-md-offset-4">

					<%
						String error = "";
						if (request.getAttribute("error") != null) {
							error = (String) request.getAttribute("error");
					%>
					<div class="alert alert-danger alert-dismissible">
						<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
						<strong>Error!</strong><%=error%>
					</div>

					<%
						}
					%>


					<%
						String success = "";
						if (request.getAttribute("success") != null) {
							success = (String) request.getAttribute("success");
					%>
					<div class="alert alert-success alert-dismissible">
						<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
						<strong>Error!</strong><%=success%>
					</div>

					<%
						}
					%>

					<form action="./Manage_reg" method="POST" class="form_design">
						<div class="form-group">
							<label style="font-weight: bold; color: #000;"
								for="inputUserName">Username or email address</label> <input
								type="hidden" name="action" value="forgotpassword" /> <input
								class="form-control" placeholder="Enter valid email"
								type="email" name="sendemail" required />
						</div>
						<button type="submit" class="btn custombutton">Send</button>
					</form>

				</div>





				<br />
				<div class="container">
					<div class="row">
						<div class="col-xs-12 col-md-4 col-md-offset-4">
							<div style="background: #57992E;" class="well well-sm">
								<p style="color: #FFFFFF; text-align: center; margin-top: 7px;">
									New to BDmarket?<a
										style="color: #FFFFFF; font-weight: bold; border-bottom: 1px solid #FFFFFF;"
										href="reg.jsp"> Create an account.</a>
								</p>
							</div>
						</div>
					</div>
				</div>

				<div class="container">
					<div class="row">
						<div class="col-xs-12 col-md-4 col-md-offset-4">
							<div
								style="background-color: #57992E; border: 1px solid #FFFFFF;"
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

		</div>
</body>
</html>