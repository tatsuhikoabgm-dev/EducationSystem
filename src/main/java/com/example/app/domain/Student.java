package com.example.app.domain;

import java.time.LocalDate;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Student {
	
	
	private Integer id;
	
	@NotBlank
	@Size(max=30)
	private String name;
	
	@NotNull
	private LocalDate birthday;
	
	@NotBlank
	@Pattern(regexp = "^[a-zA-Z0-9]+$")
	@Size(max=30)
	private String loginId;
	
	@NotBlank
	private String loginPass;
	
	private String status;
	
	
}
