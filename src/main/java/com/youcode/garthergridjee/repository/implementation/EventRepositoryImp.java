package com.youcode.garthergridjee.repository.implementation;

import com.youcode.garthergridjee.entities.Event;
import com.youcode.garthergridjee.repository.EventRepository;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

import java.util.List;
import java.util.Optional;

public class EventRepositoryImp {
    private final EntityManagerFactory managerFactory;

    public EventRepositoryImp() {
        managerFactory = Persistence.createEntityManagerFactory("persistencejakartaee.grather_grid");
    }

    public List<Event> getAll() {
        EntityManager entityManager = managerFactory.createEntityManager();
        try {
            return entityManager.createQuery("select e from Event e", Event.class)
                    .getResultList();

        }catch (Exception e) {
            throw new RuntimeException("Error fetching events", e);
        } finally {
            entityManager.close();
        }
    }

    public Optional<Event> findById(Long id) {
        EntityManager entityManager = managerFactory.createEntityManager();
        Event event = entityManager.find(Event.class, id);
        entityManager.close();
        return Optional.of(event);
    }

    public Event save(Event event) {
        EntityManager entityManager = managerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        entityManager.persist(event);
        entityManager.getTransaction().commit();
        entityManager.close();
        return event;
    }

    public void update(Long id, Event event) {
        EntityManager entityManager = managerFactory.createEntityManager();
        entityManager.getTransaction().begin();

        Event event1 = entityManager.find(Event.class, id);
        if(event1 != null){
            event1.setName(event.getName());
            entityManager.merge(event1);
        }

        entityManager.getTransaction().commit();
        entityManager.close();
    }

    public void delete(Long id) {
        EntityManager entityManager = managerFactory.createEntityManager();
        entityManager.getTransaction().begin();

        Event event = entityManager.find(Event.class, id);
        if(event != null){
            entityManager.remove(event);
        }

        entityManager.getTransaction().commit();
        entityManager.close();
    }
}
