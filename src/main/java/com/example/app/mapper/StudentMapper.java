package com.example.app.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.app.domain.Student;

@Mapper
public interface StudentMapper {

	public List<Student> findAllStudents();
	public void addStudent(Student student);
	public Student isLoginIdAvailable(Student student);
	public Student findById(int id);
	public void editStudent(Student student);
	
	
}
