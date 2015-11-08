package com.stuman.dao.imp;

import com.stuman.dao.AdminDAO;
import com.stuman.dao.ComputerDAO;
import com.stuman.dao.ComputeruseDAO;
import com.stuman.dao.CourseDAO;
import com.stuman.dao.CourselistDAO;
import com.stuman.dao.LabroomDAO;
import com.stuman.dao.DAOFactory;
import com.stuman.dao.StudentDAO;
import com.stuman.dao.TeacherDAO;
import com.stuman.dao.RechargeListDAO;

public class HibernateDAOFactory extends DAOFactory {

	public AdminDAO createAdminDAO() {				//创建一个admin类数据访问对象
		// TODO Auto-generated method stub
		return new AdminDAOImp();
	}
	
	public ComputerDAO createComputerDAO() {				//创建一个computer类数据访问对象
		// TODO Auto-generated method stub
		return new ComputerDAOImp();
	}
	
	public ComputeruseDAO createComputeruseDAO() {				//创建一个computeruse类数据访问对象
		// TODO Auto-generated method stub
		return new ComputeruseDAOImp();
	}
	
	public CourseDAO createCourseDAO() {					//创建一个course类数据访问对象
		// TODO Auto-generated method stub
		return new CourseDAOImp();
	}
	
	public CourselistDAO createCourselistDAO() {			//创建一个courselist类数据访问对象
		// TODO Auto-generated method stub
		return new CourselistDAOImp();
	}
	
	public LabroomDAO createLabroomDAO() {					//创建一个labroom类数据访问对象
		// TODO Auto-generated method stub
		return new LabroomDAOImp();
	}
	
	public StudentDAO createStudentDAO() {					//创建一个student类数据访问对象
		// TODO Auto-generated method stub
		return new StudentDAOImp();
	}

	public TeacherDAO createTeacherDAO() {					//创建一个teacher类数据访问对象
		// TODO Auto-generated method stub
		return new TeacherDAOImp();
	}
	                       
	public RechargeListDAO createRechargeListDAO() {				//创建一个rechargelist类数据访问对象
		// TODO Auto-generated method stub
		return new RechargeListDAOImp();
	}
}
