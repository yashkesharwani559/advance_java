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

        pw.println("<h1>UserName: " + req.getParameter("unm") + "</h1>");
        pw.println("<h1>Email: " + req.getParameter("email") + "</h1>");
        pw.println("<h1>Password: " + req.getParameter("passw") + "</h1>");

        pw.println("<h1>Full UserName: ");
        for (String s : req.getParameterValues("unm")) {
            pw.println(s + " ");
        }
        pw.println("</h1>");

        // String[] getParameterValues(String name) -> method returns the String[] (String array) having all the values with the String name passed as argument

        pw.flush();
        pw.close();

    }
}