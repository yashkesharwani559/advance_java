import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class OrderServlet extends HttpServlet {

    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        
        resp.setContentType("text/html");

        PrintWriter pw = resp.getWriter();



        pw.println("<h1>All Orders: ");
        for (String s : req.getParameterValues("food")) {
            pw.println(s + " ");
        }
        pw.println("</h1>");

        pw.flush();
        pw.close();

    }
}
// here if we don't click on any checkbox and then we submit the index page then the parameters are not at all created and getParameterValues() will then return null and also then there will be no query after the ? in the URL