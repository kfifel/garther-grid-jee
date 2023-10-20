package com.youcode.garthergridjee.repository.implementation;

import com.youcode.garthergridjee.entities.Comment;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class CommentRepository {
    private final EntityManagerFactory entityManagerFactory;


    public CommentRepository(EntityManagerFactory entityManagerFactory) {
        this.entityManagerFactory = Persistence.createEntityManagerFactory("persistencejakartaee.grather_grid");
    }
    public void saveComment(Comment comment) {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        try {
            entityManager.getTransaction().begin();
            entityManager.persist(comment);
            entityManager.getTransaction().commit();
        } catch (Exception e) {
            if (entityManager.getTransaction().isActive()) {
                entityManager.getTransaction().rollback();
            }
            e.printStackTrace();
        } finally {
            entityManager.close();
        }
    }
}
