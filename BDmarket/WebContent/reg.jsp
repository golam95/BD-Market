
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
						style="color: black; font-size: 23px; padding-left: 60px; margin-bottom: 10px; margin-top: 10px;">Register
						To BDmarket</p>
				</div>





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
						<strong>Success!</strong><%=success%>
					</div>

					<%
						}
					%>



					<form action="./Manage_reg" method="POST" class="form_design">

						<input type="hidden" name="action" value="REGISTRATION" />

						<div class="form-group">
							<label style="font-weight: bold; color: black;"
								for="inputUserName">Username</label><input type="text"
								class="form-control" name="name" placeholder="Enter your Name "
								required />
						</div>
						<div class="form-group">
							<label style="font-weight: bold; color: black;"
								for="inputUserName">Email Address</label> <input
								class="form-control" placeholder="Please Enter your address"
								type="email" name="email" required />
						</div>
						<div class="form-group">
							<label style="font-weight: bold; color: black;"
								for="inputUserName">Contact No</label> <input
								class="form-control" placeholder="Please Enter your phonenumber"
								type="text" name="contact" required />
						</div>
						<div class="form-group">
							<label style="font-weight: bold; color: black;"
								for="inputUserName">Password</label> <input class="form-control"
								placeholder="Please Enter your password" type="password"
								name="password" required />
						</div>
						<div class="form-group">
							<label style="font-weight: bold; color: black;"
								for="inputUserName">Gender</label> <select class="form-control"
								name="gender" required>
								<option></option>
								<option value="Male">Male</option>
								<option value="Female">Female</option>
							</select>
						</div>
						<div class="form-group">
							<label style="font-weight: bold; color: black;"
								for="inputUserName">Registration AS</label> <select
								class="form-control" name="type" required>
								<option></option>
								<option value="customer">Customer</option>
								<option value="shopkeeper">Shopkeeper</option>
							</select>
						</div>
						<button type="submit" class="btn custombutton">Send</button>
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
							Already have a account?<a
								style="color: #FFFFFF; font-weight: bold; border-bottom: 1px solid #FFFFFF;"
								href="login.jsp"> Please login.</a>
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