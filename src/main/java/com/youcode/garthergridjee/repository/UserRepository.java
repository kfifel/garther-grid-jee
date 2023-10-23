package com.youcode.garthergridjee.repository;

import com.youcode.garthergridjee.entities.User;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

import java.util.List;

public class UserRepository {
    private final EntityManagerFactory entityManagerFactory;

    public UserRepository() {
        entityManagerFactory = Persistence.createEntityManagerFactory("persistencejakartaee.grather_grid");
    }

    public List<User> findAll() {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        return entityManager.createQuery("SELECT u FROM User u ", User.class)
                .getResultList();
    }
}
