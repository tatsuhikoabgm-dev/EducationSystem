package com.example.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.app.service.MaterialServiceImpl;

import lombok.RequiredArgsConstructor;



@Controller
@RequiredArgsConstructor
@RequestMapping("/admin/material")
public class MaterialController {
	
	private final MaterialServiceImpl msi;
	
	//P101
	@GetMapping("/")
	public String getLoginForm() {
		
		return "login";
	}
	
	//P111
	@GetMapping("/list")
	public String getListMaterial(Model model) {
		model.addAttribute("materials",msi.selectAll());
		return "/admin/list-material";
	}
	
	//P112
	@GetMapping("/show/{id}")
	public String getDetailMaterial(@PathVariable("id") int id,
									Model model) {
		System.out.println(id);
		model.addAttribute("material",msi.selectById(id));
		System.out.println(model.getAttribute("material"));
		return "/admin/show-material";
	}
	
	//P113
	@GetMapping("/add")
	public String getAddForm() {
		return "add-material";
	}
	
	//P114
	@GetMapping("/edit/{id}")
	public String getEditForm(@PathVariable("id")int id) {
		return "edit-material";
	}
	
	//P115
	@GetMapping("/delete/{id}")
	public String delete(@PathVariable("id") int id,
						RedirectAttributes ra) {
		msi.deleteById(id);
		ra.addFlashAttribute("msg","教材を削除しました。");
		
		return "redirect:/admin/material/list" ;
	}
	
	
}
