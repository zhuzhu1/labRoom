package com.stuman.dao;

import java.util.List;

import com.stuman.domain.Student;

public interface StudentDAO {
	
	List getStudent();
	
	boolean deleteStudentByID(String id);
	boolean updateStudent(Student stu);
	boolean saveStudent(Student stu);
	
	Student getStudentByID(String id);
	

}