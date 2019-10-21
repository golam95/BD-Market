package com.bdmarket.controlloer;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.bdmarket.daoimp.ContactImp;
import com.bdmarket.daoimp.CustomerRegImp;
import com.bdmarket.daoimp.ShopkeeperdaoImp;
import com.bdmarket.daoimp.updateProfileshopImp;
import com.bdmarket.model.Contact;
import com.bdmarket.model.Customer;
import com.bdmarket.model.ShopKeeper;
import com.bdmarket.model.UpdateProfile;
import com.bdmarket.serviceImp.ContactServiceImp;
import com.bdmarket.serviceImp.CustomerServiceImp;
import com.bdmarket.serviceImp.ShopkeeperServiceImp;
import com.bdmarket.util.Formate;
import com.bdmarket.util.SendEmail;

@WebServlet("/Manage_reg")
public class Managereg extends HttpServlet {

	private static final long serialVersionUID = 1L;

	CustomerRegImp cus_reg = new CustomerRegImp();
	ShopkeeperServiceImp shop_reg = new ShopkeeperServiceImp();
	ContactServiceImp cus_Contact = new ContactServiceImp();
	updateProfileshopImp updateprofile = new updateProfileshopImp();
	CustomerServiceImp customerservice = new CustomerServiceImp();
	String date = new SimpleDateFormat("yyyy.MM.dd").format(new Date());
	Formate formate = new Formate();

	public Managereg() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Now implement your business logic
		response.setContentType("text/plain");
		PrintWriter out = response.getWriter();
		String action = request.getParameter("action");

		if (action.equalsIgnoreCase("REGISTRATION")) {

			String user_email = request.getParameter("email");
			String user_phone = request.getParameter("contact");
			String user_password = request.getParameter("password");
			String user_gender = request.getParameter("gender");
			String user_name = request.getParameter("name");
			String user_radio1 = request.getParameter("type");

			String error = "";
			String success = "";
			String url = "";

			if (formate.checkContactNo(user_phone)==false) {
				error += "Invalid Contact Numberddd!!!";
			} else if (formate.checkNumbervalidator(user_phone)) {
				error += "Invalid phone number!!";
			} else if (formate.checkSpecialcharacter(user_phone)) {
				error += "Invalid phone number!!";
			} else {

				if (user_radio1.equals("customer")) {

					if (cus_reg.check_emailcus(user_email) == true) {
						error += "Email Already Exit";
					} else if (cus_reg.check_contactnocus(user_phone) == true) {
						error += "Contact number is already exit";
					} else {
						cus_reg.add_Customer(new Customer(0, user_email, user_phone, user_password, user_gender, date,
								user_name, 101));
						success += "Registration done successfully!!";
					}

				} else if (user_radio1.equals("shopkeeper")) {

					if (shop_reg.check_emailshop(user_email) == true) {
						error += "Email Already Exit";
					} else if (shop_reg.check_contactnoshop(user_phone) == true) {
						error += "Contact No Already Exit";
					} else {
						shop_reg.add_Shopkeeper(new ShopKeeper(0, user_name, user_email, user_phone, user_password,
								user_gender, date, 109));
						success += "Registration done successfully!!";
					}

				}

			}

			if (error.length() > 0) {
				url = "/reg.jsp";
				request.setAttribute("error", error);
				RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
				rd.forward(request, response);
			} else {
				url = "/reg.jsp";
				request.setAttribute("success", success);
				RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
				rd.forward(request, response);
			}

			// Handle the customer contact Information

		} else if (action.equalsIgnoreCase("contactms")) {

			String contact_Name = request.getParameter("c_name");
			String contact_Email = request.getParameter("c_email");
			String contact_Subject = request.getParameter("c_subject");
			String contact_Message = request.getParameter("c_message");

			// Pattern p = Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$",
			// Pattern.CASE_INSENSITIVE);
			// Matcher m = p.matcher(contact_Email);

			if (contact_Name.equals("") || contact_Email.equals("") || contact_Subject.equals("")
					|| contact_Message.equals("")) {

				out.print("Empty Field Found!!!");

			} else {
				cus_Contact.add_contact(
						new Contact(0, contact_Name, contact_Email, contact_Subject, contact_Message, date));
			}

			// Check login panel

		} else if (action.equalsIgnoreCase("forgotpassword")) {

			String validEmail = request.getParameter("sendemail");

			String success = "";
			String error = "";
			String url = "";

			if (customerservice.check_Customeremail(validEmail) == true) {

				int rnd = (int) (Math.random() * 100);
				String rndstring = Integer.toString(rnd);
				String getstore = validEmail.substring(0, 7);
				String passwordAssistance = getstore + rndstring;
				String Info = "BD Market" + "\n\n";
				Info += "Hey, " + validEmail + " "
						+ "hopefully you are doing well.Thank you so much for contacting us!!" + "\n";
				Info += "Your new password: " + passwordAssistance + "\n\n\n";
				Info += "If you have any problem.Please contact us" + "\n";
				Info += "Phone: +88 01812566856" + "\n";
				Info += "Gmail: 1000145@daffodil.ac";

				customerservice.updateForgotpassword(new Customer(passwordAssistance, validEmail));

				SendEmail.send(validEmail, "Forgot Password", Info, "golamnobi280@gmail.com",
						"tithi+sager+mehedi+urmi.56");
				success += "Update your password.Check your email";

			} else if (shop_reg.check_emailshop(validEmail) == true) {

				int rnd = (int) (Math.random() * 100);
				String rndstring = Integer.toString(rnd);
				String getstore = validEmail.substring(0, 7);
				String passwordAssistance = getstore + rndstring;
				String Info = "BD Market" + "\n\n";
				Info += "Hey, " + validEmail + " "
						+ "hopefully you are doing well.Thank you so much for contacting us!!" + "\n";
				Info += "Your new password: " + passwordAssistance + "\n\n\n";
				Info += "If you have any problem.Please contact us" + "\n";
				Info += "Phone: +88 01812566856" + "\n";
				Info += "Gmail: 1000145@daffodil.ac";
				shop_reg.updateShopkeeperpassword(new ShopKeeper(passwordAssistance, validEmail));
				SendEmail.send(validEmail, "Forgot Password", Info, "golamnobi280@gmail.com",
						"tithi+sager+mehedi+urmi.56");
				success += "Update your password.Check your email";

			} else {

				error += "The email address not exit!!";
			}

			if (error.length() > 0) {
				url = "/forgot.jsp";
				request.setAttribute("error", error);
				RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
				rd.forward(request, response);
			} else {
				url = "/forgot.jsp";
				request.setAttribute("success", success);
				RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
				rd.forward(request, response);
			}

		} else if (action.equalsIgnoreCase("UPDATE_PROFILE")) {

			String shopkeeperEmail = request.getParameter("shopkeeperEmail");
			String shopkeepername = request.getParameter("u_name");
			String shopkeeperlocation = request.getParameter("u_location");
			String shopype = request.getParameter("u_type");
			String typesofproduct = request.getParameter("u_product");
			String error = "";

			if (shopkeepername.equals("") || shopkeeperlocation.equals("") || shopype.equals("")
					|| typesofproduct.equals("")) {
				error += "Field must not be empty!!!";
			} else if (updateprofile.check_email(shopkeeperEmail)) {
				error += "Sorry, Something wrong!!";
			} else {
				updateprofile.add_Profile(new UpdateProfile(0, shopkeepername, shopkeeperlocation, shopype,
						typesofproduct, shopkeeperEmail, date));
				response.sendRedirect("./shopkeeper/shopdashboard.jsp");
			}
			if (error.length() > 0) {
				response.sendRedirect("./shopkeeper/updateprofileerror.jsp");
			}

		}
	}
}
