package com.youcode.garthergridjee.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;

@WebServlet(name = "HomeServlet", value = "Home")
public class HomeServlet extends HttpServlet {
    @Override
    public void init() throws ServletException {

        getServletContext().setAttribute("authenticated", false);

    }
}
