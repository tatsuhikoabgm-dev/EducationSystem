package com.example.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.app.service.BooksService;

import lombok.RequiredArgsConstructor;


@Controller
@RequiredArgsConstructor
@RequestMapping("/books")
public class BooksController {
	
	private final BooksService bs;

	@GetMapping("/search")
	public String getBooksList() {
		return "books/search";
	}
	
	@GetMapping("/test")
	@ResponseBody
	public void test(@RequestParam String q,
											Model model) {
		
		
	  model.addAttribute("books",bs.searchBooks(q)); 
		System.out.println(bs.searchBooks(q));
		
//		return bs.searchBooks(q) ;
	}
	
	
	
}
