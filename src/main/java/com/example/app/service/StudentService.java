package com.example.app.service;

import java.time.LocalDate;
import java.util.List;

import org.springframework.stereotype.Service;

import com.example.app.domain.Student;
import com.example.app.domain.StudentListDto;
import com.example.app.mapper.StudentMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class StudentService {

	private final StudentMapper studentMapper;

	//studentの全件取得をDTOに詰め替え
	public List<StudentListDto> findAllStudents() {
		
		List<Student> students = studentMapper.findAllStudents();
		
		return students.stream().map( s -> {
													StudentListDto dto = new StudentListDto();
													dto.setId(s.getId());
													dto.setName(s.getName());
													dto.setClassName(s.getClassName());
													dto.setGrade(calculateGrade(s.getEntranceDate()));
													return dto;
		}).toList();
	}
	
	
	public int calculateGrade(LocalDate entranceDate) {
		
		LocalDate now = LocalDate.now();
		int nowYear = LocalDate.now().getYear();
		LocalDate konnendo = LocalDate.of(nowYear, 4, 1);
		int entranceYaer = entranceDate.getYear();
		
		if(now.isBefore(konnendo)) {
			nowYear--;
		}
		
		return (nowYear - entranceYaer) ;
	}
	
	

//	//平文のパスの入ったDTOにハッシュ化したパスワードを詰めなおすメソッド
//	public Student hashedLoginPass(Student student) {
//		String hashed = BCrypt.hashpw(student.getLoginPass(), BCrypt.gensalt());
//		student.setLoginPass(hashed);
//		return student;
//	}
	
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
	
	
	public Student findById(int id) {
		return studentMapper.findById(id);
	}
	
	public void editStudent(Student student) {
		studentMapper.editStudent(student);
	}
	
	
	
	
	
}
