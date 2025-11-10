package com.example.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.RequiredArgsConstructor;


@Controller
@RequiredArgsConstructor
@RequestMapping("/admin/material")
public class MaterialController {

	@GetMapping({"/list","/"})
	public String getShowMaterial() {
		
		return "admin/list-material";
	}
	
	
	@GetMapping("/show/{id}")
	public String getDetailMaterial(@PathVariable() int id) {
		return "show-material";
	}
	
	
	@GetMapping("/add")
	public String getAddForm() {
		return "add-material";
	}
	
	
	@GetMapping("/edit/{id}")
	public String getEditForm(@PathVariable()int id) {
		return "edit-material";
	}
	
	
	
}
