
<jsp:include page="../header/header4.jsp"></jsp:include>
<jsp:include page="../slider/adminsidebar.jsp"></jsp:include>

<%@page import="com.bdmarket.serviceImp.CategoryServiceImpl"%>
<%@page import="com.bdmarket.model.Category"%>

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
					<th><a
						style="padding: 5px; text-decoration: none; font-weight: bold; font-size: 14px; background-color: #74B54D; color: white; border-radius: 5px;"
						href="adminAddcategory.jsp"><i
							class="glyphicon glyphicon-plus" aria-hidden="true"></i> Add
							Category</a></th>
					<th></th>
					<th></th>
				</tr>
				<tr>
					<th style="width: 20%;" class="t-head">Sl</th>
					<th class="t-head head-it ">Category</th>
					<th class="t-head head-it ">Action</th>
				</tr>
				<%
					CategoryServiceImpl categoryservice = new CategoryServiceImpl();
					int count = 0;
					for (Category m : categoryservice.getcategoryList()) {
						count++;
				%>
				<tr class="cross">
					<td class="t-data"><%=count%></td>
					<td class="t-data"><%=m.getShopcategory()%></td>
					<td class="t-data t-w3l"><a class="add-1"
						href="../ManageAdmin?deletecategoryId=<%=m.getId()%>"><span
							class="glyphicon glyphicon-remove" aria-hidden="true"></span></a></td>
				</tr>
				<%
					}
				%>
			</table>
		</form>
	</div>
</div>

<jsp:include page="../footer/foot1.jsp"></jsp:include>