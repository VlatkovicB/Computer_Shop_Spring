package com.vlatkovic.ecommerce.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vlatkovic.ecommerce.service.CategoryService;
import com.vlatkovic.ecommerce.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;

	@Autowired
	private CategoryService categoryService;

	@RequestMapping("/product/{id}")
	public String showProduct(Model model, @PathVariable int id) {
		model.addAttribute("product", productService.findOne(id));
		// model.addAttribute("categories", categoryService.getCategories());
		return "product";
	}

	@RequestMapping("/category/{id}")
	public String showCategory(Model model, @PathVariable int id) {
		model.addAttribute("products", productService.productsByCategory(id));
		// model.addAttribute("categories", categoryService.getCategories());
		model.addAttribute("category", categoryService.getCategory(id));
		return "category";
	}

}
