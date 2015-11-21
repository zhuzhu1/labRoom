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
			新增学生
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
						所属院系
					</td>
					<td>
						<h:selectOneListbox id="department" size="3" value="#{studentBean.departmentId}">
							<f:selectItem itemLabel="计算机" itemValue="11001"/>
							<f:selectItem itemLabel="机械系" itemValue="11002"/>
							<f:selectItem itemLabel="电子系" itemValue="11003"/>
							<f:selectItem itemLabel="数学系" itemValue="11004"/>
							<f:selectItem itemLabel="管理学院" itemValue="11005"/>
							<f:selectItem itemLabel="人文学院" itemValue="11006"/>
						</h:selectOneListbox>
					</td>
				</tr>
				<tr>
					<td width="48%">
						班级
					</td>
					<td width="52%">
						<h:inputText id="name" value="#{studentBean.classes}" />
					</td>
				</tr>
				<tr>
					<td width="48%">
						充值金额
					</td>
					<td width="52%">
						<h:inputText id="name" value="#{studentBean.money}" />
					</td>
				</tr>
				
			</table>
			<p align="center">
				<h:commandButton action="#{studentBean.adminAddStudent}" id="Submit" value="提交"/>
			</p>
		</h:form>
		<a href="getStudent.faces">&lt;&lt;Back </a>
		</f:view>
	</body>
</html>
