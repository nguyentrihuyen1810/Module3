package com.example.JDBC.bai_tap.controller;

import com.example.JDBC.bai_tap.model.Users;
import com.example.JDBC.bai_tap.service.UsersService;
import com.example.JDBC.thuc_hanh.model.User;
import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "UsersServlet", value = "/UsersServlet")
public class UsersServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "findByCountry":
                    showFindCountry(request, response);
                    break;
                case "sort":
                    showSortUsers(request, response);
                    break;
                default:
                    listUsers(request,response);
                    break;
            }
        } catch (SQLException ex){
            throw new ServletException(ex);
        }
    }

    private void listUsers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List listUsers = UsersService.sellectAllUsers();
        request.setAttribute("listUser", listUsers);
        RequestDispatcher dispatcher = request.getRequestDispatcher("user/list.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "findByCountry":
                    findCountry(request, response);
                    break;
                case "sort":
                    updateUser(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }
}
