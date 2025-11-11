package com.example.app.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.app.domain.Material;

@Mapper
public interface MaterialMapper {

	
	List<Material> selectAll();
	List<Material> selectAllByRow(int offset,int npp);
	int countAll(); 
	Material selectById(int id);
	void deleteById(int id);
	void addMaterial(Material material);
	Material searchMaterialByName(Material material);
	void editMaterial(Material material);
	
}
