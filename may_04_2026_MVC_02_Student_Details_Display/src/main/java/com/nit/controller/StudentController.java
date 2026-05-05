package com.nit.controller;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class StudentController {

    @GetMapping("/student")
    public String showStudent(Model model) {
        model.addAttribute("name", "Rahul");
        model.addAttribute("rollNo", "102");
        model.addAttribute("course", "B.Tech");

        return "student";
    }
}
