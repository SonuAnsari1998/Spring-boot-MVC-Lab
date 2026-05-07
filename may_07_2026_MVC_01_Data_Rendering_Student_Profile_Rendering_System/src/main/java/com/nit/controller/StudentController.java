package com.nit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.nit.model.Student;

/*Marks table
Total
Average
Grade*/
@Controller
public class StudentController {
	@GetMapping("/")
	public String getData(Model model) {
		Student student = new Student(101, "Sonu Anasri", "MCA", "Rai University", 89, 95, 97, 75, 85);

		int totalMarks = student.getSubject1() + student.getSubject2() + student.getSubject3() + student.getSubject4()
				+ student.getSubject5();

		double average = totalMarks / 5;

		String grade;
		if (average >= 90) {
			grade = "A";
		} else if (average >= 75) {
			grade = "B";
		} else if (average >= 60) {
			grade = "C";
		} else {
			grade = "D";
		}

		model.addAttribute("student", student);
		model.addAttribute("total", totalMarks);
		model.addAttribute("average", average);
		model.addAttribute("grade", grade);

		return "student";
	}
}
