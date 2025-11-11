package com.example.app.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.app.domain.Material;
import com.example.app.mapper.MaterialMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MaterialService {

	private final MaterialMapper materialMapper;

	public List<Material> selectAll() {
		return materialMapper.selectAll();

	}
	
	//ページネイション用のメソッド
	public List<Material>selectAllByRow(int offset,int npp){
		return materialMapper.selectAllByRow(offset, npp);
	}
	
	public long countAll() {
		return materialMapper.countAll();
	}

	
	
	
	public Material selectById(int id) {
		return materialMapper.selectById(id);
	}

	public void deleteById(int id) {
		materialMapper.deleteById(id);
	}

	public void addMaterial(Material material) {
		materialMapper.addMaterial(material);
	}
	
	public boolean searchMaterialByName(Material material) {
		
		if(materialMapper.searchMaterialByName(material) != null) {
			return true;
		}
		return false ;
	}
	
	public void editMaterial(Material material) {
		materialMapper.editMaterial(material);
	}
	
}


