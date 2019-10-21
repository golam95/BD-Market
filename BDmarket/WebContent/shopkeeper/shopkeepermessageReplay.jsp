
<jsp:include page="../header/head3.jsp"></jsp:include>
<jsp:include page="../slider/shopkeepersidebar.jsp"></jsp:include>
<%@page import="com.bdmarket.serviceImp.MessageShopkeeperServiceImpl"%>
<%@page import="com.bdmarket.model.MessageShopkeeper"%>

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
						<h4 style="padding: 15px; margin-left: 150px;">Send Message
							</h4>
						<%
							String id = request.getParameter("replaymessage");
							MessageShopkeeperServiceImpl shopkeeper = new MessageShopkeeperServiceImpl();
							MessageShopkeeper shop = shopkeeper.getMessageshopkeeperId(id);
						%>
						<form action="../ManageShopkeeper" method="POST">
							<div class="modal-body">
								<input type="hidden" name="action" value="REPLAYEMAIL" />
								<input type="hidden" name="id" value="<%=shop.getId() %>" />
								<div class="form-group">
									<label for="inputUserName">To</label> <input
										style="border: 1px solid #74B54D; width: 550px;"
										class="form-control" type="text" name="customeremail"
										value="<%=shop.getCustomeremail()%>" readonly />
								</div>
								<div class="form-group">
									<label for="inputUserName">Comment</label>
									<textarea style="border: 1px solid #74B54D; width: 550px;"
										class="form-control" rows="5" name="comment" required></textarea>
								</div>
								<div class="form-group">
									<button
										style="background: #57992E; border: 1px solid #57992E; width: 180px;"
										class="btn btn-primary">Send</button>
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