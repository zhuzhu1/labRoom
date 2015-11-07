package com.stuman.dto;

import java.util.List;

import com.stuman.dao.ClassesDAO;
import com.stuman.dao.DAOFactory;
import com.stuman.domain.Classes;
import com.stuman.domain.Course;

public class CourseDto extends Course{
	
	private Classes classes;
	
	public void convert(Course course,CourseDto dto){
		dto.setDep(course.getDep());
		dto.setId(course.getId());
		dto.setMark(course.getMark());
		dto.setName(course.getName());
		dto.setPrepare(course.getPrepare());
		ClassesDAO dao = DAOFactory.getInstance().createClassesDAO();
		dto.setClasses(dao.gerByCourse(course));
	}
	
	public void convert(List<Course> list,List<CourseDto> dtolist){
		for(int i=0;i<list.size();i++){
			CourseDto dto = new CourseDto();
			//将list中的Course转成dto
			this.convert(list.get(i), dto);
			dtolist.add(dto);
		}	
	}

	public Classes getClasses() {
		return classes;
	}

	public void setClasses(Classes classes) {
		this.classes = classes;
	}

}
