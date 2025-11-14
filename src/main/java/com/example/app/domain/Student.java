package com.example.app.domain;

import java.time.LocalDate;
import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Student {
	
	
	private Integer id;
	private Integer userId;
	private String name;
	private String address;
	private LocalDate birthday;
	private String gender;
	private LocalDate entranceDate;
	private String className;
	private String clubName;
	private String phoneNumber;
	private LocalDateTime createdAt;
	private LocalDateTime updatedAt;
	private User user;
	
	
//	@DateTimeFormat(pattern = "yyyy-MM-dd")
	
//	@NotBlank
//	@Pattern(regexp = "^[a-zA-Z0-9]+$")
//	@Size(max=30)
//	private String loginId;
	
//	@NotBlank
//	private String loginPass;
	
//	private String status;
	
	
}
