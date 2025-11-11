package com.example.app.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.app.domain.Material;
import com.example.app.domain.PageResult;
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
	public PageResult selectAllByRow(int page , int size){
		
		int totalPage = (int) Math.ceil( (double) materialMapper.countAll() / size);
		int offset = size * (page -1);
		
		int start = Math.max(1, page-1);
		int end = Math.min(totalPage, start+2);
		
		if(end - start < 2) {
			start = Math.max(1, end-2);
		}
		
		List<Material> result = materialMapper.selectAllByRow(offset, size);
		return new PageResult(result,page,totalPage,start,end);
		
		
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


