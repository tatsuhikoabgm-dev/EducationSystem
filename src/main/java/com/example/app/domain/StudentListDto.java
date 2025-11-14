package com.example.app.domain;

import java.time.LocalDate;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class StudentListDto {

	private Integer id;
	private String name;
	private LocalDate entranceDate;
	private String className;
	private int grade;
	
	
}
