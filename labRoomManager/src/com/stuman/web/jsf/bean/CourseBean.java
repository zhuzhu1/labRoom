package com.stuman.web.jsf.bean;

import java.util.HashSet;
import java.util.Set;

import javax.faces.model.DataModel;
import javax.faces.model.ListDataModel;

import com.stuman.dao.CourseDAO;
import com.stuman.dao.DAOFactory;
import com.stuman.domain.Course;

public class CourseBean {
	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 6948989625489677658L;

	private String id;

	private String name;

	private Integer mark;

	private String prepare;

	private String dep;

	private Set classeses = new HashSet(0);
	
	private DataModel dataModel=new ListDataModel();
	
	private CourseDAO stuDao;
	
	private Course course;
	
	
	public CourseDAO getCourseDAO() {
		return DAOFactory.getInstance().createCourseDAO();
	}

	
	/**
	 * 课程列表
	 * @return
	 */
	public DataModel getCourses(){
		stuDao = this.getCourseDAO();
		dataModel.setWrappedData(stuDao.getCourse());
		return dataModel;
	}
	
	
	/**
	 * 预编辑课程
	 * @return
	 */
	public String preEditCourse(){
		Course course=(Course) dataModel.getRowData();
		stuDao = this.getCourseDAO();
		setCourse(stuDao.getCourseByID(course.getId()));
		return "edit";
	}
	
	/**
	 * 编辑课程
	 * @return
	 */
	public String editCourse(){
		stuDao = this.getCourseDAO();
		if(stuDao.updateCourse(getCourse())){
			return "success";
		}
		return null;
	}
	
	/**
	 * 删除课程
	 * @return
	 */
	public String deleteCourse(){
		stuDao = this.getCourseDAO();
		this.course = (Course) dataModel.getRowData();
		if(stuDao.deleteCourseByID(course.getId())){
			return "success";
		}	
		return null;
	}
	
	
	/**
	 * 新增教师
	 * @return
	 */
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


	public void setCourse(Course course) {
		this.course = course;
	}


	public DataModel getDataModel() {
		return dataModel;
	}


	public void setDataModel(DataModel dataModel) {
		this.dataModel = dataModel;
	}


	public CourseDAO getStuDao() {
		return stuDao;
	}


	public void setStuDao(CourseDAO stuDao) {
		this.stuDao = stuDao;
	}


	/** default constructor */
	public CourseBean() {
	}

	/** full constructor */
	public CourseBean(String name, Integer mark, String prepare, String dep,
			Set classeses) {
		this.name = name;
		this.mark = mark;
		this.prepare = prepare;
		this.dep = dep;
		this.classeses = classeses;
	}

	// Property accessors

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

	public Integer getMark() {
		return mark;
	}

	public void setMark(Integer mark) {
		this.mark = mark;
	}

	public String getPrepare() {
		return prepare;
	}

	public void setPrepare(String prepare) {
		this.prepare = prepare;
	}

	public String getDep() {
		return dep;
	}

	public void setDep(String dep) {
		this.dep = dep;
	}

	public Set getClasseses() {
		return classeses;
	}

	public void setClasseses(Set classeses) {
		this.classeses = classeses;
	}


	public Course getCourse() {
		return course;
	}

}
