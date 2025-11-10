package com.example.app.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.app.domain.Material;
import com.example.app.mapper.MaterialMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MaterialServiceImpl implements MaterialService {
	
	private final MaterialMapper materialMapper;

	
	@Override
	public List<Material> selectAll(){
		return materialMapper.selectAll();
		
	}
	
	@Override
	public Material selectById(int id) {
		return materialMapper.selectById(id);
	}
	
	@Override
	public void deleteById(int id) {
		materialMapper.deleteById(id);
	}
	
}
