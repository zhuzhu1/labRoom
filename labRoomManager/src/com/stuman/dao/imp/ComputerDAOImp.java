package com.stuman.dao.imp;

import java.util.List;

import javax.faces.model.DataModel;
import javax.faces.model.ListDataModel;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.HibernateException;
import org.hibernate.Session;

import com.stuman.dao.ComputerDAO;
import com.stuman.dao.hibernate.HibernateUtil;
import com.stuman.domain.Computer;
import com.stuman.domain.Labroom;
import com.stuman.domain.Student;
import java.util.Date;
import java.text.SimpleDateFormat;

public class ComputerDAOImp implements ComputerDAO{
	
	private static Log log = LogFactory.getLog(StudentDAOImp.class);
	
	public boolean updateComputer(String strId, String ip) {
		// TODO Auto-generated method stub
		try {
			Session s = HibernateUtil.currentSession();
			HibernateUtil.beginTransaction();
			//s.update(computer);
			List results = s.createQuery("from Computer as com where ip='" + ip+"'").list();
			if (results == null || results.size() <= 0) {
				return false;
			}
			s.createQuery("update Computer set status = '0' where ip='" + ip+"'").executeUpdate();
			System.out.println("update computer ip =" +((Computer)results.get(0)).getIp());
			
			//新增上机记录
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
			System.out.println(df.format(new Date()));// new Date()为获取当前系统时间
			
			s.createSQLQuery("insert into Computeruse(stuId,roomId,computerId,startTime) values('"+strId+"','"
					+((Computer)results.get(0)).getLabroom().getId()+"','"
					+((Computer)results.get(0)).getId().getId()+"',"
					+df.format(new Date())+")");
			System.out.println("insert into Computeruse success");
			HibernateUtil.commitTransaction();
			HibernateUtil.closeSession();
			return true;		
		} catch (HibernateException e) {
			log.fatal(e);
		}		
		return false;
	}
	
	public Computer getComnputerByIP(String ip) {
		// TODO Auto-generated method stub
		try {
			Session s = HibernateUtil.currentSession();
			HibernateUtil.beginTransaction();
			Computer com = (Computer) s.get(Computer.class, ip);
			HibernateUtil.commitTransaction();
			HibernateUtil.closeSession();
			return com;		
		} catch (HibernateException e) {
			log.fatal(e);
		}		
		return null;
	}
	public boolean exitFun(String stuno,String ip)
	{
//		 TODO Auto-generated method stub
		try {
			Session s = HibernateUtil.currentSession();
			HibernateUtil.beginTransaction();
			//得到roomId和computerId
			List<Computer> results = s.createQuery("from Computer as com where ip='" + ip+"'").list();
			if (results == null || results.size() <= 0) {
				return false;
			}
			//得到cost
			List<Labroom> labresults = s.createQuery("from Labroom as lab where id='" + results.get(0).getId().getRoomId()+"'").list();
			if (labresults == null || labresults.size() <= 0) {
				return false;
			}
			//更新上机记录
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
			System.out.println(df.format(new Date()));// new Date()为获取当前系统时间
			Double duration = 3.00;
			
			Double cost = labresults.get(0).getCost()*duration;
			s.createQuery("update Computeruse set endTime="+df.format(new Date())
					+"duration="+duration
					+"cost="+cost
					+"where stuId="+stuno
					+"and roomId="+results.get(0).getId().getRoomId()
					+"and computerId="+results.get(0).getId().getId()
					+"and endTime is null").executeUpdate();
			System.out.println("update Computeruse success");
			HibernateUtil.commitTransaction();
			HibernateUtil.closeSession();
			return true;		
		} catch (HibernateException e) {
			log.fatal(e);
		}		
		return false;
	}
}
