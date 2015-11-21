package com.stuman.web.jsf.bean;

import javax.faces.model.DataModel;
import javax.faces.model.ListDataModel;
import com.stuman.dao.CourselistDAO;
import com.stuman.dao.DAOFactory;
import com.stuman.domain.Courselist;

public class courseListBean {

	private CourselistDAO coulistDao;

	public CourselistDAO getCourselistDAO() {
		return DAOFactory.getInstance().createCourselistDAO();
	}
	
	private DataModel dataModel = new ListDataModel();
	
	/**
	 * ©нЁлап╠М
	 * @return
	 */
	public DataModel getCourseLists(){
		coulistDao = this.getCourselistDAO();
		dataModel.setWrappedData(coulistDao.getCourseList());
		return dataModel;
	}
	
	
	private String teacherId;
	private String courseId;
	private String roomId;
	private String startTime;
	private String endTime;
	private Courselist courselist;

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
