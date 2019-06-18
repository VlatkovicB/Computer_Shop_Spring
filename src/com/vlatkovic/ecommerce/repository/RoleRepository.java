package com.vlatkovic.ecommerce.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.vlatkovic.ecommerce.model.Role;


public interface RoleRepository extends JpaRepository<Role, Integer> {
	Role findByName(String name);
}
