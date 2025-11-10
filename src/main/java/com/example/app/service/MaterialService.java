package com.example.app.service;

import java.util.List;

import com.example.app.domain.Material;

public interface MaterialService {

	public List<Material> selectAll() ;
	public Material selectById(int id);
	public void deleteById(int id);
	
}
