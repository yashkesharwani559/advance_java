import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import java.io.IOException;
import java.io.PrintWriter;

public class ActionServlet extends HttpServlet {

    static int i = 1;
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        response.setContentType("text/html");

        String userName = request.getParameter("unm");
        String age = request.getParameter("age");
        String mobile = request.getParameter("mo");
        String email = request.getParameter("email");
        String password = request.getParameter("passw");

        PrintWriter pw = response.getWriter();

        pw.println("<html>");
        pw.println("<head>");
        pw.println("<title>Detail Page</title>");

        pw.println("<style>");
 
        pw.println("h1{");
        pw.println("font-size: 4.5rem;");
        pw.println("text-align: center;");
        pw.println("text-decoration: double underline greenyellow;");
        pw.println("}");
        
        pw.println("p{");
        pw.println("font-size: 3rem;");
        pw.println("color: red;");
        pw.println("text-align: center;");
        pw.println("text-decoration: solid underline greenyellow;");
        pw.println("}");

        pw.println("</style>");

        pw.println("</head>");

        pw.println("<body>");
        
        pw.println("<h1>SNo. " + i++ + " User Details</h1>");

        pw.println("<p> Name: "+ userName + "</p>");
        pw.println("<p> Age: "+ age + "</p>");
        pw.println("<p> Mobile No.: "+ mobile + "</p>");
        pw.println("<p> Email ID: "+ email + "</p>");
        pw.println("<p> Password: "+ password + "</p>");
        
        pw.println("</body>");
        pw.println("</html>");

        pw.close();
    }
}