package com.vlatkovic.ecommerce.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.vlatkovic.ecommerce.service.CategoryService;
import com.vlatkovic.ecommerce.service.ProductService;

@Controller
@SessionAttributes(value = "categories")
public class IndexController {

	@Autowired
	private ProductService productService;

	@Autowired
	private CategoryService categoryService;

	@RequestMapping("/")
	public String index(Model model) {
		model.addAttribute("products", productService.getProducts());
		model.addAttribute("categories", categoryService.getCategories());
		return "index";
	}

	@RequestMapping("/cart")
	public String showCart() {
		return "cart";
	}

}
