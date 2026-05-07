package com.nit.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Student {
	private int id;
    private String name;
    private String course;
    private String college;

    private int subject1;
    private int subject2;
    private int subject3;
    private int subject4;
    private int subject5;
}
