package com.stuman.dao.imp;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.HibernateException;
import org.hibernate.Session;

import com.stuman.dao.AdminDAO;
import com.stuman.dao.hibernate.HibernateUtil;
import com.stuman.domain.Admin;

public class AdminDAOImp implements AdminDAO {

	private static Log log = LogFactory.getLog(AdminDAOImp.class);

	public List getAdmin() {
		// TODO Auto-generated method stub
		try {
			Session s = HibernateUtil.currentSession();
			HibernateUtil.beginTransaction();
			List results = s.createQuery("from Admin adm").list();
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

	public boolean deleteAdminByID(String id) {
		// TODO Auto-generated method stub
		try {
			Session s = HibernateUtil.currentSession();
			HibernateUtil.beginTransaction();
			Admin admin = (Admin) s.load(Admin.class, id);
			System.out.println(admin.getId());
			s.delete(admin);
			HibernateUtil.commitTransaction();
			HibernateUtil.closeSession();
			return true;		
		} catch (HibernateException e) {
			log.fatal(e);
		}		
		return false;
	}

	public Admin getAdminByID(String id) {
		// TODO Auto-generated method adminb
		try {
			Session s = HibernateUtil.currentSession();
			HibernateUtil.beginTransaction();
			Admin admin = (Admin) s.load(Admin.class, id);
			HibernateUtil.commitTransaction();
			HibernateUtil.closeSession();
			return admin;		
		} catch (HibernateException e) {
			log.fatal(e);
		}		
		return null;
	}

	public boolean updateAdmin(Admin Admin) {
		// TODO Auto-generated method adminb
		try {
			Session s = HibernateUtil.currentSession();
			HibernateUtil.beginTransaction();
			s.update(Admin);
			System.out.println("update Admin id =" + Admin.getId());
			HibernateUtil.commitTransaction();
			HibernateUtil.closeSession();
			return true;		
		} catch (HibernateException e) {
			log.fatal(e);
		}		
		return false;
	}

	public boolean saveAdmin(Admin admin) {
		// TODO Auto-generated method adminb
		try {
			Session s = HibernateUtil.currentSession();
			HibernateUtil.beginTransaction();			
			s.saveOrUpdate(admin);
			System.out.println("save Admin id =" + admin.getId());
			HibernateUtil.commitTransaction();
			HibernateUtil.closeSession();
			return true;		
		} catch (HibernateException e) {
			log.fatal(e);
		}		
		return false;
	}

}
