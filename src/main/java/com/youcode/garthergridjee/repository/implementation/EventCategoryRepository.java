package com.youcode.garthergridjee.repository.implementation;

import com.youcode.garthergridjee.entities.EventCategory;
import com.youcode.garthergridjee.repository.EventCategoryInt;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Persistence;

import java.util.List;
import java.util.Optional;

public class EventCategoryRepository implements EventCategoryInt {
    private final EntityManagerFactory entityManagerFactory;



    public EventCategoryRepository(EntityManagerFactory entityManagerFactory) {
        this.entityManagerFactory = Persistence.createEntityManagerFactory("persistencejakartaee.grather_grid");

    }
    public void save(EventCategory eventCategory){
        EntityManager entityManager= entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        entityManager.persist(eventCategory);
        entityManager.getTransaction().commit();
        entityManager.close();
    }
    @Override
    public List<EventCategory>getAll(){
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        List<EventCategory> eventCategories = entityManager.createQuery("SELECT ec FROM EventCategory ec", EventCategory.class).getResultList();
        entityManager.close();
        return eventCategories;
    }
    @Override
    public EventCategory findById(Long id) {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        EventCategory eventCategory = entityManager.find(EventCategory.class, id);
        entityManager.close();

        return eventCategory;
    }



    @Override
    public void update(Long id, EventCategory eventCategory) {
        EntityManager entityManager =entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();

        entityManager.merge(eventCategory);
        entityManager.getTransaction().commit();
        entityManager.close();
    }

    @Override
    public void delete(Long id) {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        EntityTransaction transaction = null;
        try {
            transaction = entityManager.getTransaction();
            transaction.begin();

            EventCategory eventCategory = findById(id);
            if (eventCategory == null) {
                throw new IllegalArgumentException("ID does not exist");
            }

            entityManager.remove(eventCategory);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null && transaction.isActive()) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            if (entityManager != null) {
                entityManager.close();
            }
        }
    }



}
