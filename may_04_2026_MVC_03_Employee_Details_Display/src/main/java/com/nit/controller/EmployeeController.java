package com.nit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class EmployeeController {

	@GetMapping("/")
	public String getEmployee(Model model) {
		model.addAttribute("name", "Allen");
		model.addAttribute("id", "101");
		model.addAttribute("depatment", "Information Technology");
		model.addAttribute("salary", "695000");
		return "employee";
	}
}
