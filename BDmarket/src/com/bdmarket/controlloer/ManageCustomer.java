package com.bdmarket.controlloer;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.bdmarket.model.Cart;
import com.bdmarket.model.Customer;
import com.bdmarket.model.CustomerOrder;
import com.bdmarket.model.MessageShopkeeper;
import com.bdmarket.model.Post;
import com.bdmarket.serviceImp.CartServiceImp;
import com.bdmarket.serviceImp.CustomerServiceImp;
import com.bdmarket.serviceImp.MessageShopkeeperServiceImpl;
import com.bdmarket.util.Formate;

@WebServlet("/ManageCustomer")
public class ManageCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String date = new SimpleDateFormat("yyyy.MM.dd").format(new Date());
	CartServiceImp cartservice = new CartServiceImp();
	CustomerServiceImp customerservice = new CustomerServiceImp();
	Formate formate = new Formate();
	MessageShopkeeperServiceImpl messageshopkeeper = new MessageShopkeeperServiceImpl();

	public ManageCustomer() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String getDeleteId = request.getParameter("deletecart");
		String URL = "";
		if (getDeleteId != null) {
			cartservice.delete_Cart(Integer.parseInt(getDeleteId));
			URL = "product.jsp";
		}
		response.sendRedirect(URL);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String action = request.getParameter("action");

		if (action.equalsIgnoreCase("ADD_CART")) {

			String postId = request.getParameter("postId");
			String cusEmail = request.getParameter("customerEmail");
			String produtName = request.getParameter("cartProductname");
			String quantitiy = request.getParameter("cartQuantity");
			String description = request.getParameter("cartDescription");
			String price = request.getParameter("cartPrice");
			String ownerEmail = request.getParameter("owneremail");
			String imgLink = request.getParameter("imglink");
			String getquantity = request.getParameter("getquantity");
			String getId = request.getParameter("getId");
			String error = "";
			String url = "";

			if (produtName.equals("") || quantitiy.equals("") || description.equals("") || price.equals("")
					|| ownerEmail.equals("")) {
				error += "Field must not be empty!!";
			} else if (Integer.parseInt(quantitiy) <= 0) {
				error += "Invalid Quantity!!";
			} else if (formate.checkNumbervalidator(quantitiy)) {
				error += "Invalid Quantity!!";
			} else if (formate.checkSpecialcharacter(quantitiy)) {
				error += "Invalid Quantity!!";
			} else if (Integer.parseInt(quantitiy) > Integer.parseInt(getquantity)) {
				error += "Sorry, Quantity not available!!";
			} else if (cartservice.checkcartEmail(cusEmail)) {
				error += "Sorry, please complete your transaction!!";
			} else {
				double totalPrice = ((Integer.parseInt(quantitiy) * (Double.parseDouble(price))));
				cartservice.add_Cart(new Cart(0, produtName, Integer.parseInt(quantitiy), description, totalPrice, date,
						ownerEmail, imgLink, cusEmail, Integer.parseInt(getId)));
				response.sendRedirect("cart.jsp");
			}
			if (error.length() > 0) {
				url = "/addcart.jsp";
				request.setAttribute("error", error);
				request.setAttribute("postId", postId);
				RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
				rd.forward(request, response);
			}

		} else if (action.equalsIgnoreCase("CUSTOMER_ORDER")) {

			String cartId = request.getParameter("cartId");
			String productId = request.getParameter("getpostId");
			String ownerEmail = request.getParameter("ownerEmail");
			String imgLink = request.getParameter("imglink");
			String productname = request.getParameter("productname");
			String prodouctDescription = request.getParameter("prodouctDescription");
			String productQuantity = request.getParameter("productQuantity");
			String productPrice = request.getParameter("productPrice");
			String customerAddress = request.getParameter("customerAddress");
			String customerEmail = request.getParameter("customerEmail");
			String customerContactNo = request.getParameter("customerContactNo");
			String error = "";
			String url = "";

			if (productname.equals("") || prodouctDescription.equals("") || productQuantity.equals("")
					|| productPrice.equals("") || customerAddress.equals("") || customerEmail.equals("")
					|| customerContactNo.equals("")) {
				error += "Field must not be empty!!";
			} else {
				customerservice.add_Order(new CustomerOrder(0, productname, Integer.parseInt(productQuantity),
						prodouctDescription, Double.parseDouble(productPrice), date, ownerEmail, customerEmail, imgLink,
						1, customerAddress, customerContactNo));
				cartservice.delete_Cart(Integer.parseInt(cartId));

				int getQuantity = customerservice.getQuantitynumber(Integer.parseInt(productId));
				int getupdateQuantity = 0;
				getupdateQuantity = getQuantity - Integer.parseInt(productQuantity);

				cartservice.updateCart(new Post(getupdateQuantity, ownerEmail));
				response.sendRedirect("thankyou.jsp");
			}
			if (error.length() > 0) {
				url = "/checkout.jsp";
				request.setAttribute("error", error);
				request.setAttribute("cartId", cartId);
				RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
				rd.forward(request, response);
			}

		} else if (action.equalsIgnoreCase("CUSPROFILE_UPDATE")) {

			String customerName = request.getParameter("name");
			String customerPhone = request.getParameter("contact");
			String customerPassword = request.getParameter("password");
			String customerEmail = request.getParameter("email");
			String error = "";
			String url = "";

			if (customerName.equals("") || customerPhone.equals("") || customerPassword.equals("")
					|| customerEmail.equals("")) {
				error += "Field must not be empty!!";
			} else if (formate.checkNumbervalidator(customerPhone)) {
				error += "Invalid phone number!!";
			} else if (formate.checkSpecialcharacter(customerPhone)) {
				error += "Invalid phone number!!";
			} else if (formate.checkContactNo(customerPhone)== false) {
				error += "Invalid phone number!!";

			} else {
				customerservice.updateCustomerprofile(
						new Customer(customerPhone, customerPassword, customerName, customerEmail));
			}

			if (error.length() > 0) {
				url = "/customerprofile.jsp";
				request.setAttribute("error", error);
				RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
				rd.forward(request, response);
			} else {
				url = "/customerprofile.jsp";
				request.setAttribute("success", "Your profile update successfully!!");
				RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
				rd.forward(request, response);
			}

		} else if (action.equalsIgnoreCase("ADDMESSAGESHOPKEEPER")) {

			String shopkeeperemail = request.getParameter("shopkeeperemail");
			String customeremail = request.getParameter("customeremail");
			String comment = request.getParameter("comment");

			if (shopkeeperemail != null || customeremail != null || comment != null) {
				messageshopkeeper.sendMessageshopkeeper(
						new MessageShopkeeper(0, shopkeeperemail, customeremail, comment, 1, date));
			}

		} else if (action.equalsIgnoreCase("UPDATEPRODUCTDELIVERIY")) {
			String getId = request.getParameter("Id");
			customerservice.updateCustomerOrderrole(new CustomerOrder(3, Integer.parseInt(getId)));
		}
	}

}
