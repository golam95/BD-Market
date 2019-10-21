
<jsp:include page="../header/header4.jsp"></jsp:include>
<jsp:include page="../slider/adminsidebar.jsp"></jsp:include>
<%@page import="com.bdmarket.serviceImp.CustomerServiceImp"%>
<%@page import="com.bdmarket.model.Customer"%>

<div style="float: right; width: 90%;" class="rightshopkeeper">
	<div class="section-showproduct">
		<div class="container">
			<%
				String username = null;
				Cookie[] cookies = request.getCookies();
				if (cookies != null) {
					for (Cookie cookie : cookies) {
						if (cookie.getName().equals("adminusername"))
							username = cookie.getValue();
					}
				}
			%>
			<%
				if (username == null) {
					response.sendRedirect("../login.jsp");
				}
			%>
			<%
				CustomerServiceImp customerservice = new CustomerServiceImp();
			%>
			<h2
				style="margin-top: 9px; margin-left: 485px; margin-bottom: 10px; font-size: 20px; color: #74B54D; font-weight: bold;">Update
				your profile</h2>

			<%
				String error = "";
				if (request.getParameter("error") != null) {
					error = (String) request.getParameter("error");
			%>
			<div class="col-md-8 col-md-offset-3">
				<div style="width: 590px;"
					class="alert alert-danger alert-dismissible">
					<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
					<strong>Error!</strong><%=error%>
				</div>
			</div>
			<%
				}
			%>
			<%
				String success = "";
				if (request.getParameter("success") != null) {
					success = (String) request.getParameter("success");
			%>
			<div class="col-md-8 col-md-offset-3">
				<div style="width: 590px;"
					class="alert alert-success alert-dismissible">
					<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
					<strong>Success!</strong><%=success%>
				</div>
			</div>
			<%
				}
			%>

			<form action="../ManageAdmin" method="POST">
				<input type="hidden" name="action" value="CUSPROFILE_UPDATE" />

				<div class="modal-body">
					<%
						for (Customer customer : customerservice.getcustomerList(username)) {
					%>
					<div class="form-group">

						<input
							style="border: 1px solid #74B54D; margin-left: 300px; width: 550px;"
							class="form-control" placeholder="Name" type="text" name="email"
							value="<%=customer.getCus_phone()%>" readonly required="1" />
					</div>
					<div class="form-group">
						<label style="margin-left: 300px;" for="inputUserName">Your
							Name </label> <input
							style="border: 1px solid #74B54D; margin-left: 300px; width: 550px;"
							class="form-control" placeholder="Name" type="text" name="name"
							value="<%=customer.getCus_email()%>" required="1" />
					</div>
					<div class="form-group">
						<label style="margin-left: 300px;" for="inputUserName">Contact
							No</label> <input
							style="border: 1px solid #74B54D; margin-left: 300px; width: 550px;"
							class="form-control" placeholder="Contact no" type="text"
							name="contact" value="<%=customer.getCus_password()%>"
							required="1" />
					</div>
					<div class="form-group">
						<label style="margin-left: 300px;" for="inputUserName">Your
							password </label> <input
							style="border: 1px solid #74B54D; margin-left: 300px; width: 550px;"
							class="form-control" placeholder="password" type="text"
							name="password" value="<%=customer.getCus_gender()%>"
							required="1" />
					</div>
					<%
						}
					%>
					<div class="form-group">
						<button
							style="background: #57992E; margin-left: 300px; border: 1px solid #57992E; width: 180px;"
							class="btn btn-primary" id="UPDATEPOST">Update</button>
					</div>
				</div>
				<br /> <br />
			</form>
		</div>
	</div>
</div>
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

		$('#UPDATE_CONTACT').click(function() {

			var contactNo = $('#contactno').val();
			var password = $('#passwordd').val();
			var email = $('#email').val();

			if ($.trim(contactNo).length != 11) {

				alert("Sorry,Invalid contact number!!");

			} else if ($.trim(contactNo) == '') {

				alert("Sorry,ContactNo fileld must not be empty!!");

			} else if ($.trim(password) == '') {

				alert("Sorry,Password fileld must not be empty!!");

			} else {

				$.ajax({
					method : 'POST',
					data : {
						contactNo : contactNo,
						password : password,
						email : email,
						action : 'UPDATE_CON'
					},
					url : '../ManageShopkeeper',
					dataType : "text",
					success : function(result) {
						alert("Successfully, update your contact number!!");
					}
				});

				return false;
			}

		});

	});
</script>
<jsp:include page="../footer/foot1.jsp"></jsp:include>

