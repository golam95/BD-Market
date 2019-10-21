
<jsp:include page="../header/head3.jsp"></jsp:include>
<jsp:include page="../slider/shopkeepersidebar.jsp"></jsp:include>
<%@page import="com.bdmarket.serviceImp.ShopkeeperServiceImp"%>
<%@page import="com.bdmarket.serviceImp.UpdateProfileshopServiceImpl"%>
<%@page import="com.bdmarket.model.UpdateProfile"%>

<%
	UpdateProfileshopServiceImpl updateservice = new UpdateProfileshopServiceImpl();
%>

<div style="float: right; width: 83%; margin-right: 45px;"
	class="rightshopkeeper">
	<div class="section-showproduct">
		<div class="container">
			<div class="row">
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
				<section class="listofcontent">
					<div class="col-md-offset-3 col-md-10">
						<h4 style="padding: 15px; margin-left: 150px;">Add post</h4>
						<%
							String msg = "";
							if (request.getParameter("error") != null) {
								msg = request.getParameter("error");
						%>
						<div style="width:570px;" class="alert alert-danger alert-dismissible">
							<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
							<strong>Error!</strong><%=msg%>
						</div>

						<%
							} else if (request.getParameter("success") != null) {
								msg = request.getParameter("success");
						%>
						<div style="width:570px;" class="alert alert-success alert-dismissible">
							<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
							<strong>Success!</strong><%=msg%>
						</div>

						<%
							}
						%>

						<form action="../ManageShopkeeper" method="post"
							enctype="multipart/form-data">
							<div class="modal-body">
								<input type="hidden" name="action" value="ADD_PRODUCT" /> <input
									type="hidden" name="email" value="<%=username%>" /> <input
									type="hidden" name="location"
									value="<%=updateservice.getshopkeeperLocation(username)%>">
								<%
									ShopkeeperServiceImp shopkeeperservice = new ShopkeeperServiceImp();
									UpdateProfile updateprofile = shopkeeperservice.getupdateprofile(username);
								%>
								<input type="hidden" name="typeofshop"
									value="<%=updateprofile.getUp_shoptype()%>" />

								<div class="form-group">
									<label for="inputUserName">Product Name</label> <input
										style="border: 1px solid #74B54D; width: 550px;"
										class="form-control" placeholder="product name" type="text"
										name="productname" required="1" />
								</div>
								<div class="form-group">
									<label for="inputUserName">Description</label> <input
										style="border: 1px solid #74B54D; width: 550px;"
										class="form-control" placeholder="product description"
										type="text" name="descriptionp" required="1" />
								</div>
								<div class="form-group">
									<label for="inputUserName">Price(TK)</label> <input
										style="border: 1px solid #74B54D; width: 550px;"
										class="form-control" placeholder="product price" type="text"
										name="price" required="1" />
								</div>
								<div class="form-group">
									<label for="inputUserName">Available Quantity</label> <input
										style="border: 1px solid #74B54D; width: 550px;"
										class="form-control" placeholder="product quantity"
										type="text" name="quantity" required="1" />
								</div>
								<div class="form-group">
									<label for="inputUserName">Product image</label> <input
										type="file" name="fileName" required="1" />
								</div>
								<div class="form-group">
									<button
										style="background: #57992E; border: 1px solid #57992E; width: 180px;"
										class="btn btn-primary">Post</button>
								</div>
							</div>
						</form>
					</div>
				</section>
			</div>
		</div>
	</div>
</div>
<jsp:include page="../footer/foot1.jsp"></jsp:include>