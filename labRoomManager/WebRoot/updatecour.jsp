<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>


<html>
	<head>
		<title>修改课程</title>
	</head>
	<body  background="images/image-top2.jpg" style="background-repeat:no-repeat">
	<f:view>
		<p>
			<%--<%
			String cour_id = request.getParameter("Course_id");
			System.out.println("Course_id = " + cour_id);
			String name = "", mark = "", dep = "", prepare="";
			CourseDAO courseDao = DAOFactory.getInstance().createCourseDAO();
			Course course = courseDao.getCourseByID(cour_id);
			name = course.getName();
			dep = course.getDep();
			prepare = course.getPrepare();
			%>
		--%>
		</p>
		<h:form>
			<p align="center">
				<br><br><br><br><br>更新课程
			</p>
			<table width="37%" border="1" align="center">
				<tr>
					<td width="37%">
						课程名
					</td>
					<td width="63%">
						<h:inputText id="name" value="#{courseBean.course.name}" />
					</td>
				</tr>
				<tr>
					<td>
						学分
					</td>
					<td>
						<h:selectOneListbox id="mark" size="3" value="#{courseBean.course.mark}">
							<f:selectItem itemLabel="1" itemValue="1"/>
							<f:selectItem itemLabel="2" itemValue="2"/>
							<f:selectItem itemLabel="3" itemValue="3"/>
							<f:selectItem itemLabel="4" itemValue="4"/>
						</h:selectOneListbox>
					</td>
				</tr>
				<tr>
					<td>
						系别
					</td>
					<td>
						<h:selectOneListbox id="department" size="3" value="#{courseBean.course.dep}">
							<f:selectItem itemLabel="计算机" itemValue="计算机"/>
							<f:selectItem itemLabel="机械系" itemValue="机械系"/>
							<f:selectItem itemLabel="电子系" itemValue="电子系"/>
							<f:selectItem itemLabel="数学系" itemValue="数学系"/>
						</h:selectOneListbox>
					</td>
				</tr>
				<tr>
					<td>
						预修课
					</td>
					<td>
						<h:selectOneListbox id="department" size="3" value="#{courseBean.course.prepare}">
							<f:selectItem itemLabel="语文" itemValue="语文"/>
							<f:selectItem itemLabel="数学" itemValue="数学"/>
							<f:selectItem itemLabel="英语" itemValue="英语"/>
							<f:selectItem itemLabel="音乐" itemValue="音乐"/>
						</h:selectOneListbox>
					</td>
				</tr>
			</table>
			<p align="center">
				<h:commandButton action="#{courseBean.editCourse}" id="Submit" value="提交"/>
			</p>
		</h:form>
		<p>
			&nbsp;
		</p>
		<p>
			<a href="getcourse.faces">&lt;&lt;Back</a>
		</p>
		</f:view>
	</body>
</html>
