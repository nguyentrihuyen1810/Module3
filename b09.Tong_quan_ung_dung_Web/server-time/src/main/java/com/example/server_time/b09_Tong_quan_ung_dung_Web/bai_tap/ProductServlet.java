package com.example.server_time.b09_Tong_quan_ung_dung_Web.bai_tap;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "ProductServlet", value = "/product")
public class ProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

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


//    Trang kết quả sẽ hiển thị các thông tin ngươờ dùng nhập vào, kèm theo kết quả tính toán:
//
//        Discount Amount: Lượng chiết khấu
//        Discount Price: Giá sau khi đã được chiết khấu
//        Công thức tính chiết khấu là:
//
//        Discount Amount = List Price * Discount Percent * 0.01