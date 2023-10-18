package com.youcode.garthergridjee.servlet;

import com.youcode.garthergridjee.entities.EventCategory;
import com.youcode.garthergridjee.service.EventCategoryService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/catégorie")
public class servletCatégorie extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String methode = request.getParameter("_method");
        if(methode.equals("PUT")){
            doPut(request,response);
            return;
        }else if(methode.equals("DELETE")){
            doDelete(request,response);
        }
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        Date date = new Date();
        EventCategoryService eventCategoryService = new EventCategoryService();
        EventCategory eventCategory = new EventCategory(name, description, date);
        eventCategoryService.saveEventCategory(eventCategory);

        String confirmationMessage = "La catégorie d'événement a été enregistrée avec succès !";
        request.setAttribute("confirmationMessage", confirmationMessage);
        response.sendRedirect("list");

    }
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");
        request.getRequestDispatcher("form.jsp").forward(request , response);

    }
    public void doPut(HttpServletRequest request , HttpServletResponse response) throws IOException, ServletException {
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        long id = Integer.parseInt(request.getParameter("id"));
        Date createdAt;
        try {
            createdAt = new SimpleDateFormat("dd-MM-yyyy").parse(request.getParameter("createdAt"));
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }
        EventCategoryService eventCategoryService = new EventCategoryService();
        EventCategory eventCategory = new EventCategory();
        eventCategory.setName(name);
        eventCategory.setDescription(description);
        eventCategory.setCreatedAt(createdAt);
        eventCategory.setId(id);
        eventCategoryService.update(id, eventCategory);
        response.sendRedirect("list");

    }
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        long id = Long.parseLong(req.getParameter("id"));
        EventCategoryService eventCategoryService = new EventCategoryService();
        eventCategoryService.delete(id);
        resp.sendRedirect("list");

    }
}
