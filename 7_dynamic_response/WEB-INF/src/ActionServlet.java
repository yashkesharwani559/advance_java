import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ActionServlet extends HttpServlet {

    static int count;

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        
        PrintWriter pw = response.getWriter();

        pw.write("<h1>" + ++count +"</h1>");

        pw.close();
    }
}
