
<jsp:include page="../header/header4.jsp"></jsp:include>
<jsp:include page="../slider/adminsidebar.jsp"></jsp:include>

<%@page import="com.bdmarket.serviceImp.ShopkeeperServiceImp"%>
<%@page import="com.bdmarket.model.Post"%>

<div style="float: right; width: 83%; margin-right: 25px;"
	class="rightshopkeeper">
	<div class="section-showproduct">
		<br /> <span style="margin-right: 5px; font-weight: bold;"><a
			style="color: #57992E; text-decoration: none;" href="#">Home</a></span>/<span><a
			style="color: #57992E; text-decoration: none;" href="#"> View</a></span> <input
			type="hidden" name="action" value="delete" />
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
		<table style="margin-top: 40px;" class="table">
			<tr>
				<th><a
					style="padding: 5px; text-decoration: none; font-weight: bold; font-size: 14px; background-color: #74B54D; color: white; border-radius: 5px;"
					href="addpost.jsp"><i class="glyphicon glyphicon-plus"
						aria-hidden="true"></i> Add Post</a></th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
			</tr>
			<tr>
				<th style="width: 20%;" class="t-head">Product Name</th>
				<th class="t-head head-it ">Image</th>
				<th class="t-head head-it ">Price</th>
				<th class="t-head head-it ">Quantity</th>
				<th class="t-head head-it ">Action</th>
			</tr>
			<%
				ShopkeeperServiceImp shopkeeperservice = new ShopkeeperServiceImp();
				for (Post p : shopkeeperservice.getpostList()) {
			%>
			<tr class="cross">
				<td class="t-data"><%=p.getProductname()%></td>
				<td class="t-data"><img width="30px" height="30px"
					src="../uploads/<%=p.getImage()%>" alt="Not found" /></td>
				<td class="t-data"><%=p.getPrice()%></td>
				<td class="t-data"><%=p.getQuantity()%></td>
				<td class="t-data t-w3l"><a class="add-1"
					href="../ManageShopkeeper?deletepost=<%=p.getId()%>"
					onclick="if (!(confirm('Are you sure you want to delete this post?'))) return false"><span
						class="glyphicon glyphicon-remove" aria-hidden="true"></span></a></td>
			</tr>
			<%
				}
			%>
		</table>
	</div>
</div>
<jsp:include page="../footer/foot1.jsp"></jsp:include>

