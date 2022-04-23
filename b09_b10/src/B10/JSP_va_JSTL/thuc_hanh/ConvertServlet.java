package B10.JSP_va_JSTL.thuc_hanh;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ConvertServlet", value = "/ConvertServlet")
public class ConvertServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("B10.JSP_va_JSTL/thuc_hanh/Ung_dung_chuyen_doi_tien_te/index.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        float rate = Float.parseFloat(request.getParameter("rate"));
        float usd = Float.parseFloat(request.getParameter("usd"));

        float vnd = rate * usd;


        request.setAttribute("rate", rate);
        request.setAttribute("usd", usd);
        request.setAttribute("vnd", vnd);
        request.getRequestDispatcher("B10.JSP_va_JSTL/thuc_hanh/Ung_dung_chuyen_doi_tien_te/converter.jsp").forward(request, response);
    }
}
