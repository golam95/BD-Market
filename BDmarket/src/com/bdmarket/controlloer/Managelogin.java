package com.bdmarket.controlloer;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.bdmarket.daoimp.CustomerRegImp;
import com.bdmarket.daoimp.ShopkeeperdaoImp;
import com.bdmarket.model.Post;
import com.bdmarket.serviceImp.CartServiceImp;
import com.bdmarket.serviceImp.CustomerServiceImp;
import com.bdmarket.util.DBconnection;

@WebServlet("/Managelogin")
public class Managelogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	CustomerRegImp cus_reg = new CustomerRegImp();
	ShopkeeperdaoImp shop_reg = new ShopkeeperdaoImp();

	public Managelogin() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/plain");
		HttpSession session = request.getSession();
		
		String url = "";
		String error = "";
		String login_email = request.getParameter("lname");
		String login_password = request.getParameter("lpass");

		if (login_email.equals("") || login_password.equals("")) {

			error += "Field must not be empty!!";

		} else {

			if (cus_reg.login_customer(login_email, login_password, 101)) {

				session.setAttribute("username", login_email);
				Cookie loginCookie = new Cookie("username", login_email);
				loginCookie.setMaxAge(30 * 60);
				response.addCookie(loginCookie);
				response.sendRedirect("product.jsp");

			} else if (cus_reg.login_customer(login_email, login_password, 105)) {

				session.setAttribute("adminusername", login_email);
				Cookie loginCookie = new Cookie("adminusername", login_email);
				loginCookie.setMaxAge(30 * 60);
				response.addCookie(loginCookie);
				response.sendRedirect("./admin/adminDashboard.jsp");

			} else if (shop_reg.login_Shopkeeper(login_email, login_password, 109)) {
				session.setAttribute("shopkeeperusername", login_email);
				Cookie loginCookie = new Cookie("shopkeeperusername", login_email);
				loginCookie.setMaxAge(30 * 60);
				response.addCookie(loginCookie);

				if (!shop_reg.check_updateprofile(login_email)) {
					response.sendRedirect("./shopkeeper/checkupdate.jsp");
				} else {
					response.sendRedirect("./shopkeeper/shopdashboard.jsp");
				}

			} else {
				error += "Sorry,Invalid Username or password!!";
			}
		}
		if (error.length() > 0) {
			url = "/login.jsp";
			request.setAttribute("error", error);
			RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
			rd.forward(request, response);

		}
	}

}
