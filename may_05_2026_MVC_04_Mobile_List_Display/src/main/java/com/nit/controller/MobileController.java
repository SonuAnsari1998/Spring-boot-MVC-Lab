package com.nit.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.nit.model.Mobile;

@Controller
public class MobileController {
	@GetMapping("/")
	public String getDetails(Model model) {
		List<Mobile> mobileList = new ArrayList<>();
		
		Mobile mobile1 = new Mobile("Galaxy", "S21", 50000D);
		Mobile mobile2 = new Mobile("Apple–iPhone", "13", 70000D);
		Mobile mobile3 = new Mobile("OnePlus", "9 Pro", 60000D);
		mobileList.add(mobile1);
		mobileList.add(mobile2);
		mobileList.add(mobile3);
		
		model.addAttribute("ListOfMobile", mobileList);
		
		return "mobile";
				
	}
}
