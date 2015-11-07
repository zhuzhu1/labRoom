package com.stuman.dao;

import java.util.List;

import com.stuman.domain.Teacher;


public interface TeacherDAO {
	
	List getTeacher();
	
	boolean deleteTeacherByID(String id);
	boolean updateTeacher(Teacher stu);
	boolean saveTeacher(Teacher stu);
	
	Teacher getTeacherByID(String id);
	

}
