package com.nit.model;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Mobile {
	private String mobileName;
	private String model;
	private Double price;
	
}
