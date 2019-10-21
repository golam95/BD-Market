
<jsp:include page="../header/head3.jsp"></jsp:include>
<jsp:include page="../slider/shopkeepersidebar.jsp"></jsp:include>
<%@page import="com.bdmarket.serviceImp.ShopkeeperServiceImp"%>
<%@page import="com.bdmarket.model.Post"%>


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
							String id = request.getParameter("updatepost");
							ShopkeeperServiceImp shopkeeper = new ShopkeeperServiceImp();
							Post shop = shopkeeper.getPost((id));
						%>
						<form>
							<div class="modal-body">
								<input type="hidden" id="Id" value="<%=id%>" />
								<div class="form-group">
									<label for="inputUserName">Product Name</label> <input
										style="border: 1px solid #74B54D; width: 550px;"
										class="form-control" placeholder="product name" type="text"
										id="productname" value="<%=shop.getProductname()%>"
										required="1" />
								</div>
								<div class="form-group">
									<label for="inputUserName">Description</label> <input
										style="border: 1px solid #74B54D; width: 550px;"
										class="form-control" placeholder="product description"
										type="text" id="descriptionp"
										value="<%=shop.getDescription()%>" required="1" />
								</div>
								<div class="form-group">
									<label for="inputUserName">Price(TK)</label> <input
										style="border: 1px solid #74B54D; width: 550px;"
										class="form-control" placeholder="product price" type="text"
										id="price" value="<%=shop.getPrice()%>" required="1" />
								</div>
								<div class="form-group">
									<label for="inputUserName">Available Quantity</label> <input
										style="border: 1px solid #74B54D; width: 550px;"
										class="form-control" placeholder="product quantity"
										type="text" id="quantity" value="<%=shop.getQuantity()%>"
										required="1" />
								</div>
								<div class="form-group">
									<button
										style="background: #57992E; border: 1px solid #57992E; width: 180px;"
										class="btn btn-primary" id="UPDATEPOST">Update</button>
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
			var name = $('#productname').val();
			var description = $('#descriptionp').val();
			var quantity = $("#quantity").val();
			var price = $("#price").val();

			if ($.trim(name) == '') {

				alert("Sorry,Name field must not be empty!!");

			} else if ($.trim(description) == '') {

				alert("Sorry,Description field must not be empty!!");

			} else if ($.trim(quantity) == '') {

				alert("Sorry,Quantity field must not be empty!!");

			} else if ($.trim(price) == '') {

				alert("Sorry,Price field must not be empty!!");

			} else {

				$.ajax({
					method : 'POST',
					data : {
						Id : Id,
						name : name,
						description : description,
						quantity : quantity,
						price : price,
						action : 'UPDATE_POST'
					},
					url : '../ManageShopkeeper',
					dataType : "text",
					success : function(result) {
						alert("Successfully update the post!!");
					}
				});

				return false;
			}

		});

	});
</script>

<jsp:include page="../footer/foot1.jsp"></jsp:include>