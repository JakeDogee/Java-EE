package com.example.Java_EE.ServletApi.controllers;

import com.example.Java_EE.ServletApi.entities.Test;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/test")
public class TestController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Test test = new Test(1L, "Test-[1]", 10);
        List<Test> list = List.of(new Test(2L, "Test-[2]", 10),
                new Test(3L, "Test-[3]", 10),
                new Test(4L, "Test-[4]", 10),
                new Test(5L, "Test-[5]", 10));

        req.setAttribute("test", test); // scope = request
//        req.getSession().setAttribute("test", test); // scope = session
//        req.getServletContext().setAttribute("test", test); // scope = application

        req.setAttribute("list", list);

        RequestDispatcher rd = req.getRequestDispatcher("/jsp/test.jsp");
        rd.forward(req, resp);
    }
}
