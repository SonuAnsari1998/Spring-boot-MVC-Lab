package com.nit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.nit.model.Product;

@Controller
public class ProductController {
	@GetMapping("/")
	public String getProduct(Model model) {
		Product product = new Product(111L, "Laptop", 3, 75000D);
		double totalAmount = product.getPrice() * product.getQuantity();
		double gst = (18 * totalAmount) / 100;
		double discount = 0;
		if (totalAmount > 5000) {
			discount = (10 * totalAmount) / 100;
		}
		double finalBillAmount = (totalAmount + gst) - discount;
		model.addAttribute("productId", product.getProductId());
		model.addAttribute("productName", product.getProductName());
		model.addAttribute("qty", product.getQuantity());
		model.addAttribute("price", product.getPrice());
		model.addAttribute("gst", gst);
		model.addAttribute("discount", discount);
		model.addAttribute("finalBill", finalBillAmount);

		return "product";
	}
}
