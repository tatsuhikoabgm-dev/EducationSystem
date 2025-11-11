package com.example.app.controller;

import jakarta.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.app.domain.Material;
import com.example.app.service.MaterialService;
import com.example.app.service.MaterialTypeService;

import lombok.RequiredArgsConstructor;



@Controller
@RequiredArgsConstructor
@RequestMapping("/admin/material")
public class MaterialController {
	
	private final MaterialService ms;
	private final MaterialTypeService mts;
	
	//P101
	@GetMapping("/")
	public String getLoginForm() {
		
		return "login";
	}
	
	//P111
	@GetMapping("/list")
	public String getListMaterial(@RequestParam(name = "page" ,defaultValue = "1") int page,
																Model model) {
//		model.addAttribute("materials",ms.selectAll());
		
		int npp = 5;
		int totalpage = (int) Math.ceil((double)ms.countAll()/npp);
		
		
		model.addAttribute("materials",ms.selectAllByRow((page-1)*npp, npp));
		
		return "/admin/list-material";
	}
	
	//P112
	@GetMapping("/show/{id}")
	public String getDetailMaterial(@PathVariable("id") int id,
									Model model) {
		model.addAttribute("material",ms.selectById(id));
		return "/admin/show-material";
	}
	
	//*****************add*****************
	//P113
	@GetMapping("/add")
	public String getAddForm(Model model) {
		model.addAttribute("form",new Material());
		model.addAttribute("types",mts.selectAll());
		model.addAttribute("title","視聴覚教材の追加");
		model.addAttribute("method","add");
		
//		System.out.println(model.getAttribute("form"));
		return "/admin/add-edit-material";
	}
	
	//P113
	@PostMapping("/add")
	public String addMaterial(@Valid @ModelAttribute("form") Material form,
														BindingResult result,
														RedirectAttributes ra,
														Model model) {
		//バリデーション判定
		if(result.hasErrors()) {
			model.addAttribute("types",mts.selectAll());
			model.addAttribute("title","視聴覚教材の追加");
			model.addAttribute("method","add");
			return "/admin/add-edit-material";
		}
		
		//重複判定
		if(ms.searchMaterialByName(form)) {
			model.addAttribute("types",mts.selectAll());
			model.addAttribute("title","視聴覚教材の追加");
			model.addAttribute("method","add");
			model.addAttribute("msg","同名の教材がすでに存在しています");
			System.out.println(model.getAttribute("msg"));
			return "/admin/add-edit-material";
		}
		
		ms.addMaterial(form);
		ra.addFlashAttribute("msg","教材を追加しました");
		
		return "redirect:/admin/material/list";
	}
	
//*****************edit*****************
	//P114
	@GetMapping("/edit/{id}")
	public String getEditForm(@PathVariable("id")int id,
														Model model) {
		model.addAttribute("form",ms.selectById(id));
		model.addAttribute("types",mts.selectAll());
		model.addAttribute("title","視聴覚教材の編集");
		model.addAttribute("method","edit");
		return "/admin/add-edit-material";
	}
	
	@PostMapping("/edit")
	public String editMaterial(@Valid @ModelAttribute("form") Material form,
														BindingResult result,
														RedirectAttributes ra,
														Model model) {
			//バリデーション判定
			if(result.hasErrors()) {
				model.addAttribute("types",mts.selectAll());
				model.addAttribute("title","視聴覚教材の編集");
				model.addAttribute("method","edit");
				return "/admin/add-edit-material";
			}		
			
			ms.editMaterial(form);
			ra.addFlashAttribute("msg","教材を編集しました");
		
			return "redirect:/admin/material/list";
	}
	
	
	
	//P115
	@GetMapping("/delete/{id}")
	public String delete(@PathVariable("id") int id,
						RedirectAttributes ra) {
		ms.deleteById(id);
		ra.addFlashAttribute("msg","教材を削除しました。");
		
		return "redirect:/admin/material/list" ;
	}
	
	
}
