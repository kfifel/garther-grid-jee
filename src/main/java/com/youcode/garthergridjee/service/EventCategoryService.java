package com.youcode.garthergridjee.service;

import com.youcode.garthergridjee.entities.EventCategory;
import com.youcode.garthergridjee.repository.EventCategoryInt;
import com.youcode.garthergridjee.repository.implementation.EventCategoryRepository;
import jakarta.persistence.Persistence;

import java.util.Date;
import java.util.List;

public class EventCategoryService {
    private final EventCategoryInt eventCategoryRepository;

    public EventCategoryService() {
        this.eventCategoryRepository = new EventCategoryRepository(Persistence.createEntityManagerFactory("persistencejakartaee.grather_grid"));
    }

    public void saveEventCategory(EventCategory eventCategory) throws IllegalArgumentException {
        validate(eventCategory);
        eventCategoryRepository.save(eventCategory);
    }
    private void validate(EventCategory eventCategory) {
        if (eventCategory.getName() == null || eventCategory.getName().isBlank() ||
                eventCategory.getDescription() == null || eventCategory.getDescription().isBlank() ||
                eventCategory.getCreatedAt() == null) {
            throw new IllegalArgumentException("All fields are needed");
        }
        if (!isValidName(eventCategory.getName())) {
            throw new IllegalArgumentException("Name is not valid");
        }
        if(!validateDescription(eventCategory.getDescription())){
            throw new IllegalArgumentException("Description is not valid");
        }
        if(!validateCreationDate(eventCategory.getCreatedAt())){
            throw new IllegalArgumentException("Date is not valid");
        }

    }
    private boolean isValidName(String name) {
        return name!= null && !name.isEmpty();
    }

    private boolean validateDescription(String description) {
        return description != null && !description.isEmpty();
    }
    private boolean validateCreationDate(Date createdAt) {
        return createdAt !=null ;
    }

    public EventCategory findById(Long id){
        EventCategory eventCategory =eventCategoryRepository.findById(id);
        if(eventCategory == null){
            throw new IllegalArgumentException("La catégorie d'événement avec l'ID spécifié n'existe pas.");
        }
        return  eventCategory;
    }
    public List<EventCategory>getAll(){
        List<EventCategory> eventCategories = eventCategoryRepository.getAll();
        return eventCategories;
    }

    public void update(Long id ,  EventCategory eventCategory){

        eventCategoryRepository.update(id , eventCategory);
    }
    public void delete(Long id){
        eventCategoryRepository.delete(id);

    }


}
