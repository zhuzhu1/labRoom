package com.stuman.dao.imp;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import com.stuman.domain.Labroom;
import com.stuman.dao.LabroomDAO;
import com.stuman.dao.hibernate.HibernateUtil;

public class LabroomDAOImp implements LabroomDAO {
	
	private static Log log = LogFactory.getLog(ComputeruseDAOImp.class);
	
	public List getLabRoom() {
		// TODO Auto-generated method stub
		try {
			Session s = HibernateUtil.currentSession();
			HibernateUtil.beginTransaction();
			List results = s.createQuery("from Labroom labroom").list();
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
	
//	 获得实验室列表
	public List<Labroom> listlabroom() {
		try {
			// 获得Session
			Session s = HibernateUtil.currentSession();
			// 开始事务
			HibernateUtil.beginTransaction();
			// 执行操作
			List<Labroom> results = s.createQuery("from Labroom labroom").list();
			// 提交事务
			HibernateUtil.commitTransaction();
			// 关闭Session
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
