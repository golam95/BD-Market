
<jsp:include page="../header/header4.jsp"></jsp:include>
<jsp:include page="../slider/adminsidebar.jsp"></jsp:include>

<%@page import="com.bdmarket.serviceImp.ShopkeeperServiceImp"%>
<%@page import="com.bdmarket.model.Message"%>

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
				<section class="listofcontent">
					<div class="col-md-offset-3 col-md-10">
						<h4 style="padding: 15px; margin-left: 150px;">Add Category</h4>

						<form action="../ManageAdmin" method="POST">
							<div class="modal-body">
								<input type="hidden" name="action" value="ADDCATEGORY" />
								<div class="form-group">
									<label for="inputUserName">ShopCategory Name</label> <input
										style="border: 1px solid #74B54D; width: 550px;"
										class="form-control" type="text" name="categoryname" required />
								</div>
								<div class="form-group">
									<button
										style="background: #57992E; border: 1px solid #57992E; width: 180px;"
										class="btn btn-primary">Save</button>
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