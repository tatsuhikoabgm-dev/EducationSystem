package com.example.app.domain.googlebooks;

import java.util.List;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class GoogleBooks {
	
	private String kind;
	private Integer totalItems;
	private List<Volume> items;
}
