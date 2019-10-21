
<jsp:include page="../header/header4.jsp"></jsp:include>
<jsp:include page="../slider/adminsidebar.jsp"></jsp:include>
<%@page import="com.bdmarket.serviceImp.StatisticsServiceImpl"%>

<%
	StatisticsServiceImpl statisticservice = new StatisticsServiceImpl();
%>

<div style="float: right;" class="rightshopkeeper">
	<div class="section-showproduct">
		<div class="container">
			<div class="row">
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
				<section class="listofcontent">
					<div style="margin-left: 130px;" class="col-md-offset-1 col-md-10">
						<h4 style="padding: 15px; text-align: center;">Graph Report</h4>
						<script
							src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
						<script type="text/javascript"
							src="https://www.gstatic.com/charts/loader.js"></script>
						<script type="text/javascript">
			google.charts.load('current', {
				'packages' : [ 'corechart' ]
			});
			google.charts.setOnLoadCallback(drawChart);
			function drawChart() {
				var data = google.visualization.arrayToDataTable([
						[ 'Customer', 'Shopkeeper'],
		<%out.println("['" + "Category" + "',  " + statisticservice.totalCategory() + "],");%>
		<%out.println("['" + "Post" + "',  " + statisticservice.totalPost() + "],");%>
		]);
				var options = {
					title : 'Percentage of Category and Post',
					is3D : true,
				// pieHole: 0.4  
				};
				var chart = new google.visualization.PieChart(document
						.getElementById('piechart1_div'));
				chart.draw(data, options);
			}
		</script>


						<script type="text/javascript">
			google.charts.load('current', {
				'packages' : [ 'corechart' ]
			});
			google.charts.setOnLoadCallback(drawChart);
			function drawChart() {
				var data = google.visualization.arrayToDataTable([
						[ 'Customer', 'Shopkeeper'],
		<%out.println("['" + "Customer" + "',  " + statisticservice.totalCustomer() + "],");%>
		<%out.println("['" + "Shopkeeper" + "',  " + statisticservice.totalShopkeeper() + "],");%>
		]);
				var options = {
					title : 'Percentage of customer and shopkeeper',
					is3D : true,
				// pieHole: 0.4  
				};
				var chart = new google.visualization.PieChart(document
						.getElementById('piechart2_div'));
				chart.draw(data, options);
			}
			
		</script>

						<script type="text/javascript">
			google.charts.load('current', {
				'packages' : [ 'corechart' ]
			});
			google.charts.setOnLoadCallback(drawChart);
			function drawChart() {
				var data = google.visualization.arrayToDataTable([
						[ 'Customer', 'Shopkeeper'],
		<%out.println("['" + "Customer" + "',  " + statisticservice.totalCustomer() + "],");%>
		<%out.println("['" + "Shopkeeper" + "',  " + statisticservice.totalShopkeeper() + "],");%>
		<%out.println("['" + "Category" + "',  " + statisticservice.totalCategory() + "],");%>
		<%out.println("['" + "Post" + "',  " + statisticservice.totalPost() + "],");%>
		]);
				var options = {
					title : 'Percentage of customer,shopkeeper,Category and Post',
					is3D : true,
				// pieHole: 0.4  
				};
				var chart = new google.visualization.PieChart(document
						.getElementById('piechart3_div'));
				chart.draw(data, options);
			}
			
		</script>

						<table class="columns">
							<br />
							<br />
							<br />
							<tr>
								<td><div id="piechart1_div"
										style="border: 1px solid #ffffff; width: 340px; height: 260px; margin-left: 18px;"></div></td>
								<td><div id="piechart2_div"
										style="border: 1px solid #ffffff; width: 340px; height: 260px; margin-left: 18px;"></div></td>
								<td><div id="piechart3_div"
										style="border: 1px solid #ffffff; width: 340px; height: 260px; margin-left: 18px;"></div></td>

							</tr>
						</table>
					</div>
				</section>
			</div>
		</div>
	</div>
</div>
<jsp:include page="../footer/foot1.jsp"></jsp:include>