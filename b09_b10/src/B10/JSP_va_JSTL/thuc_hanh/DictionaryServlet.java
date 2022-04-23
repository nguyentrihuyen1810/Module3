package B10.JSP_va_JSTL.thuc_hanh;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DictionaryServlet", value = "/DictionaryServlet")
public class DictionaryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("B10.JSP_va_JSTL/thuc_hanh/Ung_dung_tu_dien/index.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String search = request.getParameter("search");

        request.setAttribute("search", search);

        request.getRequestDispatcher("B10.JSP_va_JSTL/thuc_hanh/Ung_dung_tu_dien/dictionary.jsp");
    }
}
