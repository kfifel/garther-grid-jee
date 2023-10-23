package com.youcode.garthergridjee.service;


import com.youcode.garthergridjee.entities.Category;
import com.youcode.garthergridjee.repository.CategoryRepository;

import java.util.List;

public class CategoryService {

    private final CategoryRepository categoryRepository;

    public CategoryService() {
        categoryRepository = new CategoryRepository();
    }

    public void createCategory(Category category) {
        categoryRepository.save(category);
    }

    public Category getCategoryById(Long id) {
        return categoryRepository.getById(id);
    }

    public List<Category> getAllCategories() {
        return categoryRepository.getAll();
    }

    public void updateCategory(Category category) {
        categoryRepository.update(category);
    }

    public void deleteCategory(Long id) {
        categoryRepository.delete(id);
    }
}
