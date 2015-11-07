package com.stuman.web.jsf.bean;

import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
import javax.faces.model.DataModel;
import javax.faces.model.ListDataModel;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.stuman.dao.DAOFactory;
import com.stuman.dao.ComputerDAO;
import com.stuman.dao.StudentDAO;
import com.stuman.domain.Classes;
import com.stuman.domain.Course;
import com.stuman.domain.Enrol;
import com.stuman.domain.EnrolId;
import com.stuman.domain.Student;

public class EnrolBean {
	
	private ComputerDAO enrolDao = DAOFactory.getInstance().createEnrolDAO();
	
	private StudentDAO stuDao = DAOFactory.getInstance().createStudentDAO();
	
	private EnrolId id;

	private Classes classes;

	private Student student;

	private String accept;

	private String score;
	
	private Enrol enrol;
	
	private DataModel dataModel=new ListDataModel();
	
	//学生选课
	public String saveEnrol()throws Exception{
		//JSF获取session
		FacesContext context = FacesContext.getCurrentInstance(); 
		ExternalContext ec = context.getExternalContext(); 
		HttpSession session = (HttpSession) ec.getSession(true); 
		//取出学生号
		String stu_id = (String)session.getAttribute("stuid");
		student = stuDao.getStudentByID(stu_id); 
		Enrol enrol = new Enrol();
		enrol.setId(new EnrolId());
		enrol.setAccept("0");
		enrol.setStudent(student);
		//取出教室
		Course course=(Course) dataModel.getRowData();
		//enrol.setClasses(course);
		enrolDao.saveEnrol(enrol);
		return "success";
	}
	
	//查询个人成绩
	public DataModel getEnrols()throws Exception{
		//JSF获取session
		FacesContext context = FacesContext.getCurrentInstance(); 
		ExternalContext ec = context.getExternalContext(); 
		HttpSession session = (HttpSession) ec.getSession(true); 
		//取出学生号
		String stu_id = (String)session.getAttribute("stuid");
		dataModel.setWrappedData(enrolDao.getByStuId(stu_id));
		return dataModel;
	}
	
	//跳到教师打分页面
	public String editEnrol()throws Exception{
		//JSF获取session
		FacesContext context = FacesContext.getCurrentInstance(); 
		ExternalContext ec = context.getExternalContext(); 
		HttpServletRequest request = (HttpServletRequest)ec.getRequest();
		String stuid = request.getParameter("stuid");
		String classid = request.getParameter("classid");
		enrol = enrolDao.getEnrolByID(stuid,classid);
		return "success";
	}
	
	//教师打分
	public String updateEnrol()throws Exception{
		enrolDao.updateEnrol(getEnrol());
		return "success";
	}
	
	//教师接受学生
	public String acceptEnrol()throws Exception{
		//JSF获取session
		FacesContext context = FacesContext.getCurrentInstance(); 
		ExternalContext ec = context.getExternalContext(); 
		HttpServletRequest request = (HttpServletRequest)ec.getRequest();
		enrol = (Enrol)dataModel.getRowData();
		return "success";
	}
	
	public DataModel getDataModel() {
		return dataModel;
	}

	public void setDataModel(DataModel dataModel) {
		this.dataModel = dataModel;
	}

	public EnrolId getId() {
		return id;
	}

	public void setId(EnrolId id) {
		this.id = id;
	}

	public Classes getClasses() {
		return classes;
	}

	public void setClasses(Classes classes) {
		this.classes = classes;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public String getAccept() {
		return accept;
	}

	public void setAccept(String accept) {
		this.accept = accept;
	}

	public String getScore() {
		return score;
	}

	public void setScore(String score) {
		this.score = score;
	}

	public Enrol getEnrol() {
		return enrol;
	}

	public void setEnrol(Enrol enrol) {
		this.enrol = enrol;
	}

}
