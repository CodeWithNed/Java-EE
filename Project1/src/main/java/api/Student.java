package api;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Student extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int  x = Integer.parseInt(req.getParameter("x"));
        int  y = Integer.parseInt(req.getParameter("y"));
        String operation = req.getParameter("o");

        double result = switch (operation) {
            case " " -> x + y;
            case "+" -> x + y;
            case "-" -> x - y;
            case "*" -> x * y;
            case "/" -> y != 0 ? (double) x / y : Double.NaN;
            default -> Double.NaN;
        };
        if (operation.equals(" ")){
            operation = "+";
        }

        resp.getWriter().println("x " + operation + " y = " + result);
    }
}
