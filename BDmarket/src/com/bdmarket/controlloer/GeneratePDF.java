package com.bdmarket.controlloer;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.bdmarket.model.Customer;
import com.bdmarket.model.ShopKeeper;
import com.bdmarket.serviceImp.CustomerRegServiceImp;
import com.bdmarket.serviceImp.ShopkeeperServiceImp;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

@WebServlet("/GeneratePDF")
public class GeneratePDF extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CustomerRegServiceImp customerreg = new CustomerRegServiceImp();
	ShopkeeperServiceImp shokeeperservice = new ShopkeeperServiceImp();

	public GeneratePDF() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getParameter("action");

		if (action.equalsIgnoreCase("VIEWTOTALCUSTOMER")) {
			Document document = new Document();
			String datetime = new SimpleDateFormat("yyyy.MM.dd").format(new Date());
			Font font = FontFactory.getFont(FontFactory.TIMES_ROMAN, 23);
			Font font1 = FontFactory.getFont(FontFactory.TIMES_ROMAN, 12);
			Font font5 = FontFactory.getFont(FontFactory.TIMES_ROMAN, 11, Font.BOLD);
			Font font6 = FontFactory.getFont(FontFactory.TIMES_ROMAN, 10, Font.NORMAL);
			try {
				response.setContentType("application/pdf");
				PdfWriter.getInstance(document, response.getOutputStream());
				document.open();

				Paragraph paragraph = new Paragraph("BD Market", font);
				paragraph.setAlignment(Element.ALIGN_CENTER);
				document.add(paragraph);

				Paragraph address = new Paragraph("Address:102, Shukrabad,Dhanmondi, Dhaka-1207", font1);
				address.setAlignment(Element.ALIGN_CENTER);
				document.add(address);

				Paragraph phone = new Paragraph("phone:098765432123", font1);
				phone.setAlignment(Element.ALIGN_CENTER);
				document.add(phone);

				Paragraph email = new Paragraph("Email:bdmarket@gmail.com", font1);
				email.setAlignment(Element.ALIGN_CENTER);
				document.add(email);

				Paragraph monthlyReport = new Paragraph("Customer Report", font1);
				monthlyReport.setAlignment(Element.ALIGN_LEFT);
				document.add(monthlyReport);

				Paragraph pargraphdate = new Paragraph("Date: " + datetime, font1);
				pargraphdate.setAlignment(Element.ALIGN_LEFT);
				document.add(pargraphdate);

				float[] pointColumnWidths = { 15F, 18F, 15F, 15f };
				PdfPTable table = new PdfPTable(pointColumnWidths);
				table.setSpacingBefore(20);
				table.setWidthPercentage(100f);

				PdfPCell c1 = new PdfPCell(new Phrase("Name", font5));
				c1.setHorizontalAlignment(Element.ALIGN_CENTER);

				table.addCell(c1);

				c1 = new PdfPCell(new Phrase("Email", font5));

				c1.setHorizontalAlignment(Element.ALIGN_CENTER);
				table.addCell(c1);

				c1 = new PdfPCell(new Phrase("Contactno", font5));
				c1.setPaddingBottom(7f);
				c1.setHorizontalAlignment(Element.ALIGN_CENTER);
				table.addCell(c1);

				c1 = new PdfPCell(new Phrase("Date", font5));
				c1.setPaddingBottom(7f);
				c1.setHorizontalAlignment(Element.ALIGN_CENTER);
				table.addCell(c1);

				table.setHeaderRows(1);
				c1.setPaddingBottom(10f);
				c1.setHorizontalAlignment(Element.ALIGN_CENTER);

				for (Customer customer : customerreg.getList()) {

					PdfPCell cell_1 = new PdfPCell(new Phrase(customer.getCus_name(), font6));
					cell_1.setPaddingBottom(6f);
					cell_1.setHorizontalAlignment(Element.ALIGN_CENTER);
					PdfPCell cell_2 = new PdfPCell(new Phrase((customer.getCus_email()), font6));
					cell_2.setPaddingBottom(6f);
					cell_2.setHorizontalAlignment(Element.ALIGN_CENTER);
					PdfPCell cell_3 = new PdfPCell(new Phrase((customer.getCus_phone()), font6));
					cell_3.setPaddingBottom(6f);
					cell_3.setHorizontalAlignment(Element.ALIGN_CENTER);
					PdfPCell cell_4 = new PdfPCell(new Phrase(customer.getCus_date(), font6));
					cell_4.setPaddingBottom(6f);
					cell_4.setHorizontalAlignment(Element.ALIGN_CENTER);

					table.addCell(cell_1);
					table.addCell(cell_2);
					table.addCell(cell_3);
					table.addCell(cell_4);

				}

				document.add(table);
			} catch (Exception e) {
				e.printStackTrace();
			}
			document.close();

		}

	}

}
