
<jsp:include page="header/head1.jsp"></jsp:include>
<%@page import="com.bdmarket.serviceImp.CartServiceImp"%>
<%@page import="com.bdmarket.model.Cart"%>
<%@page import="java.util.List"%>

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
			<h2
				style="margin-top: 9px; margin-left: 490px; margin-bottom: 20px; font-size: 30px; color: #74B54D; font-weight: bold;">Your
				cart Item</h2>
			<div class="content">
				<div class="cart-items">
					<div class="container">
						<table class="table ">
							<tr>
								<th></th>
								<th></th>
								<th></th>
								<th></th>
								<th></th>
							</tr>
							<tr>
								<th style="width: 20%;" class="t-head">Product Name</th>
								<th class="t-head head-it ">Image</th>
								<th class="t-head head-it ">Quantity</th>
								<th class="t-head head-it ">Total Price</th>
								<th class="t-head head-it ">Action</th>
							</tr>
							<%
								CartServiceImp cusdservice = new CartServiceImp();
								List<Cart> list = cusdservice.getcartList(username);
								int total = 0;
								for (Cart c : list) {
									total += c.getPrice();
							%>
							<tr class="cross">
								<td class="t-data"><%=c.getProductName()%></td>
								<td class="t-data"><img width="100px" height="100px"
									src="uploads/<%=c.getImlink()%>" alt="Not found" /></td>
								<td class="t-data"><%=c.getQuantity()%></td>
								<td class="t-data"><%=c.getPrice()%></td>
								<td class="t-data t-w3l"><a class="add-1"
									href="ManageCustomer?deletecart=<%=c.getCartId()%>"><span
										class="glyphicon glyphicon-remove" aria-hidden="true"></span></a>
									<a
									style="padding: 5px; text-decoration: none; font-weight: bold; font-size: 18px; background-color: #74B54D; color: white; border-radius: 5px;"
									href="checkout.jsp?cartId=<%=c.getCartId()%>"><i
										class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></i>
										Check Out</a></td>
							</tr>
							<%
								}
							%>
						</table>
						
						<table
							style="margin-left: 910px; text-align: left; margin-bottom: 2px;">
							<tr>
								<th style="color: #74B54D;">Total Amount :</th>
								<td style="font-weight: bold;">Tk.<%=total%></td>
							</tr>

						</table>
					</div>
					<div class="shopping">
						<div class="shopleft">
							<a href="product.jsp"> <img src="img/shop.png" alt="" /></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="footer/foot.jsp"></jsp:include>






