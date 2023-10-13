package com.youcode.gathergrid.service.implementation;

import com.youcode.gathergrid.entities.Event;
import com.youcode.gathergrid.repository.EventRepository;
import com.youcode.gathergrid.repository.implementation.EventRepositoryImp;
import com.youcode.gathergrid.service.EventService;

public class EventServiceImp implements EventService {
    private final EventRepository eventRepository;

    public EventServiceImp() {
        eventRepository = new EventRepositoryImp();
    }

    public void save(Event event) {
        if(event.getId() != null) {
            eventRepository.save(event);
        }
    }
}
