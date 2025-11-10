package com.example.app.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.example.app.domain.MaterialType;

@Mapper
public interface MaterialTypeMapper {

	MaterialType selectById(Integer id);
	
	
}
