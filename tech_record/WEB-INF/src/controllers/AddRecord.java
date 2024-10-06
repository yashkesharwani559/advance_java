package controllers;

import java.sql.Date;
import java.io.IOException;

import models.Product;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/add.do")
public class AddRecord extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        HttpSession session = request.getSession();

        String productName = request.getParameter("product_name");
        String companyName = request.getParameter("company_name");
        Integer price = Integer.parseInt(request.getParameter("price"));
        Integer quantity = Integer.parseInt(request.getParameter("quantity"));
        Float discount = Float.parseFloat(request.getParameter("discount"));
        Date productionDate = Date.valueOf(request.getParameter("pd"));

        Product p = new Product(productName, companyName, price, quantity, discount, productionDate);

        Boolean b = p.addRecord();

        if (b) {
            session.setAttribute("msg", "success");
        }

        response.sendRedirect("show.do");
    }
}
