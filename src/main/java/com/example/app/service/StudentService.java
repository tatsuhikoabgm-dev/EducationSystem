package com.example.app.service;

import java.util.List;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Service;

import com.example.app.domain.Student;
import com.example.app.mapper.StudentMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class StudentService {

	private final StudentMapper studentMapper;

	public List<Student> selectAll() {
		return studentMapper.selectAll();
	}

	//平文のパスの入ったDTOにハッシュ化したパスワードを詰めなおすメソッド
	public Student hashedLoginPass(Student student) {
		String hashed = BCrypt.hashpw(student.getLoginPass(), BCrypt.gensalt());
		student.setLoginPass(hashed);
		return student;
	}
	
	public void addStudent(Student student) {
		studentMapper.addStudent(student);
	}
	
	
	//loginIdの重複があればfalseを返す
	public boolean isLoginIdAvailable(Student student) {

		if (studentMapper.isLoginIdAvailable(student) != null) {
			System.out.println("サービス" + student);
			return false;
		}
		return true;
	}
	
	
	public Student selectById(int id) {
		return studentMapper.selectById(id);
	}
	
	public void editStudent(Student student) {
		studentMapper.editStudent(student);
	}
	
	
	
	
	
}
