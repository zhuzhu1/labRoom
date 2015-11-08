package com.stuman.web.jsf.bean;

import java.util.List;

import javax.faces.model.DataModel;
import javax.faces.model.ListDataModel;

import com.stuman.dao.RechargeListDAO;
import com.stuman.dao.DAOFactory;

public class RechargeListBean {
	private String stuId;
	private double money;
	private java.util.Date rechargetime;
	
	private RechargeListDAO rechalistDao;
	public RechargeListDAO getRechargeListDAO()
	{
		return DAOFactory.getInstance().createRechargeListDAO();
	}
	
	private DataModel dataModel = new ListDataModel();
	
	/**
	 * 返回充值信息
	 * @return
	 */
    public DataModel getRechargeLists() {
   		//获得DAO实例
    	rechalistDao = this.getRechargeListDAO();
   		List list = rechalistDao.getRechargeList();
   		dataModel.setWrappedData(list);
        return dataModel;
    }
	
	public double getMoney() {
		return money;
	}
	public void setMoney(double money) {
		this.money = money;
	}
	public java.util.Date getRechargetime() {
		return rechargetime;
	}
	public void setRechargetime(java.util.Date rechargetime) {
		this.rechargetime = rechargetime;
	}
	public String getStuId() {
		return stuId;
	}
	public void setStuId(String stuId) {
		this.stuId = stuId;
	}
	
	
	
}

