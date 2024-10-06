import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class OrderServlet extends HttpServlet {

    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        
        resp.setContentType("text/html");

        PrintWriter pw = resp.getWriter();

        String name = req.getParameter("nm");

        pw.println("<h1>Name: "+ name +"</h1>");

        pw.println("<h1> Your Travelling choice: ");
        for (String s : req.getParameterValues("travel")) {
            pw.println(s + " ");
        }
        pw.println("</h1>");

        pw.flush();
        pw.close();

    }
}
// here if we send the request to the name without writing anything then also the name parameter is created and a null value is sended from the index page and that's why there is nothing like null in the name value