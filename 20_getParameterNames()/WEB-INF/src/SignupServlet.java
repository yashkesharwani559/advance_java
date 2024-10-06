import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SignupServlet extends HttpServlet{
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
       
        resp.setContentType("text/html");

        PrintWriter pw = resp.getWriter();

        Enumeration<String> arr = req.getParameterNames();

        pw.print("<h1>Parameter Names: ");
        
        while (arr.hasMoreElements()) {
            pw.print(arr.nextElement() + ", ");
        }

        pw.print("</h1>");
        
        pw.close();
    }
}