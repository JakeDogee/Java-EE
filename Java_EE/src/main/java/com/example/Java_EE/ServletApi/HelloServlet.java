package com.example.Java_EE.ServletApi;

import com.example.Java_EE.ServletApi.entities.User;
import com.google.gson.Gson;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

/*
    1. Аннотация @WebServlet
    https://sites.google.com/site/paxdevsystem/pl/jvm-languages/java-servlet-api/sozdanie-servleta-annotacia-webservlet

    2. Returning a JSON Response from a Servlet
    https://www.baeldung.com/servlet-json-response
 */
@WebServlet("/hello") // url = /hello
public class HelloServlet extends HttpServlet {
    /*
        ! Servlet version 4.0 needs Tomcat version 9.0

        Сервлет — это класс, который умеет получать запросы от клиента и возвращать ему ответы.
     */
    private User user = new User(1L,"Sviatoslav","Kytsara",20,100.0);
    private Gson gson = new Gson();

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
//        response.setContentType("text/html"); // Content types https://www.javatpoint.com/content-type - вказує тип відповіді
//        response.setCharacterEncoding("UTF-8"); // Ставить кодування

        // Будемо Json передавати
        response.setContentType("application/json");
        String userJson = gson.toJson(user);

        PrintWriter out = response.getWriter();

        //out.write("<h1>Привіт світ</h1>");
        out.write(userJson);
        out.flush();
    }


}