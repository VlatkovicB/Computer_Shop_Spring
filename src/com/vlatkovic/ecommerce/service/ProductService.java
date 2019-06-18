package com.vlatkovic.ecommerce.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;

import com.vlatkovic.ecommerce.model.Product;
import com.vlatkovic.ecommerce.repository.ProductRepository;

@Service
@Transactional
public class ProductService {

	@Autowired
	private ProductRepository productRepository;

	public List<Product> getProducts() {
		return productRepository.findAll(new PageRequest(0, 4, Direction.DESC, "id")).getContent();
	}

	public List<Product> productsByCategory(int id) {
		List<Product> products = productRepository.findByCategoryId(id);
		return products;
	}

	public Product findOne(int id) {
		return productRepository.findOne(id);
	}

}
