package com.stuman.dao;

public abstract class DAOFactory {
	
	private static Object initLock = new Object();

	private static String className = "com.stuman.dao.imp.HibernateDAOFactory";

	private static DAOFactory factory = null;

	public static DAOFactory getInstance() {
		if (factory == null) {
			synchronized (initLock) {
				if (factory == null) {
					// Note, the software license expressely forbids
					// tampering with this check.
					// LicenseManager.validateLicense("Jive Forums Basic",
					// "2.0");

					String classNameProp = DAOConfig
							.getProperty("DAOFactory.className");
					if (classNameProp != null) {
						className = classNameProp;
					}
					try {
						// Load the class and create an instance.
						Class c = Class.forName(className);
						factory = (DAOFactory) c.newInstance();
					} catch (Exception e) {
						System.err.println("Failed to load DAOFactory class "
								+ className
								+ ". StuMan cannot function normally.");
						e.printStackTrace();
						return null;
					}
				}
			}
		}
		return factory;
	}
	//定义抽象方法
	public abstract AdminDAO createAdminDAO();
	public abstract ComputerDAO createComputerDAO();
	public abstract ComputeruseDAO createComputeruseDAO();
	public abstract CourseDAO createCourseDAO();
	public abstract CourselistDAO createCourselistDAO();
	public abstract LabroomDAO createLabroomDAO();
	public abstract StudentDAO createStudentDAO();
	public abstract TeacherDAO createTeacherDAO();
	public abstract RechargeListDAO createRechargeListDAO();
}
