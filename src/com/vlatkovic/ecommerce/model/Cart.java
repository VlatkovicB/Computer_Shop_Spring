package com.vlatkovic.ecommerce.model;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Component;
import org.springframework.web.context.WebApplicationContext;

@Component
@Scope(value = WebApplicationContext.SCOPE_SESSION, proxyMode = ScopedProxyMode.TARGET_CLASS)
public class Cart implements Serializable {

	private static final long serialVersionUID = 5638466174442109403L;

	private Map<Product, Integer> cartContent = new HashMap<>();

	public Map<Product, Integer> getcartContent() {
		return cartContent;
	}

	public Set<Product> getProducts() {
		return cartContent.keySet();
	}

	public void addProduct(Product product, int count) {
		if (cartContent.containsKey(product)) {
			cartContent.put(product, cartContent.get(product) + count);
		} else {
			cartContent.put(product, count);
		}
	}

	public void removeProduct(Product product) {
		cartContent.remove(product);
	}

	public void clearCart() {
		cartContent.clear();
	}

	public double getTotalCost() {
		double totalCost = 0;

		for (Product product : cartContent.keySet()) {
			totalCost += cartContent.get(product) * product.getPrice();
		}

		return totalCost;
	}

}
