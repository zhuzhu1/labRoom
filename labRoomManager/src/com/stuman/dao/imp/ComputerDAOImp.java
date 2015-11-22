package com.stuman.dao.imp;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.HibernateException;
import org.hibernate.Session;

import com.stuman.dao.ComputerDAO;
import com.stuman.dao.hibernate.HibernateUtil;
import com.stuman.domain.Computer;
import com.stuman.domain.Student;

public class ComputerDAOImp implements ComputerDAO{
	
	private static Log log = LogFactory.getLog(StudentDAOImp.class);
	
	public boolean updateComputer(Computer computer) {
		// TODO Auto-generated method stub
		try {
			Session s = HibernateUtil.currentSession();
			HibernateUtil.beginTransaction();
			s.update(computer);
			System.out.println("update computer id =" + computer.getId());
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
	
}
