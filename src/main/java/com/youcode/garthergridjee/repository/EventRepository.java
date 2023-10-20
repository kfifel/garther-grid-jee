package com.youcode.garthergridjee.repository;

import com.youcode.garthergridjee.entities.Event;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import java.util.List;

public class EventRepository {
    private final EntityManagerFactory entityManagerFactory;

    public EventRepository() {
        entityManagerFactory = Persistence.createEntityManagerFactory("persistencejakartaee.grather_grid");
    }

    public Long save(Event event) {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        try {
            entityManager.getTransaction().begin();
            entityManager.persist(event);
            entityManager.getTransaction().commit();
            return event.getId();
        } finally {
            entityManager.close();
        }
    }

    public Event getById(Long id) {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        try {
            return entityManager.find(Event.class, id);
        } finally {
            entityManager.close();
        }
    }

    public List<Event> getAll() {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        try {
            return entityManager.createQuery("SELECT e FROM Event e", Event.class).getResultList();
        } finally {
            entityManager.close();
        }
    }

    public void update(Event event) {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        try {
            entityManager.getTransaction().begin();
            entityManager.merge(event);
            entityManager.getTransaction().commit();
        } finally {
            entityManager.close();
        }
    }

    public void delete(Long id) {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        try {
            entityManager.getTransaction().begin();
            Event event = entityManager.find(Event.class, id);
            if (event != null) {
                entityManager.remove(event);
            }
            entityManager.getTransaction().commit();
        } finally {
            entityManager.close();
        }
    }
}
