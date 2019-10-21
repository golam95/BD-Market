
<jsp:include page="../header/header4.jsp"></jsp:include>
<jsp:include page="../slider/adminsidebar.jsp"></jsp:include>

<%@page import="com.bdmarket.serviceImp.CustomerRegServiceImp"%>
<%@page import="com.bdmarket.model.Customer"%>

<div style="float: right; width: 83%; margin-right: 25px;"
	class="rightshopkeeper">
	<div class="section-showproduct">
		<br /> <span style="margin-right: 5px; font-weight: bold;"><a
			style="color: #57992E; text-decoration: none;" href="#">Dashboard</a></span>/<span><a
			style="color: #57992E; text-decoration: none;" href="#"> View
				Customer</a></span>
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
		<form>
			<table style="margin-top: 40px;" class="table">
				<tr>
					<th style="width: 20%;" class="t-head">Name</th>
					<th class="t-head head-it ">Email</th>
					<th class="t-head head-it ">Phone</th>
					<th class="t-head head-it ">Date</th>
					<th class="t-head head-it ">Action</th>
				</tr>
				<%
					CustomerRegServiceImp customerdetails = new CustomerRegServiceImp();
					for (Customer c : customerdetails.getList()) {
						if (c.getCus_role() != 105) {
				%>
				<tr class="cross">
					<td class="t-data"><%=c.getCus_name()%></td>
					<td class="t-data"><%=c.getCus_email()%></td>
					<td class="t-data"><%=c.getCus_phone()%></td>
					<td class="t-data"><%=c.getCus_date()%></td>
					<td class="t-data t-w3l"><a class="add-1"
						href="../ManageAdmin?deletecustomerdetails=<%=c.getCus_id()%>"><span
							class="glyphicon glyphicon-remove" aria-hidden="true"></span></a></td>
				</tr>
				<%
					}
					}
				%>
			</table>
		</form>
	</div>
</div>
<jsp:include page="../footer/foot1.jsp"></jsp:include>

