package com.example.app.domain;

import java.time.LocalDate;
import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class StudentListDto {

	private Integer id;
	private Integer userId;
	private String name;
	private String address;
	private LocalDate birthday;
	private LocalDateTime createdAt;
	private LocalDateTime updatedAt;
	private User user;
	
}
