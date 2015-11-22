package com.stuman.web.jsf.bean;

import java.util.*;
import javax.faces.model.DataModel;
import javax.faces.model.ListDataModel;
import com.stuman.dao.CourselistDAO;
import com.stuman.dao.LabroomDAO;
import com.stuman.dao.DAOFactory;
import com.stuman.domain.Courselist;
import com.stuman.domain.Labroom;

public class courseListBean {

	private CourselistDAO coulistDao;

	public CourselistDAO getCourselistDAO() {
		return DAOFactory.getInstance().createCourselistDAO();
	}
	public LabroomDAO getLabroomDAO() {
		return DAOFactory.getInstance().createLabroomDAO();
	}
	
	private DataModel dataModel = new ListDataModel();
	
	/**
	 * 课程列表
	 * @return
	 */
	public DataModel getCourseLists(){
		coulistDao = this.getCourselistDAO();
		dataModel.setWrappedData(coulistDao.getCourseList());
		return dataModel;
	}
	/**
	 * 可用机房列表
	 * @return
	 */
	public List<Labroom> getLabrooms() {
		return labrooms;
	}
	
	public String checkLabroom() {
		LabroomDAO labDao= getLabroomDAO();
		labrooms=labDao.listlabroom();
		return "success";
	}
	
	public boolean arrangeCourse(String courseno,String labno){
		/*SelectCourseDAO selDao=getSelectCourseDAO();
		SelectcourseId courseid=new SelectcourseId(sno,cno); 
		Selectcourse sltCourse = new Selectcourse(courseid,teacher);
	
		if(selDao.addSelectCourse(sltCourse))
			return true;*/
		return false;
	}
	
	private String teacherId;
	private String courseId;
	private String roomId;
	private String startTime;
	private String endTime;
	private Courselist courselist;
	private List<Labroom> labrooms=new ArrayList<Labroom>();
	
	public String getCourseId() {
		return courseId;
	}
	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}
	public Courselist getCourselist() {
		return courselist;
	}
	public void setCourselist(Courselist courselist) {
		this.courselist = courselist;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public String getRoomId() {
		return roomId;
	}
	public void setRoomId(String roomId) {
		this.roomId = roomId;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getTeacherId() {
		return teacherId;
	}
	public void setTeacherId(String teacherId) {
		this.teacherId = teacherId;
	}

	
	

}
