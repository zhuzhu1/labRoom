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
import com.stuman.dao.ComputeruseDAO;
import com.stuman.dao.RechargeListDAO;
import com.stuman.dao.hibernate.HibernateUtil;
import com.stuman.domain.Course;
import com.stuman.domain.Student;



public class StudentBean  {

	private StudentDAO stuDao;

	public StudentDAO getStudentDAO() {
		return DAOFactory.getInstance().createStudentDAO();
	}
	
	private DataModel dataModel = new ListDataModel();
	
	/**
	 * 新增学生业务逻辑
	 * @return
	 * @throws Exception
	 */
	public String adminAddStudent() throws Exception{
		//获得DAO实例
		stuDao = this.getStudentDAO();

		Student stu = new Student();
		BeanUtils.copyProperties(stu, this);
		
		//调用DAO方法保存数据库
		if (stuDao.saveStudent(stu)) {
			return "success";
		}
		
		return null;
	}
	
	/**
	 * 管理员更新学生前读取数据
	 * @return
	 */
	public String adminPreUpdateStudent(){
        this.student = (Student) dataModel.getRowData();
        StudentDAO stuDao = DAOFactory.getInstance().createStudentDAO();
		Student stu = stuDao.getStudentByID(student.getId());
		setStudent(stu);
		return "success";
	}
	
	public String getInLabroom(){
		return "success";
	}
	
	/**
	 * 管理员更新学生
	 * @return
	 */
	public String adminEditStudent(){
		stuDao = this.getStudentDAO();
		if(stuDao.updateStudent(getStudent())){
			//session.setAttribute("msg", "密码修改成功！");
			return "success";
		}
        return null;
	}
	
	/**
	 * 修改密码
	 * @return
	 */
	public String editPassword(){

        //JSF获取session
		FacesContext context = FacesContext.getCurrentInstance(); 
		ExternalContext ec = context.getExternalContext(); 
		HttpSession session = (HttpSession) ec.getSession(true); 
		//获得DAO实例
		stuDao = this.getStudentDAO();
		if(this.password == "" || this.student.getPassword() == "" || !this.password.equals(this.student.getPassword()))
		{
			session.setAttribute("msg", "密码为空，两次输入密码不一样！");
			return null;
		}
		if(stuDao.updateStudent(getStudent())){
			session.setAttribute("msg", "密码修改成功！");
			return null;
		}	
		
		return null;
	}
	/**
	 * 删除学生
	 * @return
	 */
	public String adminDelStudent(){
		//获得DAO实例
		stuDao = this.getStudentDAO();
		this.student = (Student) dataModel.getRowData();
		 
		if(stuDao.deleteStudentByID(student.getId())){
			return "success";
		}	
		
		return null;
	}
	/**
	 * 返回学生列表
	 * @return
	 */
    public DataModel getStudents() {
   		//获得DAO实例
   		stuDao = this.getStudentDAO();
   		List list = stuDao.getStudent();
   		dataModel.setWrappedData(list);
        return dataModel;
    }
    
    public DataModel getStudentById() {
//    	JSF获取session
		FacesContext context = FacesContext.getCurrentInstance(); 
		ExternalContext ec = context.getExternalContext(); 
		HttpSession session = (HttpSession) ec.getSession(true); 
		
   		//获得DAO实例
   		stuDao = this.getStudentDAO();
   		//List list = stuDao.getOneStudent();
   		String stu_id = (String)session.getAttribute("stuid");
		System.out.println("Student_id = " + stu_id);
		Student stu = stuDao.getStudentByID(stu_id);
		
		List<Student> list = new ArrayList<Student>();
		list.add(stu);
   		dataModel.setWrappedData(list);
        return dataModel;
    }
    
    /**
	 * 返回充值信息
	 * @return
	 */
    public DataModel getOneRechargeLists() {
//    	JSF获取session
		FacesContext context = FacesContext.getCurrentInstance(); 
		ExternalContext ec = context.getExternalContext(); 
		HttpSession session = (HttpSession) ec.getSession(true); 
		
   		//获得DAO实例
    	RechargeListDAO rechalistDao = DAOFactory.getInstance().createRechargeListDAO();
    	
    	String stu_id = (String)session.getAttribute("stuid");
		System.out.println("Student_id = " + stu_id);
		
   		List list = rechalistDao.getRechargeListById(stu_id);
   		dataModel.setWrappedData(list);
        return dataModel;
    }
    
    /**
	 * 返回上机情况列表
	 * @return
	 */
    public DataModel getOnlineComputeruses() {
//    	JSF获取session
		FacesContext context = FacesContext.getCurrentInstance(); 
		ExternalContext ec = context.getExternalContext(); 
		HttpSession session = (HttpSession) ec.getSession(true); 
		
   		//获得DAO实例
    	ComputeruseDAO comUseDao = DAOFactory.getInstance().createComputeruseDAO();
    	String stu_id = (String)session.getAttribute("stuid");
		System.out.println("Student_id = " + stu_id);
		
   		List list = comUseDao.getOnlineComputerUseById(stu_id);
   		dataModel.setWrappedData(list);
        return dataModel;
    }
    
    public DataModel getHistoryComputeruses() {
//    	JSF获取session
		FacesContext context = FacesContext.getCurrentInstance(); 
		ExternalContext ec = context.getExternalContext(); 
		HttpSession session = (HttpSession) ec.getSession(true); 
		
   		//获得DAO实例
    	ComputeruseDAO comUseDao = DAOFactory.getInstance().createComputeruseDAO();
    	String stu_id = (String)session.getAttribute("stuid");
		System.out.println("Student_id = " + stu_id);
		
   		List list = comUseDao.getHistoryComputerUseById(stu_id);
   		dataModel.setWrappedData(list);
        return dataModel;
    }
    
    /**
	 * 预查看成绩
	 * @return
	 */
	public String preCheckMark(){

		//JSF获取session
		FacesContext context = FacesContext.getCurrentInstance(); 
		ExternalContext ec = context.getExternalContext(); 
		HttpSession session = (HttpSession) ec.getSession(true); 
		
		String stu_id = (String)session.getAttribute("stuid");
		System.out.println("Student_id = " + stu_id);
		StudentDAO stuDao = DAOFactory.getInstance().createStudentDAO();
		Student stu = stuDao.getStudentByID(stu_id);
		setStudent(stu);
		return "success";
	}
	
	
	
	
	
	 /**
	 * 学生更新信息前读取数据
	 * @return
	 */
	public String preModifyStudent(){

		//JSF获取session
		FacesContext context = FacesContext.getCurrentInstance(); 
		ExternalContext ec = context.getExternalContext(); 
		HttpSession session = (HttpSession) ec.getSession(true); 
		
		String stu_id = (String)session.getAttribute("stuid");
		System.out.println("Student_id = " + stu_id);
		StudentDAO stuDao = DAOFactory.getInstance().createStudentDAO();
		Student stu = stuDao.getStudentByID(stu_id);
		setStudent(stu);
		return "success";
	}
	
	
	
	private static final long serialVersionUID = 6563998465524859573L;

	private String id;

	private String name;

	private String password;

	private String departmentId;

	private String classes;

	private double money;

	private java.util.Date registerTime;
	
	private Student student;

	
	//在更新学生页面使用
	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public String getClasses() {
		return classes;
	}

	public void setClasses(String classes) {
		this.classes = classes;
	}

	public String getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(String departmentId) {
		this.departmentId = departmentId;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public double getMoney() {
		return money;
	}

	public void setMoney(double money) {
		this.money = money;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public java.util.Date getRegisterTime() {
		return registerTime;
	}

	public void setRegisterTime(java.util.Date registerTime) {
		this.registerTime = registerTime;
	}

	

}
