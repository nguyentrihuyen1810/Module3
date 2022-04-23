package com.example.ServletDemo.controller;

import com.example.ServletDemo.model.Student;
import com.example.ServletDemo.service.StudentService;
import com.example.ServletDemo.service.StudentServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.io.IOException;

@WebServlet(name = "StudentServlet", value = "/student")
public class StudentServlet extends HttpServlet {
    private StudentService studentService = new StudentServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "list";
        }
        switch (action) {
            case "create":
                break;
            case "update":
                break;
            case "view":
                break;
            case "delete":
                break;
            case "list":
            default:
        }

        List<Student> studentList = studentService.findAll();
        request.setAttribute("list", studentList);
        request.getRequestDispatcher("/student/student.jsp").forward(request, response);
    }

    private void create (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String birthdayAsString = request.getParameter("birthday");
        String sexAsString = request.getParameter("sex");

        SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
        Date birthday = null;
        try {
            birthday = format.parse(birthdayAsString);
        } catch (ParseException e) {
            e.printStackTrace();
        }

        boolean sex = "Nam".equals(sexAsString) ? true : false;
    }

    private void showList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Student> studentList = studentService.findAll();
        request.setAttribute("list", studentList);
        request.getRequestDispatcher("/student/student.jsp").forward(request,response);
    }

    private void showCreate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/student/create.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action) {
            case "create":

        }
    }
}
