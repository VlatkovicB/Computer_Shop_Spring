package com.vlatkovic.ecommerce.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.vlatkovic.ecommerce.model.Category;

public interface CategoryRepository extends JpaRepository<Category, Integer> {

}
