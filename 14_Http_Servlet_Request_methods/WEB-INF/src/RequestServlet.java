import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RequestServlet extends HttpServlet {

    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        
        resp.setContentType("text/html");

        PrintWriter pw = resp.getWriter();

        pw.println("<h1>Method: "+ req.getMethod() +"</h1>");
        pw.println("<h1>Query in the form of String: "+ req.getQueryString() +"</h1>");
        pw.println("<h1>URL: "+ req.getRequestURL() +"</h1>");
        pw.println("<h1>URI: "+ req.getRequestURI() +"</h1>");
        pw.println("<h1>ServletPath: " + req.getServletPath() + "</h1>");
        
        pw.println("<h1>Headers</h1>");
        
        pw.println("<h1>"+ req.getHeader("host") +"</h1>");
        pw.println("<h1>"+ req.getHeader("accept") +"</h1>");
        pw.println("<h1>"+ req.getHeader("accept-encoding") +"</h1>");
        pw.println("<h1>"+ req.getHeader("accept-charset") +"</h1>");
        pw.println("<h1>"+ req.getHeader("accept-language") +"</h1>");


        pw.flush();
        pw.close();

    }
}