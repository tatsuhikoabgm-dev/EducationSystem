package com.example.app.domain;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class PageResult {

	private List<Material> result;
	private int currentPage;
	private int totalPage;
	private int startPage;
	private int endPage;
	
	
}
