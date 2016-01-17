package com.stuman.dao.imp;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.HibernateException;
import org.hibernate.Session;

import com.stuman.dao.StudentDAO;
import com.stuman.dao.hibernate.HibernateUtil;
import com.stuman.domain.Student;

public class StudentDAOImp implements StudentDAO {

	private static Log log = LogFactory.getLog(StudentDAOImp.class);

	public List getStudent() {
		// TODO Auto-generated method stub
		try {
			Session s = HibernateUtil.currentSession();
			HibernateUtil.beginTransaction();
			List results = s.createQuery("from Student stu").list();
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

	public boolean deleteStudentByID(String id) {
		// TODO Auto-generated method stub
		try {
			Session s = HibernateUtil.currentSession();
			HibernateUtil.beginTransaction();
			Student stu = (Student) s.load(Student.class, id);
			HibernateUtil.commitTransaction();
//			System.out.println(stu.getId());
			HibernateUtil.beginTransaction();
			s.delete(stu);
			HibernateUtil.commitTransaction();
			HibernateUtil.closeSession();
			return true;		
		} catch (HibernateException e) {
			log.fatal(e);
		}		
		return false;
	}

	public Student getStudentByID(String id) {
		// TODO Auto-generated method stub
		try {
			Session s = HibernateUtil.currentSession();
			HibernateUtil.beginTransaction();
			Student stu = (Student) s.load(Student.class, id);
			HibernateUtil.commitTransaction();
			HibernateUtil.closeSession();
			return stu;		
		} catch (HibernateException e) {
			log.fatal(e);
		}		
		return null;
	}

	public boolean updateStudent(Student student) {
		// TODO Auto-generated method stub
		try {
			Session s = HibernateUtil.currentSession();
			HibernateUtil.beginTransaction();
			s.update(student);
			String passwd="";
			String StuId="";
			//int newMoney=0;
			s.createQuery("update Student set password = '"+ passwd 
					+ "' where id ='" + StuId+"'").executeUpdate();
			
			//s.createQuery("update Student set meney = '"+ newMoney 
			//		+ "' where id ='" + StuId+"'").executeUpdate();
			
			System.out.println("update student id =" + student.getId());
			HibernateUtil.commitTransaction();
			HibernateUtil.closeSession();
			return true;		
		} catch (HibernateException e) {
			log.fatal(e);
		}		
		return false;
	}

	public boolean saveStudent(Student stu) {
		// TODO Auto-generated method stub
		try {
			Session s = HibernateUtil.currentSession();
			HibernateUtil.beginTransaction();			
			s.saveOrUpdate(stu);
			System.out.println("save student id =" + stu.getId());
			HibernateUtil.commitTransaction();
			HibernateUtil.closeSession();
			return true;		
		} catch (HibernateException e) {
			log.fatal(e);
		}		
		return false;
	}

}
