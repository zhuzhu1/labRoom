package com.stuman.dao.imp;

import java.util.List;

import com.stuman.dao.ComputeruseDAO;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.HibernateException;
import org.hibernate.Session;

import com.stuman.dao.hibernate.HibernateUtil;
import com.stuman.domain.Computeruse;

public class ComputeruseDAOImp implements ComputeruseDAO{
	
	private static Log log = LogFactory.getLog(ComputeruseDAOImp.class);
	
	public List getComputerUse() {
		// TODO Auto-generated method stub
		try {
			Session s = HibernateUtil.currentSession();
			HibernateUtil.beginTransaction();
			List results = s.createQuery("from Computeruse comuse").list();
			HibernateUtil.commitTransaction();
			HibernateUtil.closeSession();
			if (results != null && results.size() > 0) {
				return results;
			}
		} catch (HibernateException e) {
			log.fatal(e);
		}
		return null;
	}
}
