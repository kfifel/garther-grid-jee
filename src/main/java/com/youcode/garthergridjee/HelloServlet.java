package com.youcode.garthergridjee;


import com.youcode.garthergridjee.entities.EventCategory;
import com.youcode.garthergridjee.service.EventCategoryService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "helloServlet", value = "/hello")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }


    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, IOException {
    }

    public void destroy() {
    }
}