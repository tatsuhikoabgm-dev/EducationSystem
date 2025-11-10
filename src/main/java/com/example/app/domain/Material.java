package com.example.app.domain;

import java.time.LocalDateTime;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.PastOrPresent;
import jakarta.validation.constraints.Size;

import lombok.Data;

@Data
public class Material {

	@NotNull
	private Integer id;
	
	@NotBlank
	@Size(max=30)
	private String name;

	@Size(max=30)
	private String publisher;
	
	@Size(max=100)
	private String note;
	
	@NotNull
	private MaterialType materialTypeId;
	
	@NotNull
	@PastOrPresent
	private LocalDateTime created;
	
	@NotBlank
	private String status;


}
