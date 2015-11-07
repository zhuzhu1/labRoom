<%@page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<html>
	<head>
		<title>编辑教师信息</title>
	</head>

	<body  background="images/image-top2.jpg" style="background-repeat:no-repeat">
	<f:view>
		<%--<%
			String tea_id = request.getParameter("Teacher_id");
			System.out.println("Student_id = " + tea_id);
			String name = "", id = "", password = "", title = "";
			TeacherDAO teaDao = DAOFactory.getInstance().createTeacherDAO();
			Teacher tea = teaDao.getTeacherByID(tea_id);
			name = tea.getName();
			password = tea.getPassword();
			title = tea.getTitle();
			%>
		--%>
		<p align="center">
			<br><br><br><br><br><br><br><br>更新教师
		</p>
		<%--<h:form method="post" action="/MyStuMan/editTeacher.do?Teacher_id=<%=tea_id%>">
		
			--%>
			<h:form>
			<table width="51%" border="1" align="center">
				<tr>
					<td width="33%">
						教师姓名
					</td>
					<td width="67%">
							<h:inputText id="name" value="#{teacherBean.teacher.name}" />
					</td>
				</tr>
				<tr>
					<td>
						密码
					</td>
					<td>
							<h:inputSecret id="password" value="#{teacherBean.teacher.password}" />
					</td>
				</tr>
				<tr>
					<td>
						职称
					</td>
					<td>
							<h:selectOneListbox id="title" size="１" value="#{teacherBean.teacher.title}">
								<f:selectItem itemLabel="教授" itemValue="教授"/>
								<f:selectItem itemLabel="牛逼教授" itemValue="牛逼教授"/>
							</h:selectOneListbox>
					</td>
				</tr>
			</table>
			<p align="center">
					<h:commandButton action="#{teacherBean.editTeacher}" id="Submit" value="提交"/>
			</p>
		</h:form>
		<p>
			&nbsp;
		</p>
		<p>
			<a href="getteacher.faces">&lt;&lt;后退</a>
		</p>
		</f:view>
	</body>
</html>
