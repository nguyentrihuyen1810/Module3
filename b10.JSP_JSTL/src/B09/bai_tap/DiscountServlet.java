package B09.bai_tap;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DiscountServlet", value = "/product")
public class DiscountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("DiscountServlet.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double price = Float.parseFloat(request.getParameter("price"));
        double percent = Float.parseFloat(request.getParameter("percent"));

        double amount = price * percent * 0.01;
        double discountPrice = price + amount;

        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<h4>Price: " + price + "</h4>");
        writer.println("<h4>Percent: " + percent + "</h4>");
        writer.println("<h4>Discount Amount: " + amount + "</h4>");
        writer.println("<h4>Discount Price: " + discountPrice + "</h4>");
        writer.println("</html>");

    }
}
