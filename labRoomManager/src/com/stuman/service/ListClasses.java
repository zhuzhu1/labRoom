package com.stuman.service;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspWriter;

import com.stuman.dao.DAOFactory;
import com.stuman.dao.ClassesDAO;
import com.stuman.domain.Classes;

public class ListClasses {

	private ClassesDAO stuDao;

	public ClassesDAO getClassesDAO() {
		return DAOFactory.getInstance().createClassesDAO();
	}

	// 异常还没有处理
	public void list(HttpServletRequest request, JspWriter out)
			throws Exception {
		String tmp = (String) request.getParameter("page");

		if (tmp != null) {
			listpage(request, out, Integer.parseInt(tmp));
		} else {
			listpage(request, out, 1);
		}
	}

	public void listpage(HttpServletRequest request, JspWriter out, int page)
			throws Exception {

		String tea = "", id = "", tea_id = "", cour = "", cour_id = "", room = "", time = "";
		stuDao = this.getClassesDAO();
		List list = stuDao.getClasses();

		if (list == null) {
			out.print("尚无学生信息");
			return;
		}

		int total = list.size();
		int count = 0;
		Iterator it = list.iterator();
		Classes stu;
		// User user;
		// OrderItem item;
		// Flight flight;

		while (count < (page - 1) * 5 && it.hasNext()) {
			it.next();
			count++;
		}

		count = 0;
		
		while (it.hasNext() && count < 5) {
			stu = (Classes) it.next();

			id = stu.getId();
			tea = stu.getTeacher().getName();
			tea_id = stu.getTeacher().getId();
			cour = stu.getCourse().getName();
			cour_id = stu.getCourse().getId();
			room = stu.getRoomId();			
			time = stu.getCourTime();

			out.print("<tr><td>" + id + "</td><td>" + tea + "</td><td>"
					+ tea_id + "</td><td>" + cour + "</td><td>" + cour_id
					+ "</td><td>" + room + "</td><td>" + time + "</td>");
			out.print("<td><a href=deleteClasses.do?Classes_id="
					+ stu.getId() + ">删除</a></td><td>");
			out.print("<a href=updateClass.jsp?Classes_id="
					+ stu.getId() + ">编辑</a></td></tr>");

			count++;
		}
		out.print("<tr><td colspan=5 align=center>");
		out.print("<table width=50% border=0 cellspacing=0><tr>");
		if ((page - 1) > 0)
			out
					.print("<td width=50% colspan='5'> <a href=getClasses.jsp?page="
							+ (page - 1) + ">上一页</a>　&nbsp;&nbsp;&nbsp;&nbsp;");
		else
			out.print("<td width=50% colspan='5'>上一页</td>");
		if ((page - 1) < (total / 5))
			out.print("<td width=50% colspan='5'><a href=get .jsp?page="
					+ (page + 1) + ">下一页</a></td>");
		else
			out.print("<td width=50%  colspan='5'>下一页</td>");
		out.print("</tr></table></td></tr>");
		out.print("</table>");
	}

}
