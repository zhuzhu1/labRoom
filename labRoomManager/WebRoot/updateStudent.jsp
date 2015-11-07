<%@page language="java" contentType="text/html; charset=GBK"%>
<%@page import="java.sql.*,com.stuman.domain.*,com.stuman.dao.*" errorPage="errorpage.faces"%>
<html>
	<head>
		<title>编辑学生信息</title>
	</head>

	<body  background="images/image-top2.jpg" style="background-repeat:no-repeat">
		<%String stu_id = request.getParameter("student_id");
			String name = "", id = "", password = "", jiguan = "", dep = "", sex = "", tel = "", mail = "", mark = "";
			StudentDAO stuDao = DAOFactory.getInstance().createStudentDAO();
			Student stu = stuDao.getStudentByID(stu_id);
			try {
				String s = request.getParameter("password");
				if (s == null || s.equals(""))
					throw new Exception("错误，密码不能为空！！");
			//	String stu_id = (String) session.getAttribute("id");
				if (stu_id == null) {
					response.sendRedirect("login.faces");
				}
				update.setId(stu_id);
				update.updateStudent();
				String d = update.getId();
				out.print("学生号:  " + d + "<br>");
				String a = update.getPassword();
				out.print("您的新密码:  " + a + "<br>");
				String b = update.getJiguan();
				out.print("您的电话:  " + b + "<br>");
				String c = update.getDep();
				out.print("E_mail:  " + c + "<br>");

			%>
		<p> 
			<a href="student.faces"><br></a></p><p><a href="student.faces"><br></a></p><p><a href="student.faces"><br></a></p><p><a href="student.faces"><br></a></p><p><a href="student.faces">&lt;&lt;您已经更新成功,请返回</a> 
		</p><p>
			<%} catch (Exception e) {
				out.print(e.toString());
			}

		%>
	</body>

</html>
