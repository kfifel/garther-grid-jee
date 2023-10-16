package com.youcode.garthergridjee.servlet;

import com.youcode.garthergridjee.entities.User;
import com.youcode.garthergridjee.security.authentication.AccountService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

public class AuthenticationController extends HttpServlet {
    private final AccountService accountService = new AccountService();
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
             resp.sendRedirect(path.replace("auth/logout.do", "home"));
        } else {
             resp.sendRedirect(path.replace("auth/logout.do", "home"));
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = req.getRequestURL().toString();
        String action = path.contains("login.do") ? "login"
                : path.contains("logup.do") ?
                "logup": "else";

        if("login".equals(action)) {
            accountService.login(req, resp);
        } else if ("logup".equals(action)) {
            if(accountService.registerUser(req, resp)) {
                req.setAttribute("success", "Your account has been created successfully");
                resp.sendRedirect(path);
            }
            else {
                req.setAttribute("error", "Something went wrong");
                resp.sendRedirect(path);
            }
        } else {
            resp.setStatus(404);
        }
    }
}
