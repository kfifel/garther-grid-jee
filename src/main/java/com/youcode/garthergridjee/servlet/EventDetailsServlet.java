package com.youcode.garthergridjee.servlet;

import com.youcode.garthergridjee.entities.Event;
import com.youcode.garthergridjee.service.CategoryService;
import com.youcode.garthergridjee.service.EventService;
import com.youcode.garthergridjee.service.TicketService;
import jakarta.inject.Inject;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/event_details")
public class EventDetailsServlet extends HttpServlet {
    @Inject
    private EventService eventService = new EventService();
    @Inject
    private CategoryService categoryService = new CategoryService();

    @Inject
    private TicketService ticketService = new TicketService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        long eventId = Integer.parseInt(request.getParameter("id"));
        Event event = eventService.getEventById(eventId);
        request.setAttribute("event", event);
        request.getRequestDispatcher("WEB-INF/views/event_details.jsp").forward(request, response);

    }

}
