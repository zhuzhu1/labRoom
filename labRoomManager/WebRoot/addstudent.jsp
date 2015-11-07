<%@page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*,com.stuman.domain.Student,com.stuman.dao.StudentDAO,com.stuman.dao.DAOFactory"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>


<html>
	<head>
		<title>增加学生</title>
	</head>
	<body  background="images/image-top2.jpg" style="background-repeat:no-repeat">
	<f:view>
		<p>
			<%
			
		//	String admin_id = (String) session.getAttribute("id");
		//	if (admin_id == null) {
		//		response.sendRedirect("login.faces");
		//	}

			%>
		</p>
		<p align="center">
			<br><br><br><br><br>新增学生
		</p>
		<h:form>
			<table width="49%" height="50" border="1" align="center" cellpadding="0" cellspacing="0">
				<tr>
					<td width="48%">
						学生学号
					</td>
					<td width="52%">
						<h:inputText id="id" value="#{studentBean.id}" />
					</td>
				</tr>
				<tr>
					<td width="48%">
						学生姓名
					</td>
					<td width="52%">
						<h:inputText id="name" value="#{studentBean.name}" />
					</td>
				</tr>
				<tr>
					<td>
						密码
					</td>
					<td>
						<h:inputSecret id="password" value="#{studentBean.password}" />
					</td>
				</tr>
				<tr>
					<td>
						学生所在系
					</td>
					<td>
						<h:selectOneListbox id="department" size="3" value="#{studentBean.department}">
							<f:selectItem itemLabel="计算机" itemValue="计算机"/>
							<f:selectItem itemLabel="机械系" itemValue="机械系"/>
							<f:selectItem itemLabel="电子系" itemValue="电子系"/>
							<f:selectItem itemLabel="数学系" itemValue="数学系"/>
							<f:selectItem itemLabel="管理学院" itemValue="管理学院"/>
							<f:selectItem itemLabel="人文学院" itemValue="人文学院"/>
						</h:selectOneListbox>
					</td>
				</tr>
				<tr>
					<td>
						性别
					</td>
					<td>
						<h:selectOneListbox id="sex" size="１" value="#{studentBean.sex}">
							<f:selectItem itemLabel="男" itemValue="男"/>
							<f:selectItem itemLabel="女" itemValue="女"/>
						</h:selectOneListbox>
					</td>
				</tr>
				<tr>
					<td>
						籍贯
					</td>
					<td>
						<h:selectOneListbox id="jiguan" size="3" value="#{studentBean.jiguan}">
							<f:selectItem itemLabel="北京" itemValue="北京"/>
							<f:selectItem itemLabel="上海" itemValue="上海"/>
							<f:selectItem itemLabel="陕西" itemValue="陕西"/>
							<f:selectItem itemLabel="河南" itemValue="河南"/>
							<f:selectItem itemLabel="山东" itemValue="山东"/>
							<f:selectItem itemLabel="内蒙古" itemValue="内蒙古"/>
							<f:selectItem itemLabel="河北" itemValue="河北"/>
							<f:selectItem itemLabel="江苏" itemValue="江苏"/>
							<f:selectItem itemLabel="浙江" itemValue="浙江"/>
						</h:selectOneListbox>
					</td>
				</tr>
			</table>
			<p align="center">
				<h:commandButton action="#{studentBean.addStudent}" id="Submit" value="提交"/>
			</p>
		</h:form>
		<a href="getStudent.faces">&lt;&lt;Back </a>
		</f:view>
	</body>
</html>
