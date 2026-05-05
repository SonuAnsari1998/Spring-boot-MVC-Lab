package com.nit.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DateTimeController {
	@GetMapping("/")
	public String getDateTime(Model model) {
		
		LocalDateTime ldate = LocalDateTime.now();
		DateTimeFormatter dateFormatter = DateTimeFormatter.ofPattern("dd-MM-yyyy");
		String format = ldate.format(dateFormatter);
		
		
		 DateTimeFormatter timeFormatter = DateTimeFormatter.ofPattern("hh:mm a");
		 String time = ldate.format(timeFormatter);
		
		
		
		
		model.addAttribute("date",format);
		model.addAttribute("time", time);
		

		return "datetime";
	}
}
