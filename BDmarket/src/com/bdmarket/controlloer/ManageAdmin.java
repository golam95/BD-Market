package com.bdmarket.controlloer;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.bdmarket.model.Category;
import com.bdmarket.model.Customer;
import com.bdmarket.model.Message;
import com.bdmarket.model.MessageShopkeeper;
import com.bdmarket.model.ShopKeeper;
import com.bdmarket.serviceImp.CategoryServiceImpl;
import com.bdmarket.serviceImp.CustomerRegServiceImp;
import com.bdmarket.serviceImp.CustomerServiceImp;
import com.bdmarket.serviceImp.ShopkeeperServiceImp;
import com.bdmarket.serviceImp.UpdateProfileshopServiceImpl;
import com.bdmarket.util.Formate;
import com.bdmarket.util.SendEmail;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

@WebServlet("/ManageAdmin")
public class ManageAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CustomerServiceImp customerservice = new CustomerServiceImp();
	Formate formate = new Formate();
	ShopkeeperServiceImp shokeeperservice = new ShopkeeperServiceImp();
	UpdateProfileshopServiceImpl updateprofile = new UpdateProfileshopServiceImpl();
	CustomerRegServiceImp customerreg = new CustomerRegServiceImp();
	CategoryServiceImpl catetgoryservice = new CategoryServiceImpl();

	public ManageAdmin() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String deleteshokeeperdetails = request.getParameter("deleteshokeeperdetails");
		String deletecustomerdetails = request.getParameter("deletecustomerdetails");
		String deletecategoryId = request.getParameter("deletecategoryId");

		String URL = "";
		if (deleteshokeeperdetails != null) {
			shokeeperservice.delete_Shopkeeper(deleteshokeeperdetails);
			updateprofile.delete_profileshop(deleteshokeeperdetails);
			URL = "./admin/adminViewshopkeeper.jsp";
		} else if (deletecustomerdetails != null) {
			customerreg.delete_Customer(Integer.parseInt(deletecustomerdetails));
			URL = "./admin/adminViewcustomer.jsp";
		} else if (deletecategoryId != null) {
			catetgoryservice.deleteCategory(Integer.parseInt(deletecategoryId));
			URL = "./admin/adminViewcategory.jsp";
		}
		response.sendRedirect(URL);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getParameter("action");

		if (action.equalsIgnoreCase("CUSPROFILE_UPDATE")) {

			String customerName = request.getParameter("name");
			String customerPhone = request.getParameter("contact");
			String customerPassword = request.getParameter("password");
			String customerEmail = request.getParameter("email");
			String error = "";

			if (customerName.equals("") || customerPhone.equals("") || customerPassword.equals("")
					|| customerEmail.equals("")) {
				error += "Field must not be empty!!";
			} else if (formate.checkNumbervalidator(customerPhone)) {
				error += "Invalid phone number!!";
			} else if (formate.checkSpecialcharacter(customerPhone)) {
				error += "Invalid phone number!!";
			} else if (formate.checkContactNo(customerPhone) == false) {
				error += "Invalid phone number!!";

			} else {
				customerservice.updateCustomerprofile(
						new Customer(customerPhone, customerPassword, customerName, customerEmail));
			}
			if (error.length() > 0) {
				response.sendRedirect("./admin/adminProfile.jsp?error=" + error);
			} else {
				response.sendRedirect("./admin/adminProfile.jsp?success=" + "Your profile update successfully!!");
			}

		} else if (action.equalsIgnoreCase("ADMINREPLAYEMAIL")) {

			String customeremail = request.getParameter("customeremail");
			String comment = request.getParameter("comment");
			String id = request.getParameter("id");

			String Info = "BD Market" + "\n\n";
			Info += "Hey, " + customeremail + " " + "hopefully you are doing well.Thank you so much for contacting us!!"
					+ "\n";
			Info += comment + "\n\n\n";
			Info += "If you have any problem.Please contact us" + "\n";
			Info += "Phone: +88 01812566856" + "\n";
			Info += "Gmail: 1000145@daffodil.ac";
			shokeeperservice.updateMessage(new Message(3, Integer.parseInt(id)));
			SendEmail.send(customeremail, "Replay Message", Info, "golamnobi280@gmail.com",
					"tithi+sager+mehedi+urmi.56");
			response.sendRedirect("./admin/adminViewmessage.jsp");

		} else if (action.equalsIgnoreCase("ADDCATEGORY")) {
			String getCatName = request.getParameter("categoryname");
			catetgoryservice.addCategory(new Category(0, getCatName));
			response.sendRedirect("./admin/adminAddcategory.jsp?success=" + "Add category successfully!!");

		} else if (action.equalsIgnoreCase("SEARCHBYLOCATION")) {
			String location = request.getParameter("location");
			response.sendRedirect("searchbylocation.jsp?searchValue=" + location);

		}

	}

}
