
<jsp:include page="../header/head3.jsp"></jsp:include>
<jsp:include page="../slider/shopkeepersidebar.jsp"></jsp:include>
<%@page import="com.bdmarket.serviceImp.MessageShopkeeperServiceImpl"%>
<%@page import="com.bdmarket.model.MessageShopkeeper"%>

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
					<th class="t-head head-it ">Description</th>
					<th class="t-head head-it ">Date</th>
					<th class="t-head head-it ">Action</th>
				</tr>
				<%
					MessageShopkeeperServiceImpl shopkeeperservice = new MessageShopkeeperServiceImpl();
					for (MessageShopkeeper m : shopkeeperservice.getListMessageshopkeeper(username)) {
				%>
				<tr class="cross">
					<td class="t-data"><%=m.getCustomeremail()%></td>
					<td class="t-data"><%=m.getComment()%></td>
					<td class="t-data"><%=m.getDate()%></td>
					<td class="t-data t-w3l"><a class="add-1"
						href="../ManageShopkeeper?deleteUsermessage=<%=m.getId()%>"><span
							class="glyphicon glyphicon-remove" aria-hidden="true"></span></a> <a
						style="background: #74B54D;" class="add-1"
						href="shopkeepermessageReplay.jsp?replaymessage=<%=m.getId()%>"><span
							class="glyphicon glyphicon-send" aria-hidden="true"></span></a></td>
				</tr>
				<%
					}
				%>
			</table>
		</form>
	</div>
</div>
<jsp:include page="../footer/foot1.jsp"></jsp:include>

