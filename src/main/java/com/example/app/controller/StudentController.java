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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.app.domain.Student;
import com.example.app.service.StudentService;

import lombok.RequiredArgsConstructor;


@Controller
@RequiredArgsConstructor
@RequestMapping("/admin/student")
public class StudentController {

	private final StudentService ss;
	
	//P121
	@GetMapping("/list")
	public String getListStudent(Model model) {
		
		model.addAttribute("students",ss.selectAll());
		System.out.println(model.getAttribute("students"));
		
		return "/admin/list-student";
	}
	
	
	//P123
	@GetMapping("/add")
	public String getAddForm(Model model) {
		
		model.addAttribute("studentForm",new Student());
		model.addAttribute("method","add");
		model.addAttribute("title","生徒の追加");
		
		return "/admin/student-form";
		
	}
	
	//P123
	@PostMapping("/add")
	public String addStudent(@Valid @ModelAttribute("studentForm") Student student,
														BindingResult result,
														RedirectAttributes ra,
														Model model) {
		
		
		if(!ss.isLoginIdAvailable(student)) {
			model.addAttribute("msg","同名のログインID がすでに存在しています。");
			model.addAttribute("method","add");
			model.addAttribute("title","生徒の追加");
			return "/admin/student-form";
		}
		
		if(result.hasErrors()) {
			
			model.addAttribute("method","add");
			model.addAttribute("title","生徒の追加");
			return "/admin/student-form";
		}
		
		ss.addStudent(student);
		ra.addFlashAttribute("msg","生徒を追加しました。");
		return "redirect:/admin/student/list";
		
	}
	
	
	//P124
	@GetMapping("/edit/{id}")
	public String getEditForm(@PathVariable("id") int id,
														Model model) {
		
		model.addAttribute("studentForm",ss.selectById(id));
		model.addAttribute("method","add");
		System.out.println(model.getAttribute("studentForm"));
		return "/admin/student-form";
	}
	
	
	
	
	
	
	
}
