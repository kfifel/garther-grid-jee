package com.youcode.garthergridjee.repository;

import com.youcode.garthergridjee.entities.Event;
import com.youcode.garthergridjee.entities.EventCategory;

import java.util.List;
import java.util.Optional;

public interface EventCategoryInt {
    public List<EventCategory> getAll();

    public EventCategory findById(Long id);

    public void save(EventCategory eventCategory) ;
    public void update(Long id, EventCategory eventCategory);

    public void delete(Long id);
}
