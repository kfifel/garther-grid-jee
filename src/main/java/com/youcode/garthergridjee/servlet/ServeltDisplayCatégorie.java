package com.youcode.garthergridjee.servlet;

import com.youcode.garthergridjee.entities.EventCategory;
import com.youcode.garthergridjee.service.EventCategoryService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/list")
public class ServeltDisplayCatégorie extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("eventCategories.jsp");

        EventCategoryService eventCategoryService= new EventCategoryService();
        List<EventCategory> eventCategories =eventCategoryService.getAll();
        request.setAttribute("eventCategories", eventCategories);
        requestDispatcher.forward(request,response);
    }



    }
