package com.vlatkovic.ecommerce.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.vlatkovic.ecommerce.model.Customer;
import com.vlatkovic.ecommerce.service.CustomerService;

@Controller
public class LoginController {

	@Autowired
	private CustomerService customerService;

	@ModelAttribute("customer")
	public Customer constructUser() {
		return new Customer();
	}

	@RequestMapping("/sign")
	public String signIn() {
		return "sign";
	}

	@RequestMapping("/register")
	public String register() {
		return "register";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String doRegister(@Valid @ModelAttribute("customer") Customer customer, BindingResult result,
			RedirectAttributes redirectAttributes) {

		if (result.hasErrors()) {
			return "register";
		}
		customerService.save(customer);

		redirectAttributes.addFlashAttribute("success", true);
		return "redirect:/register";
	}

	@RequestMapping("/available")
	@ResponseBody
	public String available(@RequestParam String email) {
		Boolean available = customerService.findOne(email) == null;
		return available.toString();
	}

}
