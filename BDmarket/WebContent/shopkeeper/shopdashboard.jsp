
<jsp:include page="../header/head3.jsp"></jsp:include>
<jsp:include page="../slider/shopkeepersidebar.jsp"></jsp:include>
<%@page import="com.bdmarket.serviceImp.ShopkeeperServiceImp"%>
<%@page import="com.bdmarket.daoimp.ShopkeeperdaoImp"%>
<%@page import="com.bdmarket.model.ShopKeeper"%>

<div style="float: right; width: 83%; margin-right: 45px;"
	class="rightshopkeeper">
	<div class="section-showproduct">
		<div class="col-md-11">
			<div
				style="padding: 20px; background: #74B54D; width: 60px; height: 60px; float: right; margin-left: 1200px; border-radius: 30px; color: #FFFFFF;"
				class="#">
				<a style="" href="#" data-target="#loginModal" data-toggle="modal"><span
					style="margin-left: 3px; color: #FFFFFF;"
					class="glyphicon glyphicon-plus"></span></a>
			</div>
		</div>
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
			ShopkeeperdaoImp shop_reg = new ShopkeeperdaoImp();
			if (shop_reg.check_updateprofile(username) == false) {
				response.sendRedirect("./checkupdate.jsp");
			}
		%>
		<div class="container">
			<div class="row">
				<section class="listofcontent">
					<br />
					<div class="container">
						<%
							ShopkeeperServiceImp shopkeeperservice = new ShopkeeperServiceImp();
							int totalpost = shopkeeperservice.totalPost(username);
							int totalorder = shopkeeperservice.totalOrder(username);
							int totalmessage = shopkeeperservice.totalMessage(username);
						%>
						<div class="row">
							<a
								style="margin-left: 330px; margin-right: 30px; height: 120px; border: 8px solid #518035; margin-top: 80px; margin-bottom: 30px; background: #74B54D; color: #FFFFFF; font-weight: bold;"
								class="btn" href="#"><span
								style="font-size: 35px; margin-bottom: 20px;"
								class="glyphicon glyphicon-dashboard"></span><br /> Total posts<br />
								<span><%=totalpost%></span></a> <a
								style="margin-right: 30px; height: 120px; border: 8px solid #518035; margin-top: 80px; margin-bottom: 30px; background: #74B54D; color: #FFFFFF; font-weight: bold;"
								class="btn" href="#"><span
								style="font-size: 35px; margin-bottom: 20px;"
								class="glyphicon glyphicon-user"></span><br />Total Order<br />
								<span><%=totalorder%></span></a> <a
								style="margin-right: 30px; height: 120px; border: 8px solid #518035; margin-top: 80px; margin-bottom: 30px; background: #74B54D; color: #FFFFFF; font-weight: bold;"
								class="btn" href="#"><span
								style="font-size: 35px; margin-bottom: 20px;"
								class="glyphicon glyphicon-leaf"></span><br />View Detail<br />
								<span><%=totalmessage%></span></a>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
</div>
<div class="container">
	<div class="row">
		<div class="col-xs-12">
			<div class="modal" id="loginModal" tabindex="-1">
				<div style="width: 500px;" class="modal-dialog">
					<div style="margin-top: 140px;" class="modal-content">
						<div style="background: #74B54D;" class="modal-header">
							<button class="close" data-dismiss="modal">&times;</button>
							<h4 style="color: #FFFFFF; font-size: 17px;" class="modal-title">
								<span class="glyphicon glyphicon-envelope"></span><span
									style="padding-left: 5px;">Contact Panel</span>
							</h4>
						</div>
						<div class="modal-body">
							<form>
								<input type="hidden" id="email" value="<%=username%>" />
								<div class="form-group">
									<label for="inputUserName">Description</label>
									<textarea style="border: 1px solid #82BC5F; height: 150px;"
										class="form-control rounded-0" id="description" rows="3"></textarea>
								</div>
							</form>
						</div>
						<div class="modal-footer">
							<button style="background: #57992E; border: 1px solid #57992E"
								class="btn btn-primary" id="SEND_MESSSAGE">Send</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						$('#SEND_MESSSAGE')
								.click(
										function() {

											var email = $('#email').val();
											var description = $('#description')
													.val();
											if ($.trim(email) == '') {
												alert("Sorry,Field must not be empty!!");
											} else if ($.trim(description) == '') {
												alert("Sorry,Description field must not be empty!!");
											} else {

												$
														.ajax({
															method : 'POST',
															data : {
																email : email,
																description : description,
																action : 'SEND_MESSAGE'
															},
															url : '../ManageShopkeeper',
															dataType : "text",
															success : function(
																	result) {
																$('#email')
																		.val("");
																$(
																		'#description')
																		.val("");
																alert("We will contact with you as soon as possible!!");
															}
														});

												return false;
											}

										});
					});
</script>
<jsp:include page="../footer/foot1.jsp"></jsp:include>

