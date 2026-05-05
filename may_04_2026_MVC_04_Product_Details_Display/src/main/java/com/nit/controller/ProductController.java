package com.nit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProductController {

	@GetMapping("/")
	public String getProduct(Model model) {
		model.addAttribute("p_name", "Laptop");
		model.addAttribute("p_price", "75000");
		model.addAttribute("p_category", "Electronic");

		return "product";
	}
}
