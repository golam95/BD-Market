
<jsp:include page="header/head1.jsp"></jsp:include>
<%@page import="com.bdmarket.serviceImp.ShopkeeperServiceImp"%>
<%@page import="com.bdmarket.model.ShopKeeper"%>
<%@page import="com.bdmarket.model.UpdateProfile"%>


<style>
.pro {
	padding: 5px;
	background: #FFFFFF;
	height: 35px;
	text-align: center;
	border-radius: 4px;
	margin-bottom: 10px;
	border: 2px solid #82BC5F;
}

.pro a {
	color: #82BC5F;
	font-weight: bold;
}

.pro a:hover {
	text-decoration: underline;
}

.mypanel {
	background: red;
}

.mylayout {
	border: 3px solid #E8EAED;
	padding: 7px;
	border-radius: 5px;
}
</style>

<div class="content-header">
	<div class="col-md-12"></div>
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
<%
	if (username == null) {
		response.sendRedirect("login.jsp");
	}
%>
<div class="content-slidebar">
	<div class="col-md-11 col-md-offset-1">
		<div id="imageCarousel" class="carousel slide" data-interval="2000"
			data-ride="carousel" data-pause="hover">
			<div class="carousel-inner">
				<div class="item active">
					
					
				<div class="row">
						<div class="col-md-1">
							<div style="width: 90px; height: 90px;" class="round-area">
								<img src="img/shop/electronic.jpg" class="img-circle" alt="Cinque Terre"
									width="304" height="236">
							</div>
							<div style="padding: 4px;" class="title_name">
								<a style="color: white; margin-left: 5px; font-style: bold;"
									href="searchproduct.jsp?productName=Electronic">Electronic</a>
							</div>
						</div>
						<div class="col-md-1 col-sm-1">
							<div style="width: 90px; height: 90px;" class="round-area">
								<img style="margin-top:6px;" src="img/shop/Capture.PNG" class="img-circle" alt="Cinque Terre"
									width="304" height="236">
							</div>
							<div style="padding: 4px;" class="title_name">
								<a style="color: white; margin-left: 5px; font-style: bold;"
									href="searchproduct.jsp?productName=Sweets">Sweets</a>
							</div>
						</div>
						<div class="col-md-1 col-sm-1">
						<div  style="width: 90px; height: 90px;" class="round-area">
								<img style="margin-top:15px;" src="img/shop/retruant.jpg" class="img-circle" alt="Cinque Terre"
									width="304" height="236">
							</div>
							<div style="padding: 4px;" class="title_name">
								<a style="color: white; margin-left: 1px; font-style: bold;"
									href="searchproduct.jsp?productName=Restaurants">Restaurants</a>
							</div>
						</div>
						<div class="col-md-1 col-sm-1">
							<div style="width: 90px; height: 90px;" class="round-area">
								<img src="img/shop/cosmetic.jpg" class="img-circle" alt="Cinque Terre"
									width="304" height="236">
							</div>
							<div style="padding: 4px;" class="title_name">
								<a style="color: white; margin-left: 5px; font-style: bold;"
									href="searchproduct.jsp?productName=Cosmetic">Cosmetic</a>
							</div>
						</div>
						<div class="col-md-1 col-sm-1">
							<div style="width: 90px; height: 90px;" class="round-area">
								<img src="img/shop/stationnary.png" class="img-circle" alt="Cinque Terre"
									width="304" height="236">
							</div>
							<div style="padding: 4px;" class="title_name">
								<a style="color: white; margin-left: 5px; font-style: bold;"
									href="searchproduct.jsp?productName=Glossary">Glossary</a>
							</div>
						</div>
						<div class="col-md-1 col-sm-1">
							<div style="width: 90px; height: 90px;" class="round-area">
								<img src="img/shop/06.png" class="img-circle" alt="Cinque Terre"
									width="304" height="236">
							</div>
							<div style="padding: 4px;" class="title_name">
								<a style="color: white; margin-left: 5px; font-style: bold;"
									href="searchproduct.jsp?productName=Stationery">Stationery</a>
							</div>
						</div>
						<div class="col-md-1 col-sm-1">
							<div style="width: 90px; height: 90px;" class="round-area">
								<img src="img/shop/electronic.jpg" class="img-circle" alt="Cinque Terre"
									width="304" height="236">
							</div>
							<div style="padding: 4px;" class="title_name">
								<a style="color: white; margin-left: 5px; font-style: bold;"
									href="searchproduct.jsp?productName=Computer">Computer</a>
							</div>
						</div>
						<div class="col-md-1 col-sm-1">
							<div style="width: 90px; height: 90px;" class="round-area">
								<img src="img/shop/jewellary.PNG" class="img-circle"
									alt="Cinque Terre" width="304" height="236">
							</div>
							<div style="padding: 4px;" class="title_name">
								<a style="color: white; margin-left: 5px; font-style: bold;"
									href="searchproduct.jsp?productName=Jewellery">Jewellery</a>
							</div>
						</div>
						<div class="col-md-1 col-sm-1">
							<div style="width: 90px; height: 90px;" class="round-area">
								<img src="img/shop/08.png" class="img-circle"
									alt="Cinque Terre" width="304" height="236">
							</div>
							<div style="padding: 4px;" class="title_name">
								<a style="color: white; margin-left: 20px; font-style: bold;"
									href="searchproduct.jsp?productName=Fruits">Fruits</a>
							</div>
						</div>
						<div class="col-md-1 col-sm-1">
							<div style="width: 90px; height: 90px;" class="round-area">
								<img style="margin-top:10px;" src="img/shop/hardware.jpg" class="img-circle"
									alt="Cinque Terre" width="304" height="236">
							</div>
							<div style="padding: 4px;" class="title_name">
								<a style="color: white; margin-left: 5px; font-style: bold;"
									href="searchproduct.jsp?productName=Hardware">Hardware</a>
							</div>
						</div>
						<div class="col-md-1 col-sm-1">
							<div style="width: 90px; height: 90px;" class="round-area">
								<img style="margin-top:10px;" src="img/shop/animal.jpg" class="img-circle"
									alt="Cinque Terre" width="304" height="236">
							</div>
							<div style="padding: 4px;" class="title_name">
								<a style="color: white; margin-left: 25px; font-style: bold;"
									href="searchproduct.jsp?productName=Animals">Animals</a>
							</div>
						</div>
					</div>
					
					
					
					
				</div>
			</div>
		</div>
	</div>
</div>
<div class="section-showproduct">
	<div class="container">
		<div class="row">
			<%
				String getEmail = request.getParameter("ownerid");
				ShopkeeperServiceImp shopservice = new ShopkeeperServiceImp();
				ShopKeeper shopkeeper = shopservice.getShopkeeper(getEmail);
				UpdateProfile profile = shopservice.getupdateprofile(getEmail);
			%>

			<div class="col-md-3 mylayout">

				<h3 style="text-align: center; margin-bottom: 18px;">
					<img src="img/pro.png" class="img-circle" alt="Cinque Terre"
						width="110" height="110">
				</h3>

				<h4 style="font-size: 13px; text-align: center;">
					<span style="font-weight: bold">ShopName:</span>
					<%=profile.getUp_shopName()%>
				</h4>
				<h4 style="font-size: 13px; text-align: center;">
					<span style="font-weight: bold">ShopLocation:</span>
					<%=profile.getUp_shoploction()%>
				</h4>
				<h4 style="font-size: 13px; text-align: center;">
					<span style="font-weight: bold">Type of Shop:</span>
					<%=profile.getUp_shoptype()%>
				</h4>

				<h4 style="font-size: 13px; text-align: center;">
					<span style="font-weight: bold">Shopkeeper Name:</span>
					<%=shopkeeper.getShop_name()%>
				</h4>
				<h4 style="font-size: 13px; text-align: center;">
					<span style="font-weight: bold">Email:</span>
					<%=shopkeeper.getShop_email()%>
				</h4>
				<h4 style="font-size: 15px; text-align: center;">
					<span style="font-weight: bold">Contact No:</span><%=shopkeeper.getShop_phone()%>
				</h4>


			</div>

			<div class="col-md-7">
				<h3
					style="font-size: 15px; margin-left: 20px; margin-bottom: 10px; font-size: 21px; font-weight: bold;">
					All Products
					</h4>
			</div>


			<div class="col-md-8">
				<div class="col-md-12">
					<div class="pro">
						<a href="#"><%=profile.getUp_productname()%></a>
					</div>
				</div>
			</div>

			<div class="col-md-11">
				<div
					style="padding: 20px; background: #74B54D; width: 60px; height: 60px; float: right; margin-left: 1200px; border-radius: 30px; color: #FFFFFF;"
					class="#">
					<a style="" href="#" data-target="#loginModal" data-toggle="modal"><span
						style="margin-left: 3px; color: #FFFFFF;"
						class="glyphicon glyphicon-plus"></span></a>
				</div>
			</div>
		</div>
	</div>
</div>





<div class="container">

	<div class="row">
		<div class="col-xs-12">

			<div class="modal" id="loginModal" tabindex="-1">
				<div style="width: 500px;" class="modal-dialog">
					<form>
						<div style="margin-top: 140px;" class="modal-content">
							<div style="background: #74B54D;" class="modal-header">
								<button class="close" data-dismiss="modal">&times;</button>
								<h4 style="color: #FFFFFF; font-size: 17px;" class="modal-title">
									<i style="font-size: 27px;" class="fa fa-comments"
										aria-hidden="true"></i><span style="padding-left: 5px;">Contact
										Panel</span>
								</h4>
							</div>
							<div class="modal-body">

								<div class="form-group">
									<label for="inputUserName">Enter your email address</label> <input
										type="hidden" id="shopkeeperemail"
										value="<%=shopkeeper.getShop_email()%>"> <input
										style="border: 1px solid #74B54D;" class="form-control"
										type="email" id="customeremail" required />
								</div>
								<div class="form-group">
									<label for="inputUserName">Comment</label>
									<textarea style="border: 1px solid #82BC5F; height: 150px;"
										class="form-control rounded-0" id="comment" rows="3" required></textarea>
								</div>
							</div>
							<div class="modal-footer">
								<button style="background: #57992E; border: 1px solid #57992E"
									class="btn btn-primary" id="ADDMESSAGE">Send</button>

							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<br />
<br />
<br />


<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
	$(document)
			.ready(
					function() {

						$('#ADDMESSAGE')
								.click(
										function() {

											var shopkeeperemail = $(
													'#shopkeeperemail').val();
											var customeremail = $(
													'#customeremail').val();
											var comment = $('#comment').val();
											var pattern = new RegExp(
													/^(("[\w-\s]+")|([\w-]+(?:\.[\w-]+)*)|("[\w-\s]+")([\w-]+(?:\.[\w-]+)*))(@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][0-9]\.|1[0-9]{2}\.|[0-9]{1,2}\.))((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\.){2}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\]?$)/i);

											if ($.trim(customeremail) == '') {

												alert("Sorry,Email field must not be empty!!");

											} else if (!pattern.test($
													.trim(customeremail))) {

												alert("Sorry,Enter valid email address!!");

											} else if ($.trim(comment) == '') {

												alert("Sorry,Comment field must not be empty!!");

											} else {

												$
														.ajax({
															method : 'POST',
															data : {
																shopkeeperemail : shopkeeperemail,
																customeremail : customeremail,
																comment : comment,
																action : 'ADDMESSAGESHOPKEEPER'
															},
															url : 'ManageCustomer',
															dataType : "text",
															success : function(
																	result) {
																alert("Send your message!!");
																$(
																		'#customeremail')
																		.val("");
																$('#comment')
																		.val("");
															}
														});

												return false;
											}
										});

					});
</script>
<jsp:include page="footer/foot.jsp"></jsp:include>
