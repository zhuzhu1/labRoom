<%@page language="java" contentType="text/html; charset=GBK"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>



<html>
	<head>
		<title>增加课程</title>

	</head>
	<body  background="images/image-top2.jpg" style="background-repeat:no-repeat">
	<f:view>
		<p>
		</p>
		<p align="center">
			<br><br><br><br><br><br><br>新增课程
		</p>
		<h:form>
			<div align="center"></div>
			<table width="37%" border="1" align="center">
				<tr>
					<td>
						课程号
					</td>
					<td>
						<h:inputText id="id" value="#{courseBean.id}" />
					</td>
				</tr>
				<tr>
					<td width="37%">
						课程名
					</td>
					<td width="63%">
						<h:inputText id="name" value="#{courseBean.name}" />
					</td>
				</tr>
				<tr>
					<td>
						学分
					</td>
					<td>
						<h:selectOneListbox id="mark" size="3" value="#{courseBean.mark}">
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
						<h:selectOneListbox id="department" size="3" value="#{courseBean.dep}">
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

						<h:selectOneListbox id="department" size="3" value="#{courseBean.prepare}">
							<f:selectItem itemLabel="语文" itemValue="语文"/>
							<f:selectItem itemLabel="数学" itemValue="数学"/>
							<f:selectItem itemLabel="英语" itemValue="英语"/>
							<f:selectItem itemLabel="音乐" itemValue="音乐"/>
						</h:selectOneListbox>

					</td>
				</tr>
			</table>
			<p align="center">
				<h:commandButton action="#{courseBean.addCourse}" id="Submit2" value="确定"/>
			</p>
			<p>
				&nbsp;
			</p>
		</h:form>
		<p>
			<a href="getcourse.faces">&lt;&lt;Back </a>
		</p>
		</f:view>
	</body>
</html>
