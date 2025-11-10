package com.example.app.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.app.domain.Material;

@Mapper
public interface MaterialMapper {

	
	List<Material> selectAll();
	Material selectById(int id);
	void deleteById(int id);
	
	
}
