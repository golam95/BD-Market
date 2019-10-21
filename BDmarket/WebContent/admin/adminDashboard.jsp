
<jsp:include page="../header/header4.jsp"></jsp:include>
<jsp:include page="../slider/adminsidebar.jsp"></jsp:include>


<div style="float: right; width: 83%; margin-right: 45px;"
	class="rightshopkeeper">
	<div class="section-showproduct">
		
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
		<div class="container">
			<div class="row">
				<section class="listofcontent">
					<br />
					<br />
					<br />
					<br />
					<div class="container">

						<div class="row">
							<a
								style="margin-left: 330px; margin-right: 30px; height: 120px; border: 8px solid #518035; margin-top: 80px; margin-bottom: 30px; background: #74B54D; color: #FFFFFF; font-weight: bold;"
								class="btn" href="../GeneratePDF?action=VIEWTOTALCUSTOMER"><span
								style="font-size: 35px; margin-bottom: 20px;"
								class="glyphicon glyphicon-file"></span><br />PDF Reports<br />
								<span></span></a> 
								
								<a
								style="margin-right: 30px; height: 120px; border: 8px solid #518035; margin-top: 80px; margin-bottom: 30px; background: #74B54D; color: #FFFFFF; font-weight: bold;"
								class="btn" href="adminGraphview.jsp"><span
								style="font-size: 35px; margin-bottom: 20px;"
								class="glyphicon glyphicon-signal"></span><br />Graph Report<br />
								<span></span></a>
								
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
</div>
<div class="container">
	<div class="row">
		<div class="col-xs-12">
			<div class="modal" id="loginModal" tabindex="-1">
				<div style="width: 500px;" class="modal-dialog">
					<div style="margin-top: 140px;" class="modal-content">
						<div style="background: #74B54D;" class="modal-header">
							<button class="close" data-dismiss="modal">&times;</button>
							<h4 style="color: #FFFFFF; font-size: 17px;" class="modal-title">
								<span class="glyphicon glyphicon-envelope"></span><span
									style="padding-left: 5px;">Contact Panel</span>
							</h4>
						</div>
						<div class="modal-body">
							<form>
								<input type="hidden" id="email" value="<%=username%>" />
								<div class="form-group">
									<label for="inputUserName">Description</label>
									<textarea style="border: 1px solid #82BC5F; height: 150px;"
										class="form-control rounded-0" id="description" rows="3"></textarea>
								</div>
							</form>
						</div>
						<div class="modal-footer">
							<button style="background: #57992E; border: 1px solid #57992E"
								class="btn btn-primary" id="SEND_MESSSAGE">Send</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<jsp:include page="../footer/foot1.jsp"></jsp:include>

