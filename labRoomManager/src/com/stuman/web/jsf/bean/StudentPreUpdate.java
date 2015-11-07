package com.stuman.web.jsf.bean;

import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
import javax.faces.event.PhaseEvent;
import javax.faces.event.PhaseId;
import javax.faces.event.PhaseListener;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.beanutils.BeanUtils;

import com.stuman.dao.DAOFactory;
import com.stuman.dao.StudentDAO;
import com.stuman.domain.Student;

/**
 * 
 * @author Vikings
 * 
 */
public class StudentPreUpdate implements PhaseListener {

	public PhaseId getPhaseId() {
		return PhaseId.RESTORE_VIEW;
	}

	public void beforePhase(PhaseEvent event) {

	}

	public void afterPhase(PhaseEvent event) {
		FacesContext fc = event.getFacesContext();

		// Check to see if they are on the login page.
		boolean studentPreUpdatePage = fc.getViewRoot().getViewId()
				.lastIndexOf("updatestu") > -1 ? true : false;

		if (studentPreUpdatePage) {
			ExternalContext ec = fc.getExternalContext();
			HttpServletRequest request = (HttpServletRequest) ec.getRequest();
			String stu_id = request.getParameter("student_id");
			System.out.println("Student_id = " + stu_id);

			if (null != stu_id) {
				StudentDAO stuDao = DAOFactory.getInstance().createStudentDAO();
				Student stu = stuDao.getStudentByID(stu_id);

				StudentBean bean = new StudentBean();
				try {
					BeanUtils.copyProperties(bean, stu);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
	}

}
