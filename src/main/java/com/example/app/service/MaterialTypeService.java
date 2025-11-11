package com.example.app.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.app.domain.MaterialType;
import com.example.app.mapper.MaterialTypeMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MaterialTypeService {

	private final MaterialTypeMapper materialTypeMapper;

	public List<MaterialType> selectAll() {
		return materialTypeMapper.selectAll();
	}
	


}
