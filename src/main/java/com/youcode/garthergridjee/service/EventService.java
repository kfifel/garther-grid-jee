package com.youcode.garthergridjee.service;


import com.youcode.garthergridjee.entities.Event;
import com.youcode.garthergridjee.entities.Ticket;
import com.youcode.garthergridjee.repository.EventRepository;

import java.util.Collections;
import java.util.List;

public class EventService {
    private final EventRepository eventRepository;

    public EventService() {
        eventRepository = new EventRepository();
    }

    public Long createEvent(Event event) {
        Long eventId = eventRepository.save(event); // Get the ID of the saved event
        return eventId;
    }

    public Event getEventById(Long id) {
        return eventRepository.getById(id);
    }

    public List<Event> getAllEvents() {
        return eventRepository.getAll();
    }
    public List<Ticket> getTicketsByEventId(Long eventId) {
        Event event = eventRepository.getById(eventId);
        if (event != null) {
            return event.getTickets();
        }
        return Collections.emptyList();
    }

    public void updateEvent(Event event) {
        eventRepository.update(event);
    }

    public void deleteEvent(Long id) {
        eventRepository.delete(id);
    }
}
