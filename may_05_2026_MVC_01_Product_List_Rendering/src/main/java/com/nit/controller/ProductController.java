package com.nit.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.nit.model.ProductModel;

@Controller
public class ProductController {
	@GetMapping("/")
	public String getProduct(Model model) {

		List<ProductModel> productList = new ArrayList<ProductModel>();
		ProductModel p1 = new ProductModel(101, "Laptop", 856000D);
		ProductModel p2 = new ProductModel(102, "Mobile", 62600D);

		productList.add(p1);
		productList.add(p2);

		model.addAttribute("list", productList);

		return "product";
	}
}
