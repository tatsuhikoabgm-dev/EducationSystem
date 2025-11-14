package com.example.app.service;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.example.app.domain.googlebooks.GoogleBooks;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class BooksService {

	
	public GoogleBooks searchBooks(String q) {
		
		String url ="https://www.googleapis.com/books/v1/volumes?q=" + q;
		RestTemplate rest = new RestTemplate();
		ResponseEntity<GoogleBooks> books = rest.getForEntity(url, GoogleBooks.class);
		return books.getBody();
	}
	
	
}
