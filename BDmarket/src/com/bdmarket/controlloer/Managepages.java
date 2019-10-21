package com.bdmarket.controlloer;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bdmarket.daoimp.updateProfileshopImp;
import com.bdmarket.model.UpdateProfile;

@WebServlet("/Managepages")
public class Managepages extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Managepages() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			String action = request.getParameter("action");

			if (action == null) {

				action = "DASHBOARD";
			}
			switch (action) {

			case "ADDPOSTPAGE":
				response.sendRedirect("./shopkeeper/addpost.jsp");
				break;
			case "VIEWPOSTPAGE":
				response.sendRedirect("./shopkeeper/viewpost.jsp");
				break;
			case "VIEWMESSAGEPAGE":
				response.sendRedirect("./shopkeeper/viewMessage.jsp");
				break;
			case "DASHBOARD":
				response.sendRedirect("./shopkeeper/shopdashboard.jsp");
				break;
			case "CONTACTINFO":
				response.sendRedirect("./shopkeeper/shopkeeperviewMessage.jsp");
				break;
			case "VIEWORDERPAGE":
				response.sendRedirect("./shopkeeper/shopkeeperViewonlineorder.jsp");
				break;
				
				
			
			default:
				response.sendRedirect("./shopkeeper/shopdashboard.jsp");
				break;
			}
		} catch (Exception exc) {
			throw new ServletException(exc);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
