
<jsp:include page="../header/head3.jsp"></jsp:include>
<jsp:include page="../slider/shopkeepersidebar.jsp"></jsp:include>
<%@page import="com.bdmarket.serviceImp.ShopkeeperServiceImp"%>
<%@page import="com.bdmarket.model.ShopKeeper"%>

<div style="float: right; width: 83%; margin-right: 45px;"
	class="rightshopkeeper">
	<div class="section-showproduct">
		<div class="container">
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
			<%
				if (username == null) {
					response.sendRedirect("../login.jsp");
				}
			%>
			<%
				ShopkeeperServiceImp shopservice = new ShopkeeperServiceImp();
				ShopKeeper shopkeeper = shopservice.getShopkeeper(username);
			%>
			<div class="row">
				<section class="emty_cart_area p_100">
					<h4 style="padding: 5px; margin-bottom: 4px;">General Profile
						Settings</h4>
					<div class="container">
						<div class="row">
							<div class="col-md-offset-2 col-xs-7">
								<div id="accordion" class="panel-group">
									<div class="panel">
										<div
											style="background: #C7E1B7; height: 40px; border: border:1px solid #C7E1B7;"
											class="panel-heading">
											<h4 class="panel-title">
												<a href="#panelBodyThree" data-toggle="collapse"
													data-parent="#accordion"> <span
													style="color: #57992E; font-weight: bold;"
													class="glyphicon glyphicon glyphicon-pencil">MyDetails</span>
												</a>
											</h4>
										</div>
										<div style="background: #FFFFFF; border: 1px solid #E8EAED;"
											id="panelBodyThree" class="panel-collapse collapse">
											<div class="panel-body">
												<form class="form_design">
													<div class="form-group">
														<label style="font-weight: bold; color: #000;"
															for="inputUserName">Contact No</label> <input
															style="text-align: center; border: 1px solid #FFFFFF; background: #FFFFFF;"
															class="form-control" type="text"
															value="<%=shopkeeper.getShop_phone()%>" readonly />
													</div>
													<div class="form-group">
														<label style="font-weight: bold; color: #000;"
															for="inputPassword">New ContactNo</label> <input
															style="width: 250px; margin-left: 180px; border: 1px solid #C7E1B7;"
															class="form-control" placeholder="Enter New username"
															type="text" id="contactno" required />
													</div>
													<div class="form-group">
														<label style="font-weight: bold; color: #000;"
															for="inputUserName">Password</label> <input
															style="text-align: center; border: 1px solid #FFFFFF; background: #FFFFFF;"
															class="form-control" type="text"
															value="<%=shopkeeper.getShop_password()%>" readonly />
													</div>
													<div class="form-group">
														<label style="font-weight: bold; color: #000;"
															for="inputPassword">New Password</label> <input
															style="width: 250px; margin-left: 180px; border: 1px solid #C7E1B7;"
															class="form-control" placeholder="Enter new password"
															type="password" id="passwordd" required/> <input type="hidden"
															id="email" value="<%=shopkeeper.getShop_email()%>">
													</div>
													<button
														style="background: #74B54D; color: #FFFFFF; border: 1px solid #74B54D; padding: 5px; border-radius: 3px; margin-bottom: 10px;"
														type="submit" id="UPDATE_CONTACT">
														<span class="glyphicon glyphicon-ok"></span> Save
													</button>
												</form>
											</div>
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
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

