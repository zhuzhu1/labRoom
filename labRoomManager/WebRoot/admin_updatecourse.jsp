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
		
        <h:inputHidden id="id" value="#{courseBean.course.id}" />
			<table width="49%" height="50" border="1" align="center" cellpadding="0" cellspacing="0">
				<tr>
					<td width="48%">
						课程名称
					</td>
					<td width="52%">
						<h:inputText id="name" value="#{courseBean.course.name}"/>
					</td>
				</tr>
				<tr>
					<td>
						所属院系
					</td>
					<td>
						<h:selectOneListbox id="department" size="3" value="#{courseBean.course.departmentId}" >
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
						学分
					</td>
					<td width="52%">
						<h:inputText id="name" value="#{courseBean.course.credit}" />
					</td>
				</tr>
				<tr>
					<td width="48%">
						上课人数
					</td>
					<td width="52%">
						<h:inputText id="name" value="#{courseBean.course.stuNumber}" />
					</td>
				</tr>
			</table>
			<p align="center">
				<h:commandButton action="#{courseBean.editCourse}" id="Submit" value="提交"/>
			</p>
		</h:form>
		<p>
			<a href="admin_courselook.faces">&lt;&lt;Back</a>
		</p>
		</f:view>
	</body>
</html>
