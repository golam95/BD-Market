
<jsp:include page="../header/head3.jsp"></jsp:include>
<jsp:include page="../slider/shopkeepersidebar.jsp"></jsp:include>


<div style="float: right; width: 83%; margin-right: 25px;"
	class="rightshopkeeper">
	<div class="section-showproduct">

		<br /> <span style="margin-right: 5px; font-weight: bold;"><a
			style="color: #57992E; text-decoration: none;" href="#">Home</a></span>/<span><a
			style="color: #57992E; text-decoration: none;" href="#"> View</a></span>
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
		<table style="margin-top: 40px;" class="table">
			<tr>
				<th><a
					style="padding: 5px; text-decoration: none; font-weight: bold; font-size: 18px; background-color: #74B54D; color: white; border-radius: 5px;"
					href="#" data-target="#loginModal" data-toggle="modal"><i
						class="glyphicon glyphicon-plus" aria-hidden="true"></i> Add Post</a></th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
			</tr>
			<tr>
				<th class="t-head head-it">SL</th>
				<th style="width: 20%;" class="t-head">Product Name</th>
				<th class="t-head head-it ">Image</th>
				<th class="t-head head-it ">Price</th>
				<th class="t-head head-it ">Total Price</th>
				<th class="t-head head-it ">Action</th>
			</tr>
			<tr class="cross">
				<td class="ring-in t-data">1</td>
				<td class="t-data">Nice product</td>
				<td class="t-data"><img width="30px" height="30px"
					src="../img/barchart.png" alt="" /></td>
				<td class="t-data">122Tk</td>
				<td class="t-data">122Tk</td>
				<td class="t-data t-w3l"><a class="add-1" href="#"><span
						class="glyphicon glyphicon-remove" aria-hidden="true"></span></a> <a
					style="background: #74B54D;" class="add-1" href="#"><span
						class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a></td>
			</tr>

			<tr class="cross">
				<td class="ring-in t-data">1</td>
				<td class="t-data">Nice product</td>
				<td class="t-data"><img width="30px" height="30px"
					src="../img/barchart.png" alt="" /></td>
				<td class="t-data">122Tk</td>
				<td class="t-data">122Tk</td>
				<td class="t-data t-w3l"><a class="add-1" href="#"><span
						class="glyphicon glyphicon-remove" aria-hidden="true"></span></a> <a
					style="background: #74B54D;" class="add-1" href="#"><span
						class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a></td>
			</tr>

			<tr class="cross">
				<td class="ring-in t-data">1</td>
				<td class="t-data">Nice product</td>
				<td class="t-data"><img width="30px" height="30px"
					src="../img/barchart.png" alt="" /></td>
				<td class="t-data">122Tk</td>
				<td class="t-data">122Tk</td>
				<td class="t-data t-w3l"><a class="add-1" href="#"><span
						class="glyphicon glyphicon-remove" aria-hidden="true"></span></a> <a
					style="background: #74B54D;" class="add-1" href="#"><span
						class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a></td>
			</tr>

			<tr class="cross">
				<td class="ring-in t-data">1</td>
				<td class="t-data">Nice product</td>
				<td class="t-data"><img width="30px" height="30px"
					src="../img/barchart.png" alt="" /></td>
				<td class="t-data">122Tk</td>
				<td class="t-data">122Tk</td>
				<td class="t-data t-w3l"><a class="add-1" href="#"><span
						class="glyphicon glyphicon-remove" aria-hidden="true"></span></a> <a
					style="background: #74B54D;" class="add-1" href="#"><span
						class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a></td>
			</tr>
		</table>
	</div>
</div>
</div>

<div class="container">
	<div class="row">
		<div class="col-xs-12">
			<div class="modal" id="loginModal" tabindex="-1">
				<div style="width: 500px;" class="modal-dialog">
					<div class="modal-content">
						<div style="background: #74B54D;" class="modal-header">
							<button class="close" data-dismiss="modal">&times;</button>
							<h4 style="color: #FFFFFF; font-size: 17px;" class="modal-title">
								<i class="fa fa-plus" aria-hidden="true"></i><span
									style="padding-left: 5px;">Add Post</span>
							</h4>
						</div>
						<div class="modal-body">
							<form>
								<div class="form-group">
									<label for="inputUserName">Product Name</label> <input
										style="border: 1px solid #74B54D;" class="form-control"
										placeholder="Login Username" type="text" id="inputUserName" />
								</div>
								<div class="form-group">
									<label for="inputUserName">Description</label> <input
										style="border: 1px solid #74B54D;" class="form-control"
										placeholder="Login Username" type="text" id="inputUserName" />
								</div>
								<div class="form-group">
									<label for="inputUserName">Price(TK)</label> <input
										style="border: 1px solid #74B54D;" class="form-control"
										placeholder="Login Username" type="text" id="inputUserName" />
								</div>

								<div class="form-group">
									<label for="inputUserName">Available Quantity</label> <input
										style="border: 1px solid #74B54D;" class="form-control"
										placeholder="Login Username" type="text" id="inputUserName" />
								</div>

								<div class="form-group">
									<label for="inputUserName">Product IMG</label> <input
										style="border: 1px solid #74B54D;" class="form-control"
										placeholder="Login Username" type="file" id="inputUserName" />
								</div>
							</form>
						</div>
						<div class="modal-footer">
							<button style="background: #57992E; border: 1px solid #57992E"
								class="btn btn-primary">Post</button>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="../footer/foot1.jsp"></jsp:include>

