package com.example.app.domain;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {

	private Integer id;
	private String loginId;
	private String loginPass;
	private String role;
	private String status;
	private LocalDateTime createdAt;
	private LocalDateTime updatedAt;
	
	
	
	
}
