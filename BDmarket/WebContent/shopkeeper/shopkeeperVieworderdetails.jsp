
<jsp:include page="../header/head3.jsp"></jsp:include>
<jsp:include page="../slider/shopkeepersidebar.jsp"></jsp:include>
<%@page import="com.bdmarket.serviceImp.CustomerServiceImp"%>
<%@page import="com.bdmarket.model.CustomerOrder"%>

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
						<h4 style="padding: 15px; margin-left: 150px;">Update your
							post</h4>
						<%
							String id = request.getParameter("viedetails");
							CustomerServiceImp customerservice = new CustomerServiceImp();
							CustomerOrder cusorder = customerservice.getCustomerId(id);
						%>
						<form>
							<div class="modal-body">
								<input type="hidden" id="Id" value="<%=cusorder.getOrderId()%>" />
								<div class="form-group">
									<label for="inputUserName">Product Name</label> <input
										style="border: 1px solid #74B54D; width: 550px;"
										class="form-control" placeholder="product name" type="text"
										id="productname" value="<%=cusorder.getProductName()%>"
										required />
								</div>
								<div class="form-group">
									<label for="inputUserName">Description</label> <input
										style="border: 1px solid #74B54D; width: 550px;"
										class="form-control" placeholder="product description"
										type="text" id="descriptionp"
										value="<%=cusorder.getProductDescription()%>" required />
								</div>
								<div class="form-group">
									<label for="inputUserName">Price(TK)</label> <input
										style="border: 1px solid #74B54D; width: 550px;"
										class="form-control" placeholder="product price" type="text"
										id="price" value="<%=cusorder.getProductPrice()%>" required />
								</div>
								<div class="form-group">
									<label for="inputUserName">Available Quantity</label> <input
										style="border: 1px solid #74B54D; width: 550px;"
										class="form-control" placeholder="product quantity"
										type="text" id="quantity" value="<%=cusorder.getQuantity()%>"
										required />
								</div>

								<h4 style="font-weight: bold; padding: 7px;">Customer
									Details</h4>

								<div class="form-group">
									<label for="inputUserName">Customer Email</label> <input
										style="border: 1px solid #74B54D; width: 550px;"
										class="form-control" placeholder="product quantity"
										type="text" id="quantity"
										value="<%=cusorder.getCustomerEmail()%>" required />
								</div>
								<div class="form-group">
									<label for="inputUserName">Customer Address</label> <input
										style="border: 1px solid #74B54D; width: 550px;"
										class="form-control" placeholder="product quantity"
										type="text" id="quantity"
										value="<%=cusorder.getCustomerAddress()%>" required />
								</div>
								<div class="form-group">
									<label for="inputUserName">Customer ContactNo</label> <input
										style="border: 1px solid #74B54D; width: 550px;"
										class="form-control" placeholder="product quantity"
										type="text" id="quantity"
										value="<%=cusorder.getCustomerContactNo()%>" required />
								</div>

								<div class="form-group">
									<button
										style="background: #57992E; border: 1px solid #57992E; width: 180px;"
										class="btn btn-primary" id="UPDATEPOST">Delivery
										product</button>
								</div>
							</div>
						</form>
					</div>
				</section>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

		$('#UPDATEPOST').click(function() {

			var Id = $('#Id').val();

			$.ajax({
				method : 'POST',
				data : {
					Id : Id,
					action : 'UPDATEPRODUCTDELIVERIY'
				},
				url : '../ManageCustomer',
				dataType : "text",
				success : function(result) {
					alert("Successfully accept the order!!");
				}
			});

			return false;

		});

	});
</script>

<jsp:include page="../footer/foot1.jsp"></jsp:include>