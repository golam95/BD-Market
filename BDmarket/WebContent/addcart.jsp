
<jsp:include page="header/head1.jsp"></jsp:include>
<%@page import="com.bdmarket.serviceImp.ShopkeeperServiceImp"%>
<%@page import="com.bdmarket.model.Post"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="com.bdmarket.serviceImp.CategoryServiceImpl"%>
<%@page import="com.bdmarket.model.Category"%>

<div class="content-header">
	<div class="col-md-12"></div>
</div>
<%
	String username = null;
	Cookie[] cookies = request.getCookies();
	if (cookies != null) {
		for (Cookie cookie : cookies) {
			if (cookie.getName().equals("username"))
				username = cookie.getValue();
		}
	}
%>
<%
	if (username == null) {
		response.sendRedirect("login.jsp");
	}
%>
<div class="content-slidebar">
	<div class="col-md-11 col-md-offset-1">
		<div id="imageCarousel" class="carousel slide" data-interval="2000"
			data-ride="carousel" data-pause="hover">
			<div class="carousel-inner">
				<div class="item active">
					
					
					<div class="row">
						<div class="col-md-1">
							<div style="width: 90px; height: 90px;" class="round-area">
								<img src="img/shop/electronic.jpg" class="img-circle" alt="Cinque Terre"
									width="304" height="236">
							</div>
							<div style="padding: 4px;" class="title_name">
								<a style="color: white; margin-left: 5px; font-style: bold;"
									href="searchproduct.jsp?productName=Electronic">Electronic</a>
							</div>
						</div>
						<div class="col-md-1 col-sm-1">
							<div style="width: 90px; height: 90px;" class="round-area">
								<img style="margin-top:6px;" src="img/shop/Capture.PNG" class="img-circle" alt="Cinque Terre"
									width="304" height="236">
							</div>
							<div style="padding: 4px;" class="title_name">
								<a style="color: white; margin-left: 5px; font-style: bold;"
									href="searchproduct.jsp?productName=Sweets">Sweets</a>
							</div>
						</div>
						<div class="col-md-1 col-sm-1">
						<div  style="width: 90px; height: 90px;" class="round-area">
								<img style="margin-top:15px;" src="img/shop/retruant.jpg" class="img-circle" alt="Cinque Terre"
									width="304" height="236">
							</div>
							<div style="padding: 4px;" class="title_name">
								<a style="color: white; margin-left: 1px; font-style: bold;"
									href="searchproduct.jsp?productName=Restaurants">Restaurants</a>
							</div>
						</div>
						<div class="col-md-1 col-sm-1">
							<div style="width: 90px; height: 90px;" class="round-area">
								<img src="img/shop/cosmetic.jpg" class="img-circle" alt="Cinque Terre"
									width="304" height="236">
							</div>
							<div style="padding: 4px;" class="title_name">
								<a style="color: white; margin-left: 5px; font-style: bold;"
									href="searchproduct.jsp?productName=Cosmetic">Cosmetic</a>
							</div>
						</div>
						<div class="col-md-1 col-sm-1">
							<div style="width: 90px; height: 90px;" class="round-area">
								<img src="img/shop/stationnary.png" class="img-circle" alt="Cinque Terre"
									width="304" height="236">
							</div>
							<div style="padding: 4px;" class="title_name">
								<a style="color: white; margin-left: 5px; font-style: bold;"
									href="searchproduct.jsp?productName=Glossary">Glossary</a>
							</div>
						</div>
						<div class="col-md-1 col-sm-1">
							<div style="width: 90px; height: 90px;" class="round-area">
								<img src="img/shop/06.png" class="img-circle" alt="Cinque Terre"
									width="304" height="236">
							</div>
							<div style="padding: 4px;" class="title_name">
								<a style="color: white; margin-left: 5px; font-style: bold;"
									href="searchproduct.jsp?productName=Stationery">Stationery</a>
							</div>
						</div>
						<div class="col-md-1 col-sm-1">
							<div style="width: 90px; height: 90px;" class="round-area">
								<img src="img/shop/electronic.jpg" class="img-circle" alt="Cinque Terre"
									width="304" height="236">
							</div>
							<div style="padding: 4px;" class="title_name">
								<a style="color: white; margin-left: 5px; font-style: bold;"
									href="searchproduct.jsp?productName=Computer">Computer</a>
							</div>
						</div>
						<div class="col-md-1 col-sm-1">
							<div style="width: 90px; height: 90px;" class="round-area">
								<img src="img/shop/jewellary.PNG" class="img-circle"
									alt="Cinque Terre" width="304" height="236">
							</div>
							<div style="padding: 4px;" class="title_name">
								<a style="color: white; margin-left: 5px; font-style: bold;"
									href="searchproduct.jsp?productName=Jewellery">Jewellery</a>
							</div>
						</div>
						<div class="col-md-1 col-sm-1">
							<div style="width: 90px; height: 90px;" class="round-area">
								<img src="img/shop/08.png" class="img-circle"
									alt="Cinque Terre" width="304" height="236">
							</div>
							<div style="padding: 4px;" class="title_name">
								<a style="color: white; margin-left: 20px; font-style: bold;"
									href="searchproduct.jsp?productName=Fruits">Fruits</a>
							</div>
						</div>
						<div class="col-md-1 col-sm-1">
							<div style="width: 90px; height: 90px;" class="round-area">
								<img style="margin-top:10px;" src="img/shop/hardware.jpg" class="img-circle"
									alt="Cinque Terre" width="304" height="236">
							</div>
							<div style="padding: 4px;" class="title_name">
								<a style="color: white; margin-left: 5px; font-style: bold;"
									href="searchproduct.jsp?productName=Hardware">Hardware</a>
							</div>
						</div>
						<div class="col-md-1 col-sm-1">
							<div style="width: 90px; height: 90px;" class="round-area">
								<img style="margin-top:10px;" src="img/shop/animal.jpg" class="img-circle"
									alt="Cinque Terre" width="304" height="236">
							</div>
							<div style="padding: 4px;" class="title_name">
								<a style="color: white; margin-left: 25px; font-style: bold;"
									href="searchproduct.jsp?productName=Animals">Animals</a>
							</div>
						</div>
					</div>
					
					
					</form>
					
					
					
					
					
					
				</div>
			</div>
		</div>
	</div>
</div>
<div class="section-showproduct">
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12">
				<div class="col-md-3 col-sm-3">
					
					
			<form action="ManageAdmin" method="POST">

						<input type="hidden" name="action" value="SEARCHBYLOCATION" />

						<div class="section-showproduct-left">
							<div class="form-group">
								<label style="color: #57992E;" for="inputUserName">Select
									Area</label> <select style="border: 2px solid #57992E;"
									class="form-control" name="location" required>
									<option></option>
									<option>Airport</option>
									<option>Aminbazar</option>
									<option>Adabar</option>
									<option>Akkelpur</option>
									<option>Adamdighi</option>
									<option>Atrai Upazila</option>
									<option>Ataikula Upazila</option>
									<option>Atgharia Upazila</option>

									<option>Banani</option>
									<option>Badda</option>
									<option>Bashundhara</option>
									<option>Boshila</option>
									<option>Bhola Sadar Upazila</option>
									<option>Burhanuddin Upazila</option>
									<option>Baridhara</option>
									<option>Bogra Sadar</option>
									<option>Boalia Thana</option>
									<option>Birampur Upazila</option>
									<option>Birganj Upazila</option>
									<option>Biral Upazila</option>
									<option>Bochaganj Upazila</option>
									<option>Badarganj Upazila</option>
									<option>Bagatipara Upazila</option>
									<option>Baraigram Upazila</option>
									<option>Bera Upazila</option>
									<option>Bhangura Upazila</option>
									<option>Bagha Upazila</option>
									<option>Bagmara Upazila</option>
									<option>Belkuchi Upazila</option>
									<option>Badalgachhi Upazila</option>
									<option>Bholahat Upazila</option>
									<option>Bahubal Upazila</option>
									<option>Baniyachong Upazila</option>
									<option>Barlekha Upazila</option>
									<option>Balaganj Upazila</option>
									<option>Beanibazar Upazila</option>
									<option>Bishwanath Upazila</option>



									<option>Charcharia</option>
									<option>Chatmohar Upazila</option>
									<option>Chauhali Upazila</option>
									<option>Char Rajibpur Upazila</option>
									<option>Companigonj Upazila</option>
									<option>Chunarughat Upazila</option>
									<option>Chaugachha Upazila</option>
									<option>Comilla Sadar Dakshin Upazila</option>
									<option>Chakaria Upazila</option>
									<option>Cox's Bazar Sadar Upazila</option>
									<option>Charbhadrasan Upazila</option>
									<option>Comilla Adarsha Sadar Upazila</option>
									<option>Chandina Upazila</option>
									<option>Chauddagram Upazila</option>
									<option>Chandpur Sadar Upazila</option>
									<option>Chandgaon Thana</option>
									<option>Char Fasson Upazila</option>
									<option>Chandanaish Upazila</option>
									<option>Dhunat</option>
									<option>Dhupchanchia</option>
									<option>Dhanmondi</option>
									<option>Dohar</option>
									<option>Dhamoirhat Upazila</option>
									<option>Elenbari</option>
									<option>Farmgate</option>
									<option>Gurudaspur Upazila</option>
									<option>Gulshan-1</option>
									<option>Gabtoli</option>
									<option>Gomastapur Upazila</option>
									<option>Golapganj Upazila</option>
									<option>Gowainghat Upazila</option>
									<option>Gabtali Upazila</option>
									<option>Gulshan</option>
									<option>Hazratpur</option>
									<option>Hazaribag</option>
									<option>Hizla</option>
									<option>Joypurhat Sadar</option>
									<option>Jatrabari</option>
									<option>Jaintiapur Upazila</option>
									<option>Jagannathpur Upazila</option>
									<option>Jamalganj Upazila</option>
									<option>Juri Upazila</option>
									<option>Jhenaidah Sadar Upazila</option>
									<option>Jessore Sadar Upazila</option>
									<option>Jhikargachha Upazila</option>
									<option>Jhenaigati Upazila</option>
									<option>Jaldhaka Upazila</option>
									<option>Kalai</option>
									<option>Khetlal</option>
									<option>Kahaloo Upazila</option>
									<option>Khilgaon</option>
									<option>Keraniganj</option>
									<option>Kalabagan</option>
									<option>Kamarkhanda Upazila</option>
									<option>Kazipur Upazila</option>
									<option>Kaharole Upazila</option>
									<option>Khansama Upazila</option>
									<option>Kurigram Sadar Upazila</option>
									<option>Kaliganj Upazilav</option>
									<option>Kishoreganj Upazila</option>
									<option>Kaunia Upazila</option>
									<option>Kalapara Upazila</option>
									<option>Kawkhali Upazila</option>
									<option>Kasba Upazila</option>
									<option>Kachua Upazila</option>
									<option>Kotwali Thana</option>
									<option>Kaptai Upazila</option>
									<option>Kawkhali (Betbunia) Upazila</option>
									<option>Kalkini Upazila</option>
									<option>Khaliajuri Upazila</option>
									<option>Kalukhali Upazila</option>
									<option>Kalihati Upazila</option>
									<option>Kachua Upazila</option>
									<option>Keshabpur Upazila</option>
									<option>Kaliganj Upazila</option>
									<option>Kotchandpur Upazila</option>
									<option>Khalishpur Thana</option>
									<option>Khan Jahan Ali Thana</option>
									<option>Kotwali Thana</option>
									<option>Khoksa Upazila</option>
									<option>Kumarkhali Upazila</option>
									<option>Kalia Upazila</option>
									<option>Kalaroa Upazila</option>
									<option>Kaliganj Upazila</option>
									<option>Kamalganj Upazila</option>
									<option>Kulaura Upazila</option>
									<option>Kushtia Sadar Upazila</option>
									<option>Karwan Bazar</option>
									<option>Kallyanpur</option>
									<option>Khilkhet</option>
									<option>Kakrail</option>
									<option>Kafrul</option>
									<option>Karimganj Upazila</option>
									<option>Katiadi Upazila</option>
									<option>Kishoreganj Sadar Upazila</option>
									<option>Kuliarchar Upazila</option>
									<option>Lalpur Upazila</option>
									<option>Lalkuthi</option>
									<option>Lalmatia</option>
									<option>Mirpur</option>
									<option>Motijheel</option>
									<option>Matuail</option>
									<option>Manda Upazila</option>
									<option>Mohadevpur Upazila</option>
									<option>Mohakhali DOHS</option>
									<option>Mohakhali</option>
									<option>Monipur</option>
									<option>Mohammadpur</option>
									<option>Nachole Upazila</option>
									<option>Nawabganj Sadar Upazila</option>
									<option>Nawabganj</option>
									<option>Nandigram Upazila</option>
									<option>Naogaon Sadar Upazila</option>
									<option>Niamatpur Upazila</option>
									<option>Natore Sadar Upazila</option>
									<option>Naldanga Upazila</option>
									<option>Paikpara</option>
									<option>Pirerbag</option>
									<option>Panchbibi</option>
									<option>Patnitala Upazila</option>
									<option>Porsha Upazila</option>
									<option>Rampura</option>
									<option>Raninagar Upazila</option>
									<option>Rayer Bazaar</option>
									<option>Sujapur</option>
									<option>Shyamoli</option>
									<option>Savar</option>
									<option>Sutrapur</option>
									<option>Sher-E-Bangla Nagar</option>
									<option>Sariakandi Upazila</option>
									<option>Shajahanpur Upazila</option>
									<option>Sherpur Upazila</option>
									<option>Shibganj Upazila</option>
									<option>Sonatola Upazila</option>
									<option>Sadullapur Upazila</option>
									<option>Sughatta Upazila</option>
									<option>Sundarganj Upazila</option>
									<option>Santhia Upazila</option>
									<option>Sujanagar Upazila</option>
									<option>Sapahar Upazila</option>
									<option>Singra Upazila</option>
									<option>Shibganj Upazila</option>
									<option>South Shurma Upazila</option>
									<option>Sylhet Sadar Upazila</option>
									<option>Sunamganj Sadar Upazila</option>
									<option>South Sunamganj Upazila</option>
									<option>Sullah Upazila</option>
									<option>Sreemangal Upazila</option>
									<option>Satkhira Sadar Upazila</option>
									<option>Shyamnagar Upazila</option>
									<option>Shalikha Upazila</option>
									<option>Sreepur Upazila</option>
									<option>Shekhpara Upazila</option>
									<option>Sonadanga Thana</option>
									<option>Shailkupa Upazila</option>
									<option>Sharsha Upazila</option>
									<option>Shibpur Upazila</option>
									<option>Sakhipur Upazila</option>
									<option>Sreebardi Upazila</option>
									<option>Sherpur Sadar Upazila</option>
									<option>Shakhipur Upazila</option>
									<option>Shariatpur Sadar Upazila</option>
									<option>Sonargaon Upazila</option>
									<option>Sirajdikhan Upazila</option>
									<option>Saturia Upazila</option>
									<option>Shivalaya Upazila</option>
									<option>Singair Upazila</option>
									<option>Sreenagar Upazila</option>
									<option>Shibchar Upazila</option>
									<option>Sarishabari Upazila</option>
									<option>Sadarpur Upazila</option>
									<option>Saltha Upazila</option>
									<option>Savar Upazila</option>
									<option>Senbagh Upazila</option>
									<option>Sonaimuri Upazila</option>
									<option>Subarnachar Upazila</option>
									<option>Sonagazi Upazila</option>
									<option>Sandwip Upazila</option>
									<option>Satkania Upazila</option>
									<option>Shahrasti Upazila</option>
									<option>Sitakunda Upazila</option>
									<option>Sirajganj Sadar Upazila</option>
									<option>Shahjadpur Upazila</option>
									<option>Ibrahimpur</option>
									<option>Uttara</option>
									<option>Zakiganj Upazila</option>
									<option>Zanjira Upazila</option>
									<option>Zianagor Upazila</option>
									<option>Faridpur Upazila</option>
									<option>Ishwardi Upazila</option>
									<option>Pabna Sadar Upazila</option>
									<option>Tala</option>

									<option>Ajmiriganj</option>
									<option>Habiganj Sadar</option>
									<option>Raiganj</option>
									<option>Tarash</option>
									<option>Ullahpara</option>
									<option>Charghat</option>
									<option>Durgapur</option>
									<option>Godagari</option>
									<option>Mohanpur</option>
									<option>Paba</option>
									<option>Puthia</option>
									<option>Tanore</option>
									<option>Matihar Thana</option>
									<option>Rajpara Thana</option>
									<option>Shah Mokdum Thana</option>
									<option>Chirirbandar</option>
									<option>Phulbari</option>
									<option>Ghoraghat</option>
									<option>Hakimpur</option>
									<option>Dinajpur Sadar</option>
									<option>Nawabganj</option>
									<option>Parbatipur</option>
									<option>Phulchhari</option>
									<option>Gaibandha Sadar</option>
									<option>Gobindaganj</option>
									<option>Palashbari</option>
									<option>Bhurungamari</option>
									<option>Chilmari</option>
									<option>Phulbari</option>
									<option>Nageshwari</option>
									<option>Rajarhat</option>
									<option>Raomari</option>
									<option>Ulipur</option>
									<option>Aditmari</option>
									<option>Atwari</option>
									<option>Ali Kadam</option>
									<option>Hatibandha</option>
									<option>Lalmonirhat Sadar</option>
									<option>Patgram</option>
									<option>Dimla</option>
									<option>Domar</option>
									<option>Nilphamari Sadar</option>
									<option>Saidpur</option>
									<option>Boda</option>
									<option>Debiganj</option>
									<option>Panchagarh Sadar</option>
									<option>Tetulia</option>
									<option>Gangachhara</option>
									<option>Rangpur Sadar</option>
									<option>Mithapukur</option>
									<option>Pirgachha</option>
									<option>Pirganj</option>
									<option>Taraganj</option>
									<option>Baliadangi</option>
									<option>Haripur</option>
									<option>Pirganj</option>
									<option>Ranisankail</option>
									<option>Thakurgaon Sadar</option>
									<option>Amtali</option>
									<option>Bamna</option>
									<option>Barguna Sadar</option>
									<option>Betagi</option>
									<option>Patharghata</option>
									<option>Taltoli</option>
									<option>Agailjhara</option>
									<option>Babuganj</option>
									<option>Bakerganj</option>
									<option>Banaripara</option>
									<option>Gaurnadi</option>
									<option>Hizla</option>
									<option>Barisal Sadar</option>
									<option>Mehendiganj</option>
									<option>Muladi</option>
									<option>Wazirpur</option>
									<option>Daulatkhan Upazilav
									<option>Lalmohan
									<option>Manpura</option>
									<option>Tazumuddin</option>
									<option>Jhalokati Sadar</option>
									<option>Kathalia</option>
									<option>Nalchity</option>
									<option>Rajapur</option>
									<option>Bauphal</option>
									<option>Dashmina</option>
									<option>Galachipa</option>
									<option>Mirzaganj</option>
									<option>Patuakhali Sadar</option>
									<option>Rangabali</option>
									<option>Dumki</option>
									<option>Bhandaria</option>
									<option>Mathbaria</option>
									<option>Nazirpur</option>
									<option>Pirojpur Sadar</option>
									<option>Nesarabad (Swarupkati)</option>
									<option>Bandarban Sadar</option>
									<option>Lama</option>
									<option>Naikhongchhari</option>
									<option>Rowangchhari</option>
									<option>Ruma</option>
									<option>Thanchi</option>
									<option>Akhaura</option>
									<option>Bancharampur</option>
									<option>Brahmanbaria Sadar</option>

									<option>Nabinagar</option>
									<option>Nasirnagar</option>
									<option>Sarail</option>
									<option>Ashuganj</option>
									<option>Bijoynagar</option>

									<option>Faridganj</option>
									<option>Haimchar</option>
									<option>Haziganj</option>

									<option>Matlab Dakshin</option>
									<option>Matlab Uttar</option>

									<option>Anwara</option>
									<option>Banshkhali</option>
									<option>Boalkhali</option>

									<option>Fatikchhari</option>
									<option>Hathazari</option>
									<option>Lohagara</option>
									<option>Mirsharai</option>
									<option>Patiya</option>
									<option>Rangunia</option>
									<option>Raozan</option>

									<option>Bandor (Chittagong Port) Thana</option>

									<option>Double Mooring Thana</option>

									<option>Pahartali Thana</option>
									<option>Panchlaish Thana</option>
									<option>Barura</option>
									<option>Brahmanpara</option>
									<option>Burichang</option>

									<option>Daudkandi</option>
									<option>Debidwar</option>
									<option>Homna</option>
									<option>Laksam</option>
									<option>Muradnagar</option>
									<option>Nangalkot</option>

									<option>Meghna</option>
									<option>Titas</option>
									<option>Monohargonj</option>
									<option>Kutubdia</option>
									<option>Maheshkhali</option>
									<option>Ramu</option>
									<option>Teknaf</option>
									<option>Ukhia</option>
									<option>Pekua</option>
									<option>Chhagalnaiya</option>
									<option>Daganbhuiyan</option>
									<option>Feni Sadar</option>
									<option>Parshuram</option>
									<option>Fulgazi</option>
									<option>Dighinala</option>
									<option>Khagrachhari</option>
									<option>Lakshmichhari</option>
									<option>Mahalchhari</option>
									<option>Manikchhari</option>
									<option>Matiranga</option>
									<option>Panchhari</option>
									<option>Ramgarh</option>
									<option>Lakshmipur Sadar</option>
									<option>Raipur</option>
									<option>Ramganj</option>
									<option>Ramgati</option>
									<option>Kamalnagar</option>
									<option>Begumganj</option>
									<option>Noakhali Sadar</option>
									<option>Chatkhil</option>
									<option>Companiganj</option>
									<option>Hatiya</option>

									<option>Kabirhat</option>
									<option>Bagaichhari</option>
									<option>Barkal</option>

									<option>Belaichhari</option>

									<option>Juraichhari</option>
									<option>Langadu</option>
									<option>Naniyachar</option>
									<option>Rajasthali</option>
									<option>Rangamati Sadar</option>
									<option>Dhamrai</option>
									<option>Dohar</option>
									<option>Keraniganj</option>
									<option>Nawabganj</option>

									<option>Alfadanga</option>
									<option>Bhanga</option>
									<option>Boalmari</option>

									<option>Faridpur Sadar</option>
									<option>Madhukhali</option>
									<option>Nagarkanda</option>

									<option>Gazipur Sadar</option>
									<option>Kaliakair</option>
									<option>Kaliganj</option>
									<option>Kapasia</option>
									<option>Sreepur</option>
									<option>Gopalganj Sadar</option>
									<option>Kashiani</option>
									<option>Kotalipara</option>
									<option>Muksudpur</option>
									<option>Tungipara</option>
									<option>Baksiganj</option>
									<option>Dewanganj</option>
									<option>Islampur</option>
									<option>Jamalpur Sadar</option>
									<option>Madarganj</option>
									<option>Melandaha</option>

									<option>Astagram</option>
									<option>Bajitpur</option>
									<option>Bhairab</option>
									<option>Hossainpur</option>
									<option>Itna</option>

									<option>Mithamain</option>
									<option>Nikli</option>
									<option>Pakundia</option>
									<option>Tarail</option>
									<option>Rajoir</option>
									<option>Madaripur Sadar</option>
									<option>Daulatpur</option>
									<option>Ghior</option>
									<option>Harirampur</option>
									<option>Manikgonj Sadar</option>

									<option>Gazaria</option>
									<option>Lohajang</option>
									<option>Munshiganj Sadar</option>

									<option>Tongibari</option>
									<option>Bhaluka</option>
									<option>Dhobaura</option>
									<option>Fulbaria</option>
									<option>Gaffargaon</option>
									<option>Gauripur</option>
									<option>Haluaghat</option>
									<option>Ishwarganj</option>
									<option>Mymensingh Sadar</option>
									<option>Muktagachha</option>
									<option>Nandail</option>
									<option>Phulpur</option>
									<option>Trishal</option>
									<option>Tara Khanda</option>
									<option>Araihazar</option>
									<option>Bandar</option>
									<option>Narayanganj Sadar</option>
									<option>Rupganj</option>
									<option>Atpara</option>
									<option>Barhatta</option>
									<option>Durgapur</option>
									<option>Kalmakanda</option>
									<option>Kendua</option>
									<option>Madan</option>
									<option>Mohanganj</option>
									<option>Netrokona Sadar</option>
									<option>Purbadhala</option>
									<option>Baliakandi</option>
									<option>Goalandaghat</option>
									<option>Pangsha</option>
									<option>Rajbari Sadar</option>
									<option>Bhedarganj</option>
									<option>Damudya</option>
									<option>Gosairhat</option>
									<option>Naria</option>
									<option>Nakla</option>
									<option>Nalitabari</option>
									<option>Gopalpur</option>
									<option>Basail</option>
									<option>Bhuapur</option>
									<option>Delduar</option>
									<option>Ghatail</option>

									<option>Madhupur</option>
									<option>Mirzapur</option>
									<option>Nagarpur</option>
									<option>Dhanbari</option>
									<option>Tangail Sadar</option>
									<option>Narsingdi Sadar</option>
									<option>Belabo</option>
									<option>Monohardi</option>
									<option>Palash</option>
									<option>Raipura</option>
									<option>Bagerhat Sadar</option>
									<option>Chitalmari</option>
									<option>Fakirhat</option>
									<option>Mollahat</option>
									<option>Mongla</option>
									<option>Morrelganj</option>
									<option>Rampal</option>
									<option>Sarankhola</option>
									<option>Alamdanga</option>
									<option>Chuadanga Sadar</option>
									<option>Damurhuda</option>
									<option>Jibannagar</option>
									<option>Abhaynagar</option>
									<option>Bagherpara</option>
									<option>Manirampur</option>
									<option>Harinakunda</option>
									<option>Maheshpur</option>
									<option>Batiaghata</option>
									<option>Dacope</option>
									<option>Dumuria</option>
									<option>Dighalia</option>
									<option>Koyra</option>
									<option>Paikgachha</option>
									<option>Phultala</option>
									<option>Rupsha</option>
									<option>Terokhada</option>
									<option>Daulatpur Thana</option>
									<option>Harintana Thana</option>
									<option>Bheramara</option>
									<option>Daulatpur</option>
									<option>Mirpur</option>
									<option>Magura Sadar</option>
									<option>Mohammadpur</option>
									<option>Gangni</option>
									<option>Meherpur Sadar
									<option>Mujibnagar</option>
									<option>Lohagara</option>
									<option>Narail Sadar</option>
									<option>Naragati Thana</option>
									<option>Assasuni</option>
									<option>Debhata</option>
									<option>Lakhai</option>
									<option>Madhabpur</option>
									<option>Nabiganj</option>
									<option>Moulvibazar Sadar</option>
									<option>Rajnagar</option>
									<option>Bishwamvarpur</option>
									<option>Derai</option>
									<option>Dharampasha</option>
									<option>Dowarabazar</option>
									<option>Tahirpur</option>
									<option>Fenchuganj</option>
									<option>Kanaighat</option>
								</select>
							</div>


							<div class="form-group">
								<br />
								<button
									style="background: #74B54D; width: 245px; color: #FFFFFF;"
									type="submit" class="btn">Search</button>
							</div>
						</div>
					</form>
					<br /> <br />

					<div style="border: 2px solid #E4E4E4; padding: 6px;"
						class="section-showproduct-lefte">
						<h6
							style="font-weight: bold; background: #74B54D; padding: 6px; color: #FFFFFF; border-radius: 4px; margin-bottom: 9px;">Select
							Shop Category</h6>
						<%
							CategoryServiceImpl categoryservice = new CategoryServiceImpl();
							int count = 0;
							for (Category m : categoryservice.getcategoryList()) {
						%>
						<p style="margin-top: 3px; color: #74B54D; font-size: 14px;">
							<span class="glyphicon glyphicon-plus-sign"></span><a
								style="font-weight: bold; font-size: 14px; color: #74B54D;"
								href="searchproduct.jsp?productName=<%=m.getShopcategory()%>">
								<%=m.getShopcategory()%>
							</a>
						</p>
						<%
							}
						%>
					</div>
					<br> <br> <br> <br>

					
					
					
					
					
				</div>
				<div class="col-md-9 col-sm-9">

					<div class="section-showproduct-right">

						<%
							String postId = request.getParameter("postId");
							ShopkeeperServiceImp shopservice = new ShopkeeperServiceImp();
							Post post = shopservice.getPost(postId);
						%>

						<div class="panel-body">

							<%
								String error = "";
								if (request.getAttribute("error") != null) {
									error = (String) request.getAttribute("error");
							%>
							<div class="alert alert-danger alert-dismissible">
								<a href="#" class="close" data-dismiss="alert"
									aria-label="close">&times;</a> <strong>Error!</strong><%=error%>
							</div>
							<%
								}
							%>
							<form action="ManageCustomer" method="POST">
								<input type="hidden" name="action" value="ADD_CART" /> 
								<input
									type="hidden" name="getId"
									value="<%=post.getId() %>" />
								<input
									type="hidden" name="getquantity"
									value="<%=post.getQuantity()%>" /> <input type="hidden"
									name="customerEmail" value="<%=username%>" />
								<div class="form-group">
									<input type="hidden" name="imglink"
										value="<%=post.getImage()%>" /> <input type="hidden"
										name="postId" value="<%=post.getId()%>" /> <img
										src="uploads/<%=post.getImage()%>" alt="Smiley face"
										height="100" width="170"> <br /> <br />
									<div class="form-group">
										<label style="font-weight: bold; color: #000;"
											for="inputUserName">Quantity</label> <input
											style="width: 90px; border: 1px solid #74B54D; margin-top: 8px; margin-left: 10px;"
											type="number" name="cartQuantity" value="0" />
									</div>

								</div>
								<input type="hidden" name="owneremail"
									value="<%=post.getEmail()%>">
								<div class="form-group">
									<label style="font-weight: bold; color: #000;"
										for="inputUserName">Product Name</label> <input
										style="border: 1px solid #FFFFFF; background: #FFFFFF; font-weight: bold;"
										class="form-control" type="text" name="cartProductname"
										value="<%=post.getProductname()%>" readonly />
								</div>
								<div class="form-group">
									<label style="font-weight: bold; color: #000;"
										for="inputUserName">Product Description</label> <input
										style="border: 1px solid #FFFFFF; background: #FFFFFF;"
										class="form-control" type="text" name="cartDescription"
										value=" <%=post.getDescription()%>" readonly />
								</div>
								<div class="form-group">
									<label style="font-weight: bold; color: #000;"
										for="inputUserName">Product Price(Tk.)</label> <input
										style="border: 1px solid #FFFFFF; background: #FFFFFF; font-weight: bold;"
										class="form-control" type="text" name="cartPrice"
										value="<%=post.getPrice()%>"readonly />
								</div>
								<button class="btn"
									style="background: #74B54D; width: 245px; color: #FFFFFF;">Add
									To Cart</button>
								<a href="product.jsp" class="btn"
									style="background: #74B54D; width: 245px; text-decoration: none; color: #FFFFFF;">
									cancel</a>
							</form>
						</div>
						<br /> <br /> <br /> <br />
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="footer/foot.jsp"></jsp:include>