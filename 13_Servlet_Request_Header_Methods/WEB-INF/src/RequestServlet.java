import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RequestServlet extends HttpServlet {
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        
        resp.setContentType("text/html");

        PrintWriter pw = resp.getWriter();

        pw.println("<h1>Protocol: " + req.getProtocol()+"</h1>");//HTTP/1.1
        pw.println("<h1>Scheme: " + req.getScheme()+"</h1>");//http
        pw.println("<h1>Server Name: " + req.getServerName()+"</h1>");//localhost
        pw.println("<h1>Character Encoding: " + req.getCharacterEncoding() + "</h1>");//
        
        pw.println("<h1> Parameter collection in the form of Map (means subclass of Map interface) of String: "
                + req.getParameterMap() + "</h1>");

        Map<String, String[]> m = req.getParameterMap();
        
        m.forEach((key, value) -> System.out.println(key + " : " + value));

        pw.println("<h1>UserName: "+ req.getParameter("unm") +"</h1>");
        pw.println("<h1>Email: "+ req.getParameter("email") +"</h1>");
        pw.println("<h1>Password: "+ req.getParameter("passw") +"</h1>");
        pw.println("<h1>Name of parameter in the form of Enum of String: "+ req.getParameterNames() +"</h1>");

        pw.flush();
        pw.close();

    }
}