package com.stuman.web.jsf.bean;

import java.util.ArrayList;
import java.util.List;

import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
import javax.faces.model.DataModel;
import javax.faces.model.ListDataModel;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;
import org.hibernate.Session;

import com.stuman.dao.CourseDAO;
import com.stuman.dao.DAOFactory;
import com.stuman.dao.StudentDAO;
import com.stuman.dao.hibernate.HibernateUtil;
import com.stuman.domain.Course;
import com.stuman.domain.Student;
import com.stuman.dto.CourseDto;

public class CourseBean {

	private CourseDAO couDao;

	public CourseDAO getCourseDAO() {
		return DAOFactory.getInstance().createCourseDAO();
	}
	
	private DataModel dataModel = new ListDataModel();
	
	/**
	 * 课程列表
	 * @return
	 */
	public DataModel getCourses(){
		couDao = this.getCourseDAO();
		dataModel.setWrappedData(couDao.getCourse());
		return dataModel;
	}
	
	
	/**
	 * 预编辑课程
	 * @return
	 */
	public String preEditCourse(){
		Course course=(Course) dataModel.getRowData();
		couDao = this.getCourseDAO();
		setCourse(couDao.getCourseByID(course.getId()));
		return "success";
	}
	
	/**
	 * 编辑课程
	 * @return
	 */
	public String editCourse(){
		couDao = this.getCourseDAO();
		if(couDao.updateCourse(getCourse())){
			return "success";
		}
		return null;
	}
	
	/**
	 * 删除课程
	 * @return
	 */
	public String deleteCourse(){
		couDao = this.getCourseDAO();
		this.course = (Course) dataModel.getRowData();
		if(couDao.deleteCourseByID(course.getId())){
			return "success";
		}	
		return null;
	}
	
	/**
	 * 新增课程
	 * @return
	 * @throws Exception
	 */
	public String addCourse() throws Exception{
		//获得DAO实例
		couDao = this.getCourseDAO();

		Course cou = new Course();
		BeanUtils.copyProperties(cou, this);
		
		//调用DAO方法保存数据库
		if (couDao.saveCourse(cou)) {
			return "success";
		}
		
		return null;
	}
	
	/**
	 * 新增教师
	 * @return
	 */
	/*
	public String addCourse(){
		stuDao = this.getCourseDAO();
		Course stu = new Course();
		
		stu.setId(getId());
		stu.setName(getName());
		stu.setDep(getDep());
		stu.setPrepare( getPrepare());
		stu.setMark( getMark());

		if (stuDao.saveCourse(stu)) {
			return "success";
		}
		return null;
	}
*/
	private String id;

	private String name;

	private Integer departmentId;

	private Integer credit;

	private String stuNumber;
	private Course course;

	public Course getCourse() {
		return course;
	}


	public void setCourse(Course course) {
		this.course = course;
	}


	public Integer getCredit() {
		return credit;
	}


	public void setCredit(Integer credit) {
		this.credit = credit;
	}


	public Integer getDepartmentId() {
		return departmentId;
	}


	public void setDepartmentId(Integer departmentId) {
		this.departmentId = departmentId;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getStuNumber() {
		return stuNumber;
	}


	public void setStuNumber(String stuNumber) {
		this.stuNumber = stuNumber;
	}
	
	
	

}
