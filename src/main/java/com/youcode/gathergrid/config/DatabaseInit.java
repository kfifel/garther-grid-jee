package com.youcode.gathergrid.config;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.servlet.http.HttpServlet;

public class DatabaseInit extends HttpServlet {
    @Override
    public void init() {
        this.initializeDatabase();
    }

    public void initializeDatabase() {
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("persistencejakartaee.grather_grid");
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();

        entityManager.getTransaction().commit();
        entityManager.close();
        entityManagerFactory.close();
    }
}
