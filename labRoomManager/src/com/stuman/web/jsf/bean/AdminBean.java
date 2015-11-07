package com.stuman.web.jsf.bean;

import java.util.ArrayList;
import java.util.List;

import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
import javax.faces.model.DataModel;
import javax.faces.model.ListDataModel;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import com.stuman.dao.CourseDAO;
import com.stuman.dao.DAOFactory;
import com.stuman.dao.AdminDAO;
import com.stuman.domain.Course;
import com.stuman.domain.Admin;
import com.stuman.dto.CourseDto;


public class AdminBean  {

	private AdminDAO admDao;

	public AdminDAO getAdminDAO() {
		return DAOFactory.getInstance().createAdminDAO();
	}
	
	private DataModel dataModel = new ListDataModel();
	
	/**
	 * 返回学生列表
	 * @return
	 */
    public DataModel getAdmins() {
   		//获得DAO实例
    	admDao = this.getAdminDAO();
   		List list = admDao.getAdmin();
   		dataModel.setWrappedData(list);
        return dataModel;
    }

	private String id;

	private String name;

	private String password;

	private java.util.Date registerTime;

	private Admin admin;
	
	
	//在更新学生页面使用
	public Admin getAdmin() {
		return admin;
	}

	public void setStudent(Admin admin) {
		this.admin = admin;
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
