import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import java.io.IOException;
import java.io.PrintWriter;

public class ActionServlet extends HttpServlet {
    
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        PrintWriter pw = response.getWriter();

        pw.write("<h1>Hello World from the ActionServlet</h1>");

        pw.println("<hr>");

        pw.println("<div> how are you</div>");
        
        pw.close();

    }
}