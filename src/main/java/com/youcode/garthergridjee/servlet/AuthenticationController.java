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
import java.util.Optional;

public class AuthenticationController extends HttpServlet {
    private final AccountService accountService = new AccountService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = req.getRequestURL().toString();

        if(path.contains("login.php"))
            req.getRequestDispatcher("/views/login.jsp").forward(req, resp);

        else if(path.contains("logout.php")) {
             HttpSession session = req.getSession(false);
             if(session != null)
                 req.getSession().invalidate();
        }

        resp.sendRedirect(req.getContextPath()+"/auth/login.php");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = req.getRequestURL().toString();

        if(path.contains("login.php"))
            handleLogin(req, resp);

        else if (path.contains("logup.php"))
            handleLogup(req, resp);
        else
            resp.setStatus(404);

    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        var parametre = req.getParameter("khalid");
        System.out.println(parametre);
    }

    private void handleLogup(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = new User();
        user.setLastName(req.getParameter("lastname"));
        user.setFirstName(req.getParameter("firstname"));
        user.setEmail(req.getParameter("email"));
        user.setPassword(req.getParameter("password"));
        user.setCreatedAt(new java.util.Date());
        user.setUsername(user.getFirstName().charAt(0) + user.getLastName()); // username is the first letter of the first name and the last name
        try {
            if(accountService.registerUser(user))
                req.setAttribute("success", "Your account has been created successfully");

            else
                req.setAttribute("error", "Email already exist");
        } catch (IllegalArgumentException e) {
            req.setAttribute("error", e.getLocalizedMessage());
        }
        resp.sendRedirect(req.getContextPath()+"/auth/login.php");
    }

    private void handleLogin(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Optional<User> optionalUser = accountService.login(req.getParameter("email"), req.getParameter("password"));

        if(optionalUser.isPresent()) {
            req.getSession(true).setAttribute("user", optionalUser.get());
            req.setAttribute("success", "You are logged in successfully");
            resp.sendRedirect(req.getContextPath());
            //req.getRequestDispatcher("/index.jsp").forward(req, resp);
        } else {
            req.setAttribute("error", "Invalid credentials");
            resp.sendRedirect(req.getContextPath()+"/auth/login.php");
            //req.getRequestDispatcher("/views/login.jsp").forward(req, resp);
        }
    }

}
