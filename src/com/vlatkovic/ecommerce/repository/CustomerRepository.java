package com.vlatkovic.ecommerce.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.vlatkovic.ecommerce.model.Customer;

public interface CustomerRepository extends JpaRepository<Customer, Integer> {
	Customer findByEmail(String email);

}
