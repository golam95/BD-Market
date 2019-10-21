
<jsp:include page="../header/head3.jsp"></jsp:include>
<jsp:include page="../slider/shopkeepersidebar.jsp"></jsp:include>
<%@page import="com.bdmarket.serviceImp.ShopkeeperServiceImp"%>
<%@page import="com.bdmarket.model.Message"%>

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
					<th><a
						style="padding: 5px; text-decoration: none; font-weight: bold; font-size: 14px; background-color: #74B54D; color: white; border-radius: 5px;"
						href="shopdashboard.jsp"><i class="glyphicon glyphicon-plus"
							aria-hidden="true"></i> Send Message</a></th>
					<th></th>
					<th></th>
					<th></th>
				</tr>
				<tr>
					<th style="width: 20%;" class="t-head">Email</th>
					<th class="t-head head-it ">Description</th>
					<th class="t-head head-it ">Date</th>
					<th class="t-head head-it ">Action</th>
				</tr>
				<%
					ShopkeeperServiceImp shopkeeperservice = new ShopkeeperServiceImp();
					for (Message m : shopkeeperservice.getmessageList()) {
				%>
				<tr class="cross">
					<td class="t-data"><%=m.getEmail()%></td>
					<td class="t-data"><%=m.getDescription()%></td>
					<td class="t-data"><%=m.getData()%></td>
					<td class="t-data t-w3l">
						<%
							if (m.getRole() == 1) {
						%> <span style="color: red;" class="glyphicon glyphicon-eye-close"
						aria-hidden="true"></span>
						
						
						
						 <%
 	} else {
 %> <span style="color: green;" class="glyphicon glyphicon-eye-open"
						aria-hidden="true"></span> <a style="background:red;"
						class="add-1"
						href="../ManageShopkeeper?deletemessage=<%=m.getId()%>"
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

