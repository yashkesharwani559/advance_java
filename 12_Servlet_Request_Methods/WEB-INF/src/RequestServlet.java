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

        pw.println("<h1>Local Address: " + req.getLocalAddr() + "</h1>");//gives the IP address of the server

        pw.println("<h1>Remote Address: " + req.getRemoteAddr() + "</h1>");//gives the IP address of the client 
        //both above gives IPV6 address in chrome and edge browser but gives IPV4 address in the firefox browser


        pw.println("<h1>Remote Port: " + req.getRemotePort() + "</h1>");//gives the port number of the client 
        pw.println("<h1>Server Port: " + req.getServerPort() + "</h1>");//gives the port number of the server from where the request recieved 
        pw.println("<h1>Server Port2: " + req.getLocalPort() + "</h1>");//gives the port number of the server from where the response is to be send

        pw.println("<h1>" + req.isSecure() + "</h1>");
        // returns true if secure protocol(https) is used and otherwise returns false

        pw.flush();
        pw.close();

    }
}