package com.stuman.web.jsf.bean;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
import javax.faces.model.DataModel;
import javax.faces.model.ListDataModel;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.stuman.dao.ClassesDAO;
import com.stuman.dao.DAOFactory;
import com.stuman.dao.ComputerDAO;
import com.stuman.dao.TeacherDAO;
import com.stuman.domain.Classes;
import com.stuman.domain.Course;
import com.stuman.domain.Enrol;
import com.stuman.domain.Student;
import com.stuman.domain.Teacher;


public class ClassesBean  {
	// Fields

	private static final long serialVersionUID = 3773631281232656300L;

	private String id;

	private Teacher teacher;

	private Course course;

	private String roomId;

	private String courTime;

	private Set enrols = new HashSet(0);
	
	private ClassesDAO stuDao;
	
	private Classes classes;
	
	private DataModel dataModel=new ListDataModel();


	

	public Classes getClasses() {
		return classes;
	}


	public String addClass(){
		return null;
	}
	
	public ClassesDAO getClassesDAO() {
		return DAOFactory.getInstance().createClassesDAO();
	}
	
	
	/**
	 * 新增班级
	 * @return
	 */
	public String addClasses(){
		stuDao = this.getClassesDAO();
		Classes stu = new Classes();
		
		stu.setId(getId());
		stu.setTeacher(getTeacher());
		stu.setCourse(getCourse());
		stu.setRoomId(getRoomId());
		stu.setCourTime(getCourTime());

		if (stuDao.saveClasses(stu)) {
			return "success";
		}
		return null;
	}
	
	/**
	 * 班级列表
	 * @return
	 */
	public DataModel getClassess(){
		stuDao = this.getClassesDAO();
		dataModel.setWrappedData(stuDao.getClasses());
		return dataModel;
	}
	
	//按教师查课程列表
	public DataModel getCourses(){
		//JSF获取session
		FacesContext context = FacesContext.getCurrentInstance(); 
		ExternalContext ec = context.getExternalContext(); 
		HttpSession session = (HttpSession) ec.getSession(true); 	
		String teaid = (String)session.getAttribute("teaid");
		System.out.println("teaid = " + teaid);
		TeacherDAO teaDao = DAOFactory.getInstance().createTeacherDAO();
		Teacher teacher = teaDao.getTeacherByID(teaid);
		stuDao = this.getClassesDAO();
		dataModel.setWrappedData(stuDao.getByTea(teacher));
		return dataModel;
	}
	
	//教师查找选修课的学生
	public DataModel getStudent(){
		FacesContext context = FacesContext.getCurrentInstance(); 
		ExternalContext ec = context.getExternalContext(); 
		HttpServletRequest request =(HttpServletRequest) ec.getRequest();
		String classid = request.getParameter("classid");
		stuDao = this.getClassesDAO();
		classes = stuDao.getClassesByID(classid);
		ComputerDAO dao = DAOFactory.getInstance().createEnrolDAO();
		dataModel.setWrappedData(dao.getByClasses(classes));
		return dataModel;
	}
	
	//教师查找接受的学生以给他打分
	public DataModel getAcceptStudent(){
		FacesContext context = FacesContext.getCurrentInstance(); 
		ExternalContext ec = context.getExternalContext(); 
		HttpSession session = (HttpSession) ec.getSession(true); 	
		String teaid = (String)session.getAttribute("teaid");
		TeacherDAO teaDao = DAOFactory.getInstance().createTeacherDAO();
		Teacher teacher = teaDao.getTeacherByID(teaid);
		//System.out.println("sssss="+teacher.getClasseses().size());
		ClassesDAO classesDao = this.getClassesDAO();
		ComputerDAO enrolDao = DAOFactory.getInstance().createEnrolDAO();
		//查教师开的课
		List<Classes> list = classesDao.getByTea(teacher);
		List<Enrol> students = new ArrayList<Enrol>();
		for(Classes classes:list){
			//查每门课选修的学生
			List<Enrol> enrols = enrolDao.getByClasses(classes);
			for(Enrol enrol:enrols){
				students.add(enrol);
			}
		}
		dataModel.setWrappedData(students);
		return dataModel;
	}
	
	/**
	 * 预编辑班级
	 * @return
	 */
	public String preEditClasses(){
		Classes classes=(Classes) dataModel.getRowData();
		stuDao = this.getClassesDAO();
		setClasses(stuDao.getClassesByID(classes.getId()));
		return "edit";
	}
	
	/**
	 * 编辑班级
	 * @return
	 */
	public String editClasses(){
		stuDao = this.getClassesDAO();
		if(stuDao.updateClasses(getClasses())){
			return "success";
		}
		return null;
	}
	
	/**
	 * 删除班级
	 * @return
	 */
	public String deleteClasses(){
//		获得DAO实例
		stuDao = this.getClassesDAO();
		this.classes = (Classes) dataModel.getRowData();
		if(stuDao.deleteClassesByID(classes.getId())){
			return "success";
		}	
		return null;
	}



	// Constructors

	/** default constructor */
	/** default constructor */
	public ClassesBean() {
	}

	/** full constructor */
	public ClassesBean(Teacher teacher, Course course, String roomId,
			String courTime, Set enrols) {
		this.teacher = teacher;
		this.course = course;
		this.roomId = roomId;
		this.courTime = courTime;
		this.enrols = enrols;
	}

	// Property accessors

	public DataModel getDataModel() {
		return dataModel;
	}


	public void setDataModel(DataModel dataModel) {
		this.dataModel = dataModel;
	}


	public ClassesDAO getStuDao() {
		return stuDao;
	}


	public void setStuDao(ClassesDAO stuDao) {
		this.stuDao = stuDao;
	}


	public void setClasses(Classes classes) {
		this.classes = classes;
	}
	
	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Teacher getTeacher() {
		return this.teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}

	public Course getCourse() {
		return this.course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public String getRoomId() {
		return this.roomId;
	}

	public void setRoomId(String roomId) {
		this.roomId = roomId;
	}

	public String getCourTime() {
		return this.courTime;
	}

	public void setCourTime(String courTime) {
		this.courTime = courTime;
	}

	public Set getEnrols() {
		return this.enrols;
	}

	public void setEnrols(Set enrols) {
		this.enrols = enrols;
	}

}
