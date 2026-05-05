package com.nit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.nit.model.Weather;

@Controller
public class WeatherController {
	@GetMapping("/")
	public String showWeather(Model model) {
		Weather w = new Weather("Hyderabad", "32", "Sunny", "60");
		
		model.addAttribute("wt", w);
		
		return "weather";
	}
}
