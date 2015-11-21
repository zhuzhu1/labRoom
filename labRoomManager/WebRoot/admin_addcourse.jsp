<%@page language="java" contentType="text/html; charset=utf-8"%>

<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>


<html>
	<head>
		<title>增加学生</title>
	</head>
	<body>
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
			新增课程
		</p>
		<h:form>
			<table width="49%" height="50" border="1" align="center" cellpadding="0" cellspacing="0">
				<tr>
					<td width="48%">
						课程编号
					</td>
					<td width="52%">
						<h:inputText id="id" value="#{courseBean.id}" />
					</td>
				</tr>
				<tr>
					<td width="48%">
						课程名称
					</td>
					<td width="52%">
						<h:inputText id="name" value="#{courseBean.name}" />
					</td>
				</tr>
				<tr>
					<td>
						所属院系
					</td>
					<td>
						<h:inputSecret id="password" value="#{courseBean.departmentId}" />
					</td>
				</tr>
				<tr>
					<td>
						学分
					</td>
					<td>
						<h:inputSecret id="password" value="#{courseBean.credit}" />
					</td>
				</tr>
				<tr>
					<td width="48%">
						上课人数
					</td>
					<td width="52%">
						<h:inputText id="name" value="#{courseBean.stuNumber}" />
					</td>
				</tr>
				
				
			</table>
			<p align="center">
				<h:commandButton action="#{courseBean.addCourse}" id="Submit" value="提交"/>
			</p>
		</h:form>
		<a href="admin_courselook.faces">&lt;&lt;Back </a>
		</f:view>
	</body>
</html>
