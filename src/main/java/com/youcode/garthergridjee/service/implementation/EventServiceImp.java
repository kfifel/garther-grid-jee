package com.youcode.garthergridjee.service.implementation;

import com.youcode.garthergridjee.entities.Event;
import com.youcode.garthergridjee.repository.EventRepository;
import com.youcode.garthergridjee.repository.implementation.EventRepositoryImp;
import com.youcode.garthergridjee.service.EventService;

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
