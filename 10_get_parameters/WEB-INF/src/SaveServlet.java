import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import java.io.IOException;
import java.io.PrintWriter;

public class SaveServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        response.setContentType("text/html");

        String unm = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        PrintWriter pw = response.getWriter();
        pw.println("<h1 style=\"text-align: center; font-size: 5rem;\">Details are as follows</h1><hr>");
        pw.println("<h1 style=\"text-align: center\">UserName: " + unm + "</h1>");
        pw.println("<h1 style=\"text-align: center\">Email: " + email + "</h1>");
        pw.println("<h1 style=\"text-align: center\">Password: " + password + "</h1>");

        pw.close();

    }
}