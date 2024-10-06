import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SaveServlet extends HttpServlet{
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        resp.setContentType("text/html");

        String city = req.getParameter("city");

        String[] state = req.getParameterValues("state");

        PrintWriter pw = resp.getWriter();

        pw.println("<h1>City: " + city + "</h1>");

        pw.print("<h1>State: ");

        for (String s : state) {
            pw.print(s + ", ");
        }

        pw.println("</h1>");
        
        pw.close();
    }
}