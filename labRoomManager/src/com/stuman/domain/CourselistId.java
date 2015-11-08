package com.stuman.domain;

/**
 * CourselistId generated by MyEclipse Persistence Tools
 */

public class CourselistId implements java.io.Serializable {

	// Fields

	private String teacherId;

	private String courseId;

	private String roomId;

	private String stuNumber;

	// Constructors

	/** default constructor */
	public CourselistId() {
	}

	/** full constructor */
	public CourselistId(String teacherId, String courseId, String roomId,
			String stuNumber) {
		this.teacherId = teacherId;
		this.courseId = courseId;
		this.roomId = roomId;
		this.stuNumber = stuNumber;
	}

	// Property accessors

	public String getTeacherId() {
		return this.teacherId;
	}

	public void setTeacherId(String teacherId) {
		this.teacherId = teacherId;
	}

	public String getCourseId() {
		return this.courseId;
	}

	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}

	public String getRoomId() {
		return this.roomId;
	}

	public void setRoomId(String roomId) {
		this.roomId = roomId;
	}

	public String getStuNumber() {
		return this.stuNumber;
	}

	public void setStuNumber(String stuNumber) {
		this.stuNumber = stuNumber;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof CourselistId))
			return false;
		CourselistId castOther = (CourselistId) other;

		return ((this.getTeacherId() == castOther.getTeacherId()) || (this
				.getTeacherId() != null
				&& castOther.getTeacherId() != null && this.getTeacherId()
				.equals(castOther.getTeacherId())))
				&& ((this.getCourseId() == castOther.getCourseId()) || (this
						.getCourseId() != null
						&& castOther.getCourseId() != null && this
						.getCourseId().equals(castOther.getCourseId())))
				&& ((this.getRoomId() == castOther.getRoomId()) || (this
						.getRoomId() != null
						&& castOther.getRoomId() != null && this.getRoomId()
						.equals(castOther.getRoomId())))
				&& ((this.getStuNumber() == castOther.getStuNumber()) || (this
						.getStuNumber() != null
						&& castOther.getStuNumber() != null && this
						.getStuNumber().equals(castOther.getStuNumber())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result
				+ (getTeacherId() == null ? 0 : this.getTeacherId().hashCode());
		result = 37 * result
				+ (getCourseId() == null ? 0 : this.getCourseId().hashCode());
		result = 37 * result
				+ (getRoomId() == null ? 0 : this.getRoomId().hashCode());
		result = 37 * result
				+ (getStuNumber() == null ? 0 : this.getStuNumber().hashCode());
		return result;
	}

}