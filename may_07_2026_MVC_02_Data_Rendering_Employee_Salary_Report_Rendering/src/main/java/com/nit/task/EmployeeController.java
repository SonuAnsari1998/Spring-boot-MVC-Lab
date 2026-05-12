package com.nit.task;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.nit.model.Employee;

@Controller
public class EmployeeController {

	@GetMapping("/")
	public String showEmployee(Model model) {
		Employee emp = new Employee(111, "Sonu Ansari", "IT", 45400D);

		double hra = (20 * emp.getBasicSalary()) / 100;
		double da = (10 * emp.getBasicSalary()) / 100;
		double bonus = (5 * emp.getBasicSalary()) / 100;
		double pfDeduction = (12 * emp.getBasicSalary()) / 100;
		double taxDeduction = (8 * emp.getBasicSalary()) / 100;

		double netSalary = (emp.getBasicSalary() + hra + da + bonus) - (pfDeduction + taxDeduction);
		model.addAttribute("eid", emp.getEmployeeId());
		model.addAttribute("ename", emp.getEmployeeName());
		model.addAttribute("dept", emp.getDepartment());
		model.addAttribute("basicSalary", emp.getBasicSalary());
		model.addAttribute("hra", hra);
		model.addAttribute("da", da);
		model.addAttribute("bonus", bonus);
		model.addAttribute("pf", pfDeduction);
		model.addAttribute("tex", taxDeduction);
		model.addAttribute("netSalary", netSalary);

		return "employee";
	}
}
