package com.stuman.dao;

import java.sql.SQLException;
import java.util.List;

import com.stuman.domain.Course;

public interface CourseDAO {

	List getCourse();
	List getCourseForStu(String stuid) throws SQLException;
	
	boolean deleteCourseByID(String id);
	boolean updateCourse(Course cour);
	boolean saveCourse(Course cour);
	
	Course getCourseByID(String id);
}
