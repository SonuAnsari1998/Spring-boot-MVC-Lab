package com.nit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class StudentController {
	
	@GetMapping("/register")
	public String getStudentDetails() {
		
		return "admission-form";
	}
	
	@PostMapping("/fm")
	public String postData(@RequestParam("name") String name, 
							@RequestParam("roll") String roll,
							@RequestParam("marks1")String marks1,
							@RequestParam("marks2")String marks2,
							@RequestParam("marks3")String marks3, 
							Model model) {
		
		double m1=Double.parseDouble(marks1);
		double m2=Double.parseDouble(marks2);
		double m3=Double.parseDouble(marks3);
		
		double totalMarks = m1+m2+m3;
		double percentage = totalMarks/3;
		String grade;
		
		if(percentage>80 && percentage<=100) {
			grade="Excellent";
		}else if(percentage>60 && percentage<=80) {
			grade = "Very Good";
		}else if(percentage>50 && percentage<=60) {
			grade = "Good";
		}else if(percentage>40 && percentage<=50){
			grade ="Avg";
		}else {
			grade = "FAIL";
		}
		
		model.addAttribute("name",name);
		model.addAttribute("roll",roll);
		model.addAttribute("totalMarks",totalMarks);
		model.addAttribute("percentage",percentage);
		model.addAttribute("grade",grade);
		return "admission-success";
	}
}
