package com.vlatkovic.ecommerce.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.vlatkovic.ecommerce.model.Category;
import com.vlatkovic.ecommerce.model.Customer;
import com.vlatkovic.ecommerce.model.Product;
import com.vlatkovic.ecommerce.model.Role;
import com.vlatkovic.ecommerce.repository.CategoryRepository;
import com.vlatkovic.ecommerce.repository.CustomerRepository;
import com.vlatkovic.ecommerce.repository.ProductRepository;
import com.vlatkovic.ecommerce.repository.RoleRepository;

@Service
@Transactional
public class InitDbService {

	@Autowired
	private ProductRepository productRepository;

	@Autowired
	private CategoryRepository categoryRepository;

	@Autowired
	private CustomerRepository customerRepository;

	@Autowired
	private RoleRepository roleRepository;

	@PostConstruct
	public void init() {

		Category category1 = new Category();
		category1.setName("Laptops");
		categoryRepository.save(category1);

		Category category2 = new Category();
		category2.setName("Tablets");
		categoryRepository.save(category2);

		Category category3 = new Category();
		category3.setName("Desktop PC");
		categoryRepository.save(category3);

		Product laptop = new Product();
		laptop.setName("This is the product title");
		laptop.setDescription(
				"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.");
		laptop.setImage("main-image.png");
		laptop.setPrice(499.99);
		laptop.setQuantity(1000);
		laptop.setCode(32321);
		laptop.setCategory(category1);

		Product laptop2 = new Product();
		laptop2.setName("This is the product title");
		laptop2.setDescription(
				"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.");
		laptop2.setImage("main-image.png");
		laptop2.setPrice(499.99);
		laptop2.setQuantity(1000);
		laptop2.setCode(32321);
		laptop2.setCategory(category1);

		productRepository.save(laptop2);

		Product laptop3 = new Product();
		laptop3.setName("This is the product title");
		laptop3.setDescription(
				"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.");
		laptop3.setImage("main-image.png");
		laptop3.setPrice(499.99);
		laptop3.setQuantity(1000);
		laptop3.setCode(32321);
		laptop3.setCategory(category1);

		productRepository.save(laptop3);

		Product laptop4 = new Product();
		laptop4.setName("This is the product title");
		laptop4.setDescription(
				"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.");
		laptop4.setImage("main-image.png");
		laptop4.setPrice(599.99);
		laptop4.setQuantity(1000);
		laptop4.setCode(32321);
		laptop4.setCategory(category1);

		productRepository.save(laptop4);

		Product laptop5 = new Product();
		laptop5.setName("This is the product title");
		laptop5.setDescription(
				"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.");
		laptop5.setImage("main-image.png");
		laptop5.setPrice(599.99);
		laptop5.setQuantity(1000);
		laptop5.setCode(32321);
		laptop5.setCategory(category1);

		productRepository.save(laptop5);

		Product laptop6 = new Product();
		laptop6.setName("This is the product title");
		laptop6.setDescription(
				"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.");
		laptop6.setImage("main-image.png");
		laptop6.setPrice(599.99);
		laptop6.setQuantity(1000);
		laptop6.setCode(32321);
		laptop6.setCategory(category1);

		productRepository.save(laptop6);

		Product laptop7 = new Product();
		laptop7.setName("This is the product title");
		laptop7.setDescription(
				"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.");
		laptop7.setImage("main-image.png");
		laptop7.setPrice(599.99);
		laptop7.setQuantity(1000);
		laptop7.setCode(32321);
		laptop7.setCategory(category1);

		productRepository.save(laptop7);

		Product laptop8 = new Product();
		laptop8.setName("This is the product title");
		laptop8.setDescription(
				"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.");
		laptop8.setImage("main-image.png");
		laptop8.setPrice(599.99);
		laptop8.setQuantity(1000);
		laptop8.setCode(32321);
		laptop8.setCategory(category1);

		productRepository.save(laptop8);

		Role roleUser = new Role();
		roleUser.setName("ROLE_USER");
		roleRepository.save(roleUser);

		Role roleAdmin = new Role();
		roleAdmin.setName("ROLE_ADMIN");
		roleRepository.save(roleAdmin);

		Customer customerAdmin = new Customer();
		customerAdmin.setEnabled(true);
		customerAdmin.setName("admin");
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		customerAdmin.setPassword(encoder.encode("admin"));
		customerAdmin.setEmail("admin@admin.com");

		List<Role> roles = new ArrayList<>();
		roles.add(roleUser);
		roles.add(roleAdmin);

		customerAdmin.setRoles(roles);

		customerRepository.save(customerAdmin);

	}

}
