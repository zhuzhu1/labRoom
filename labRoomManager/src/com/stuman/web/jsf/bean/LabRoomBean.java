package com.stuman.web.jsf.bean;

import java.util.List;

import javax.faces.model.DataModel;
import javax.faces.model.ListDataModel;

import com.stuman.dao.DAOFactory;
import com.stuman.dao.LabroomDAO;

public class LabRoomBean {
	
	private String id;
	private String capacity;
	private String computerNum;
	private String status;
	private String cost;
	
	private LabroomDAO labroomDao;
	public LabroomDAO getLabroomDAO()
	{
		return DAOFactory.getInstance().createLabroomDAO();
	}
	
	private DataModel dataModel = new ListDataModel();
	
	/**
	 * 返回充值信息
	 * @return
	 */
    public DataModel getLabRooms() {
   		//获得DAO实例
    	labroomDao = this.getLabroomDAO();
   		List list = labroomDao.getLabRoom();
   		dataModel.setWrappedData(list);
        return dataModel;
    }
	
    
	public String getCapacity() {
		return capacity;
	}
	public void setCapacity(String capacity) {
		this.capacity = capacity;
	}
	public String getComputerNum() {
		return computerNum;
	}
	public void setComputerNum(String computerNum) {
		this.computerNum = computerNum;
	}
	public String getCost() {
		return cost;
	}
	public void setCost(String cost) {
		this.cost = cost;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
}
