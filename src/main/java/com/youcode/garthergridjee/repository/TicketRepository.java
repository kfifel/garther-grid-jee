package com.youcode.garthergridjee.repository;

import com.youcode.garthergridjee.entities.Ticket;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import java.util.List;

public class TicketRepository {
    private final EntityManagerFactory entityManagerFactory;

    public TicketRepository() {
        entityManagerFactory = Persistence.createEntityManagerFactory("persistencejakartaee.grather_grid");
    }

    public void save(Ticket ticket) {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        try {
            entityManager.getTransaction().begin();
            entityManager.persist(ticket);
            entityManager.getTransaction().commit();
        } finally {
            entityManager.close();
        }
    }

    public Ticket getById(Long id) {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        try {
            return entityManager.find(Ticket.class, id);
        } finally {
            entityManager.close();
        }
    }

    public List<Ticket> getAll() {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        try {
            return entityManager.createQuery("SELECT t FROM Ticket t", Ticket.class).getResultList();
        } finally {
            entityManager.close();
        }
    }

    public List<Ticket> getTicketsByEventId(Long eventId) {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        try {
            return entityManager.createQuery("SELECT t FROM Ticket t WHERE t.event.id = :eventId", Ticket.class)
                    .setParameter("eventId", eventId)
                    .getResultList();
        } finally {
            entityManager.close();
        }
    }

    public void update(Ticket ticket) {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        try {
            entityManager.getTransaction().begin();
            entityManager.merge(ticket);
            entityManager.getTransaction().commit();
        } finally {
            entityManager.close();
        }
    }

    public void delete(Long id) {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        try {
            entityManager.getTransaction().begin();
            Ticket ticket = entityManager.find(Ticket.class, id);
            if (ticket != null) {
                entityManager.remove(ticket);
            }
            entityManager.getTransaction().commit();
        } finally {
            entityManager.close();
        }
    }
}
