package com.nit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CourseController {

	@GetMapping("/")
	public String getCourse(Model model) {
		model.addAttribute("courseName", "Java Full Stack");
		model.addAttribute("duration", "6-Months");
		model.addAttribute("fee", "35000");
		return "course";
	}
}
