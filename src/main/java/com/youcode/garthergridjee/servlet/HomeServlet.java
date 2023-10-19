package com.youcode.garthergridjee.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.HttpConstraint;
import jakarta.servlet.annotation.HttpMethodConstraint;
import jakarta.servlet.annotation.ServletSecurity;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@ServletSecurity(
        value = @HttpConstraint(rolesAllowed = {"user"}),
        httpMethodConstraints = {
                @HttpMethodConstraint(value = "GET", rolesAllowed = {"user"}),
                @HttpMethodConstraint(value = "POST", rolesAllowed = {"user"})
        }
)
public class HomeServlet extends HttpServlet {
    @Override
    public void init() {
        getServletContext().setAttribute("authenticated", false);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/views/home.jsp").forward(req, resp);
    }
}
