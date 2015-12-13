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

import com.stuman.domain.Course;
import com.stuman.domain.Student;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;

import com.stuman.dao.ComputeruseDAO;




public class ComputerUseBean  {
	private String stuId;
	private String roomId;
	private String computerId;
	private String startTime;
	private String endTime;
	private String duration;
	private String cost;
	
	
	private ComputeruseDAO comUseDao;
	public ComputeruseDAO getComputeruseDAO()
	{
		return DAOFactory.getInstance().createComputeruseDAO();
	}
	
	private DataModel dataModel = new ListDataModel();
	
	/**
	 * 返回上机情况列表
	 * @return
	 */
    public DataModel getComputeruses() {
   		//获得DAO实例
    	comUseDao = this.getComputeruseDAO();
   		List list = comUseDao.getComputerUse();
   		dataModel.setWrappedData(list);
        return dataModel;
    }
    
    
	public String getComputerId() {
		return computerId;
	}
	public void setComputerId(String computerId) {
		this.computerId = computerId;
	}
	public String getCost() {
		return cost;
	}
	public void setCost(String cost) {
		this.cost = cost;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public String getRoomId() {
		return roomId;
	}
	public void setRoomId(String roomId) {
		this.roomId = roomId;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getStuId() {
		return stuId;
	}
	public void setStuId(String stuId) {
		this.stuId = stuId;
	}
	
	

}
