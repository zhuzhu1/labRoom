<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>


<html>
	<head>
		<title>修改学生信息</title>
	</head>
	<body>
	<f:view>
		<p align="center">
			更新学生
		</p>
		<h:form >
		
        <h:inputHidden id="id" value="#{studentBean.student.id}" />
			<table width="49%" height="50" border="1" align="center" cellpadding="0" cellspacing="0">
				<tr>
					<td width="48%">
						学生姓名
					</td>
					<td width="52%">
						<h:inputText id="name" value="#{studentBean.student.name}"/>
					</td>
				</tr>
				<tr>
					<td>
						密码
					</td>
					<td>
						<h:inputSecret id="password" value="#{studentBean.student.password}"/>
					</td>
				</tr>
				<tr>
					<td>
						所属院系
					</td>
					<td>
						<h:selectOneListbox id="department" size="3" value="#{studentBean.student.departmentId}" >
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
						<h:inputText id="name" value="#{studentBean.student.classes}" />
					</td>
				</tr>
				<tr>
					<td width="48%">
						充值金额
					</td>
					<td width="52%">
						<h:inputText id="name" value="#{studentBean.student.money}" />
					</td>
				</tr>
			</table>
			<p align="center">
				<h:commandButton action="#{studentBean.adminEditStudent}" id="Submit" value="提交"/>
			</p>
		</h:form>
		<p>
			<a href="getStudent.faces">&lt;&lt;Back</a>
		</p>
		</f:view>
	</body>
</html>
