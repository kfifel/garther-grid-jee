package com.youcode.garthergridjee.repository;

import com.youcode.garthergridjee.entities.Event;

import java.util.List;
import java.util.Optional;

public interface EventRepository {


    public List<Event> getAll();

    public Optional<Event> findById(Long id);

    public Event save(Event event) ;
    public void update(Long id, Event event);

    public void delete(Long id);
}
