package com.bdmarket.controlloer;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import com.bdmarket.model.Message;
import com.bdmarket.model.MessageShopkeeper;
import com.bdmarket.model.Post;
import com.bdmarket.model.ShopKeeper;
import com.bdmarket.serviceImp.CustomerServiceImp;
import com.bdmarket.serviceImp.MessageShopkeeperServiceImpl;
import com.bdmarket.serviceImp.ShopkeeperServiceImp;
import com.bdmarket.util.SendEmail;

@WebServlet("/ManageShopkeeper")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, // 10 MB
		maxFileSize = 1024 * 1024 * 50, // 50 MB
		maxRequestSize = 1024 * 1024 * 100) // 100 MB
public class ManageShopkeeper extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String UPLOAD_DIR = "uploads";
	private String date = new SimpleDateFormat("yyyy.MM.dd").format(new Date());
	ShopkeeperServiceImp shopkeeper = new ShopkeeperServiceImp();
	MessageShopkeeperServiceImpl messageshopkeeperservice = new MessageShopkeeperServiceImpl();
	CustomerServiceImp customerservice = new CustomerServiceImp();

	public ManageShopkeeper() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String getpostid = request.getParameter("deletepost");
		String getmessageId = request.getParameter("deletemessage");
		String deleteUsermessage = request.getParameter("deleteUsermessage");
		String deleteOnlineorder = request.getParameter("deleteOnlineorder");

		String URL = "";
		if (getpostid != null) {
			shopkeeper.deletePost(Integer.parseInt(getpostid));
			URL = "./shopkeeper/viewpost.jsp";
		} else if (getmessageId != null) {
			shopkeeper.deleteMessage(Integer.parseInt(getmessageId));
			URL = "./shopkeeper/viewMessage.jsp";
		} else if (deleteUsermessage != null) {
			messageshopkeeperservice.deleteShopkeepermessage(Integer.parseInt(deleteUsermessage));
			URL = "./shopkeeper/shopkeeperviewMessage.jsp";
		} else if (deleteOnlineorder != null) {
			customerservice.deleteOnlineorder(Integer.parseInt(deleteOnlineorder));
			URL = "./shopkeeper/shopkeeperViewonlineorder.jsp";
		}
		response.sendRedirect(URL);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		String command = request.getParameter("action");

		if (command.equalsIgnoreCase("SEND_MESSAGE")) {
			String email = request.getParameter("email");
			String description = request.getParameter("description");
			if (!email.equals("") || !description.equals("")) {
				shopkeeper.sendMessage(new Message(0, email, description, date, 1));
			}

		} else if (command.equalsIgnoreCase("ADD_PRODUCT")) {

			String email = request.getParameter("email");
			String name = request.getParameter("productname");
			String description = request.getParameter("descriptionp");
			String price = request.getParameter("price");
			String quantity = request.getParameter("quantity");
			String typeofshop = request.getParameter("typeofshop");
			String location = request.getParameter("location");
			String msg = "";

			if (email.equals("") || name.equals("") || description.equals("") || price.equals("")
					|| quantity.equals("")) {
				msg += "Field must not be empty!!";
				response.sendRedirect("./shopkeeper/addpost.jsp?error=" + msg);

			} else {
				String applicationPath = request.getServletContext().getRealPath("");
				String uploadFilePath = applicationPath + File.separator + UPLOAD_DIR;

				File fileSaveDir = new File(uploadFilePath);
				if (!fileSaveDir.exists()) {
					fileSaveDir.mkdirs();
				}
				String fileName = null;
				for (Part part : request.getParts()) {
					fileName = getFileName(part);
					fileName = new File(fileName).getName();
					String timeStamp = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new Date());
					fileName = timeStamp + ".jpg";
					part.write(uploadFilePath + File.separator + fileName);
				}
				shopkeeper.addPost(new Post(0, email, name, description, Double.parseDouble(price),
						Integer.parseInt(quantity), fileName, date, typeofshop, location));
				msg += "Add your post successfully!!";
				response.sendRedirect("./shopkeeper/addpost.jsp?success=" + msg);
			}
		} else if (command.equalsIgnoreCase("UPDATE_POST")) {

			int Id = Integer.parseInt(request.getParameter("Id"));
			String name = request.getParameter("name");
			String description = request.getParameter("description");
			int quantity = Integer.parseInt(request.getParameter("quantity"));
			double price = Double.parseDouble(request.getParameter("price"));
			shopkeeper.updatePost(new Post(Id, name, description, price, quantity));

		} else if (command.equalsIgnoreCase("UPDATE_CON")) {
			String contactNo = request.getParameter("contactNo");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			shopkeeper.updateprofileContactNo(new ShopKeeper(contactNo, password, date, email));

		} else if (command.equalsIgnoreCase("REPLAYEMAIL")) {

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
			messageshopkeeperservice.updateMessagerole(new MessageShopkeeper(3, Integer.parseInt(id)));
			SendEmail.send(customeremail, "Replay Message", Info, "golamnobi280@gmail.com",
					"tithi+sager+mehedi+urmi.56");

			response.sendRedirect("./shopkeeper/shopkeeperviewMessage.jsp");

		}

	}

	private String getFileName(Part part) {
		String contentDisp = part.getHeader("content-disposition");
		String[] tokens = contentDisp.split(";");
		for (String token : tokens) {
			if (token.trim().startsWith("fileName")) {
				return token.substring(token.indexOf("=") + 2, token.length() - 1);
			}
		}
		return "";
	}

}
