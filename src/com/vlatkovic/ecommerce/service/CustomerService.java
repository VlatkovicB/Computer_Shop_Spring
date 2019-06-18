package com.vlatkovic.ecommerce.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.vlatkovic.ecommerce.model.Customer;
import com.vlatkovic.ecommerce.model.Role;
import com.vlatkovic.ecommerce.repository.CustomerRepository;
import com.vlatkovic.ecommerce.repository.RoleRepository;

@Service
@Transactional
public class CustomerService {

	@Autowired
	private CustomerRepository customerRepository;
	@Autowired
	private RoleRepository roleRepository;

	public Customer findOne(String email) {
		return customerRepository.findByEmail(email);
	}

	public void save(Customer customer) {
		customer.setEnabled(true);
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		customer.setPassword(encoder.encode(customer.getPassword()));

		List<Role> roles = new ArrayList<>();
		roles.add(roleRepository.findByName("ROLE_USER"));
		customer.setRoles(roles);

		customerRepository.save(customer);
	}

}