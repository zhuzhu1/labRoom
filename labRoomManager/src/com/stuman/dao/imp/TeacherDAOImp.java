package com.stuman.dao.imp;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.HibernateException;
import org.hibernate.Session;

import com.stuman.dao.TeacherDAO;
import com.stuman.dao.hibernate.HibernateUtil;
import com.stuman.domain.Teacher;

public class TeacherDAOImp implements TeacherDAO {

	private static Log log = LogFactory.getLog(TeacherDAOImp.class);

	public List getTeacher() {
		// TODO Auto-generated method stub
		try {
			Session s = HibernateUtil.currentSession();
			HibernateUtil.beginTransaction();
			List results = s.createQuery("from Teacher tea").list();
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

	public boolean deleteTeacherByID(String id) {
		// TODO Auto-generated method stub
		try {
			Session s = HibernateUtil.currentSession();
			HibernateUtil.beginTransaction();
			Teacher tea = (Teacher) s.load(Teacher.class, id);
			HibernateUtil.commitTransaction();
			System.out.println("delete teacheid "+tea.getId());
			HibernateUtil.beginTransaction();
			s.delete(tea);
			HibernateUtil.commitTransaction();
			HibernateUtil.closeSession();
			return true;		
		} catch (HibernateException e) {
			log.fatal(e);
		}		
		return false;
	}

	public Teacher getTeacherByID(String id) {
		// TODO Auto-generated method stub
		try {
			Session s = HibernateUtil.currentSession();
			HibernateUtil.beginTransaction();
			Teacher tea = (Teacher) s.load(Teacher.class, id);
			HibernateUtil.commitTransaction();
			HibernateUtil.closeSession();
			return tea;		
		} catch (HibernateException e) {
			log.fatal(e);
		}		
		return null;
	}

	public boolean updateTeacher(Teacher tea) {
		// TODO Auto-generated method stub
		try {
			Session s = HibernateUtil.currentSession();
			HibernateUtil.beginTransaction();
			s.update(tea);
			System.out.println("update Teacher id =" + tea.getId());
			HibernateUtil.commitTransaction();
			HibernateUtil.closeSession();
			return true;		
		} catch (HibernateException e) {
			log.fatal(e);
		}		
		return false;
	}

	public boolean saveTeacher(Teacher tea) {
		// TODO Auto-generated method stub
		try {
			Session s = HibernateUtil.currentSession();
			HibernateUtil.beginTransaction();			
			s.saveOrUpdate(tea);
			System.out.println("save Teacher id =" + tea.getId());
			HibernateUtil.commitTransaction();
			HibernateUtil.closeSession();
			return true;		
		} catch (HibernateException e) {
			log.fatal(e);
		}		
		return false;
	}

}
