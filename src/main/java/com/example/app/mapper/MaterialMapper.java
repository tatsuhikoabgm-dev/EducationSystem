package com.example.app.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.example.app.domain.Material;

@Mapper
public interface MaterialMapper {

	
	Material selectAll();
	
	
}
