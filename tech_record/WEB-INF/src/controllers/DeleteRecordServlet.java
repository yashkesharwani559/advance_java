package controllers;

import java.io.IOException;
import models.Product;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
@WebServlet("/delete.do")
public class DeleteRecordServlet extends HttpServlet{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException  {

        Integer productID = Integer.parseInt(request.getParameter("product_id"));

        Product product = new Product(productID);
        
        product.deleteRecordProduct();

        request.getRequestDispatcher("show.do").forward(request, response);

    }
}
