package controllers;

import java.io.IOException;
import java.sql.Date;

import models.Product;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/update.do")
public class UpdateRecordServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        Product p = new Product(Integer.parseInt(request.getParameter("product_id")));

        p.getRecordDetails();

        request.setAttribute("product", p);

        request.getRequestDispatcher("show.jsp").forward(request, response);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String productName = request.getParameter("product_name");
        String companyName = request.getParameter("company_name");
        Integer price = Integer.parseInt(request.getParameter("price"));
        Integer quantity = Integer.parseInt(request.getParameter("quantity"));
        Float discount = Float.parseFloat(request.getParameter("discount"));
        Date productionDate = Date.valueOf(request.getParameter("pd"));
        Integer productID = Integer.parseInt(request.getParameter("product_id"));

        Product p = new Product(productID, productName, companyName, price, quantity, discount, productionDate);

        p.updateProductRecord();

        request.getRequestDispatcher("show.do").forward(request, response);

    }
}
