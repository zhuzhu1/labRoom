package com.stuman.service;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspWriter;

import com.stuman.dao.DAOFactory;
import com.stuman.dao.CourseDAO;
import com.stuman.domain.Course;

public class ListCourse {

	private CourseDAO couDao;

	public CourseDAO getCourseDAO() {
		return DAOFactory.getInstance().createCourseDAO();
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

		String name = "", id = "", prepare = "", dep = "", mark = "";
		couDao = this.getCourseDAO();
		List list = couDao.getCourse();

		if (list == null) {
			out.print("尚无课程信息");
			return;
		}

		int total = list.size();
		int count = 0;
		Iterator it = list.iterator();
		Course cour;

		while (count < (page - 1) * 5 && it.hasNext()) {
			it.next();
			count++;
		}

		count = 0;
		
		while (it.hasNext() && count < 5) {
			cour = (Course) it.next();

			id = cour.getId();
			name = cour.getName();
			if(cour.getMark()!=null)
				mark = cour.getMark().toString();
			else
				mark = "0";
			prepare = cour.getPrepare();
			dep = cour.getDep();
			
			out.print("<tr><td>" + id + "</td><td>" + name + "</td><td>"
					+ mark + "</td><td>" + prepare	+ "</td><td>" + dep + "</td>");
			out.print("<td><a href=deleteCourse.do?Course_id="
					+ cour.getId() + ">删除</a></td><td>");
			out.print("<a href=updatecour.jsp?Course_id="
					+ cour.getId() + ">编辑</a></td></tr>");

			count++;
		}
		out.print("<tr><td colspan=5 align=center>");
		out.print("<table width=50% border=0 cellspacing=0><tr>");
		if ((page - 1) > 0)
			out
					.print("<td width=50% colspan='5'> <a href=getcourse.jsp?page="
							+ (page - 1) + ">上一页</a>　&nbsp;&nbsp;&nbsp;&nbsp;");
		else
			out.print("<td width=50% colspan='5'>上一页</td>");
		if ((page - 1) < (total / 5))
			out.print("<td width=50% colspan='5'><a href=getcourse.jsp?page="
					+ (page + 1) + ">下一页</a></td>");
		else
			out.print("<td width=50%  colspan='5'>下一页</td>");
		out.print("</tr></table></td></tr>");
		out.print("</table>");
	}
}
