
<jsp:include page="../header/head3.jsp"></jsp:include>
<jsp:include page="../slider/shopkeepersidebar.jsp"></jsp:include>
<%@page import="com.bdmarket.serviceImp.CustomerServiceImp"%>
<%@page import="com.bdmarket.model.CustomerOrder"%>

<div style="float: right; width: 83%; margin-right: 25px;"
	class="rightshopkeeper">
	<div class="section-showproduct">
		<br /> <span style="margin-right: 5px; font-weight: bold;"><a
			style="color: #57992E; text-decoration: none;" href="#">Home</a></span>/<span><a
			style="color: #57992E; text-decoration: none;" href="#"> View
				Message</a></span>
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
		<form>
			<table style="margin-top: 40px;" class="table">

				<tr>
					<th style="width: 20%;" class="t-head">Email</th>
					<th style="width: 20%;" class="t-head">ProductName</th>
					<th class="t-head head-it ">Quantity</th>
					<th class="t-head head-it ">Price</th>
					<th class="t-head head-it ">Action</th>
				</tr>
				<%
					CustomerServiceImp orderlist = new CustomerServiceImp();
					for (CustomerOrder order : orderlist.getcustomerOrder(username)) {
				%>
				<tr class="cross">
					<td class="t-data"><%=order.getCustomerEmail()%></td>
					<td class="t-data"><%=order.getProductName()%></td>
					<td class="t-data"><%=order.getQuantity()%></td>
					<td class="t-data"><%=order.getProductPrice()%></td>
					<td class="t-data t-w3l">
						<%
							if (order.getRole() == 1) {
						%> <span style="color: red; font-weight: bold; font-size: 12px;">pending</span>
						<a style="background: #74B54D;" class="add-1"
						href="shopkeeperVieworderdetails.jsp?viedetails=<%=order.getOrderId()%>"><span
							class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a> <%
 	} else {
 %> <span style="color: green; font-weight: bold; font-size: 12px;">Accept</span>
						<a style="background: red;" class="add-1"
						href="../ManageShopkeeper?deleteOnlineorder=<%=order.getOrderId()%>"
						onclick="if (!(confirm('Are you sure you want to delete this message?'))) return false"><span
							class="glyphicon glyphicon-remove" aria-hidden="true"></span></a> <%
 	}
 %>
					</td>
				</tr>
				<%
					}
				%>
			</table>
		</form>
	</div>
</div>
<jsp:include page="../footer/foot1.jsp"></jsp:include>

