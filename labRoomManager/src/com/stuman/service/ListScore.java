package com.stuman.service;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspWriter;

import com.stuman.dao.DAOFactory;
import com.stuman.dao.ComputerDAO;
import com.stuman.domain.Enrol;
import com.stuman.domain.Score;

public class ListScore {

	private ComputerDAO enrolDao;

	public ComputerDAO getEnrolDAO() {
		return DAOFactory.getInstance().createEnrolDAO();
	}

	public void list(HttpServletRequest request, JspWriter out, String stuid)
			throws Exception {
		String tmp = (String) request.getParameter("page");

		if (tmp != null) {
			listpage(request, out, Integer.parseInt(tmp), stuid);
		} else {
			listpage(request, out, 1, stuid);
		}
	}

	public void listpage(HttpServletRequest request, JspWriter out, int page, String stuid)
			throws Exception {
		String name, mark, stuscore;
		enrolDao = this.getEnrolDAO();
		List list = enrolDao.getByStuId(stuid);

		if (list == null) {
			out.print("无可选课程");
			return;
		}

		int total = list.size();
		int count = 0;
		Iterator it = list.iterator();
		Score score;

		while (count < (page - 1) * 5 && it.hasNext()) {
			it.next();
			count++;
		}

		count = 0;
		
		while (it.hasNext() && count < 5) {
			score = (Score) it.next();
			
			mark = score.getMark();
			name = score.getCourse();
			stuscore = score.getScore();
			
			out.print("<tr>" +
					"<td>" + name + "</td>" +
					"<td>" + mark+ "</td>" +
					"<td>" + stuscore + "</td>");
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
