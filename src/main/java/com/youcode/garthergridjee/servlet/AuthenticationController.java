package com.youcode.garthergridjee.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

public class AuthenticationController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = req.getRequestURL().toString();
        String action = path.contains("login.do") ? "login"
                : path.contains("logout.do") ?
                "logout": "else";

        if("login".equals(action)) {
            req.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(req, resp);
        } else if("logout".equals(action)) {
             HttpSession session = req.getSession(false);
             if(session != null)
                 req.getSession().invalidate();
             resp.sendRedirect(path + "/Home");
        } else {
            resp.sendRedirect(path + "/Home");
        }
    }
}
