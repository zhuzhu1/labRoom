package com.stuman.web.jsf.bean;

import javax.faces.application.FacesMessage;
import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpSession;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

import com.stuman.dao.DAOFactory;
import com.stuman.dao.StudentDAO;
import com.stuman.dao.ComputerDAO;
import com.stuman.dao.hibernate.HibernateUtil;
import com.stuman.domain.Admin;
import com.stuman.domain.Student;
import com.stuman.domain.Computer;
import com.stuman.domain.Teacher;
import java.net.*;

public class LoginBean {

	private static final long serialVersionUID = 1L;
	
	/**出错提示信息**/
	private String msg;

	/** password property */
	private String password;

	/** sort property */
	private String sort;

	/** username property */
	private String username;
	
	private String localip;
	private String stuid;
	// --------------------------------------------------------- Methods
	public String login(){
		
		Session s = HibernateUtil.currentSession();
		
		//JSF获取session
		FacesContext context = FacesContext.getCurrentInstance(); 
		ExternalContext ec = context.getExternalContext(); 
		HttpSession session = (HttpSession) ec.getSession(true); 
		
		//获得下拉的登陆类型
		String sort = getSort();
		String username = getUsername();
		String password = getPassword();
		
		if(sort == null || sort == "")
		{
			session.setAttribute("msg", "请选择用户类型");
			return null;
		}
		if(username == null || username == "")
		{
			session.setAttribute("msg", "请输入用户名");
			return null;
		}
		if(password == null || password == "")
		{
			session.setAttribute("msg", "请输入密码");
			return null;
		}
		int loginSort = Integer.parseInt(sort);

		String[] userlist = new String[2];
		userlist[0] = username;
		userlist[1] = password;
		//得到本机IP
		InetAddress ia=null;
		try {
			ia=ia.getLocalHost();
			localip=ia.getHostAddress();
			System.out.println("本机的ip是 ："+localip);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			HibernateUtil.beginTransaction();
			String str = new String();
			//String strip = new String();
			//strip = " from Computer as com where com.ip=:comIp";
			
			switch (loginSort) {
			case 1:
				str = " from Student as stu where stu.name=:stuName and stu.password=:stuPassword";
				Query query = s.createQuery(str);
				
				System.out.println(username + "  " + password);
				query.setString("stuName", username);
				query.setString("stuPassword", password);
				if (query.list().size() > 0) {
					session.setAttribute("stuid", ((Student) query.list().get(0)).getId());
					stuid=((Student) query.list().get(0)).getId();
					//根据IP，将电脑置为被占用状态
					//if(modifyComputer(((Student) query.list().get(0)).getId()))
					//{
						s.close();
						return "studentLoginsuccess";
					//}
				} else
					break;
			case 2:
				str = " from Teacher tea where tea.name = '" + username
						+ "' and tea.password ='" + password + "'";
				if (s.createQuery(str).list().size() > 0) {
					session.setAttribute("teaid", ((Teacher) s.createQuery(str)
							.list().get(0)).getId());
					s.close();
					return "teacherLoginsuccess";
				} else
					break;
			case 3:
				str = " from Admin admin where admin.name = '" + username
						+ "' and admin.password ='" + password + "'";
				System.out.println(username + "  " + password);
				if (s.createQuery(str).list().size() > 0) {
					session.setAttribute("adminid", ((Admin) s.createQuery(str)
							.list().get(0)).getId());
					s.close();
					return "adminLoginsuccess";
				} else
					break;
			default:
				break;
			}
		} catch (HibernateException e) {
			e.printStackTrace();
		} finally {
			s.close();
		}
		//msg="登陆失败";
		session.setAttribute("msg", "用户名或密码错误");
		return null;
	}

	public boolean modifyComputer(String stuId){

//		JSF获取session
		FacesContext context = FacesContext.getCurrentInstance(); 
		ExternalContext ec = context.getExternalContext(); 
		HttpSession session = (HttpSession) ec.getSession(true); 
		
		ComputerDAO comDao = DAOFactory.getInstance().createComputerDAO();
		//Computer com = comDao.getComnputerByIP(localip);
		//com.setStatus("0");
		if(comDao.updateComputer(stuId,localip)){
			session.setAttribute("msg", "修改状态成功！");
			return true;
		}	
		
		return false;
	}
	
	public boolean exitFun(){

//		JSF获取session
		FacesContext context = FacesContext.getCurrentInstance(); 
		ExternalContext ec = context.getExternalContext(); 
		HttpSession session = (HttpSession) ec.getSession(true); 
		
		ComputerDAO comDao = DAOFactory.getInstance().createComputerDAO();
		//Computer com = comDao.getComnputerByIP(localip);
		//com.setStatus("0");
		if(comDao.exitFun(stuid,localip)){
			session.setAttribute("msg", "修改状态成功！");
			return true;
		}	
		
		return false;
	}
	
	/*public String addComUseRecord(){
        //JSF获取session
		FacesContext context = FacesContext.getCurrentInstance(); 
		ExternalContext ec = context.getExternalContext(); 
		HttpSession session = (HttpSession) ec.getSession(true); 
		//获得DAO实例
		stuDao = this.getStudentDAO();
		if(this.password == "" || this.student.getPassword() == "" || !this.password.equals(this.student.getPassword()))
		{
			session.setAttribute("msg", "密码为空，两次输入密码不一样！");
			return null;
		}
		if(stuDao.updateStudent(getStudent())){
			session.setAttribute("msg", "密码修改成功！");
			return null;
		}	
		
		return null;
	}
	*/
	/**
	 * Returns the password.
	 * 
	 * @return String
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * Set the password.
	 * 
	 * @param password
	 *            The password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * Returns the sort.
	 * 
	 * @return String
	 */
	public String getSort() {
		return sort;
	}

	/**
	 * Set the sort.
	 * 
	 * @param sort
	 *            The sort to set
	 */
	public void setSort(String sort) {
		this.sort = sort;
	}

	/**
	 * Returns the username.
	 * 
	 * @return String
	 */
	public String getUsername() {
		return username;
	}

	/**
	 * Set the username.
	 * 
	 * @param username
	 *            The username to set
	 */
	public void setUsername(String username) {
		this.username = username;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

}
