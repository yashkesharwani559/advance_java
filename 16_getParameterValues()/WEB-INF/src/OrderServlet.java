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
// here it will send 'on' as value because the value attribute is not given in the input:checkbox