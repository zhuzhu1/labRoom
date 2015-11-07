<%@page language="java" contentType="text/html; charset=GBK"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<html>
	<head>
		<title>添加班级</title>
		<style type="text/css">

</style>
	</head>
	<body  background="images/image-top2.jpg" style="background-repeat:no-repeat">
	<f:view>
	<p>
		<%
		//String admin_id = (String) session.getAttribute("id");
		//	if (admin_id == null) {
		//		response.sendRedirect("login.faces");
		//	}
		//	String name = "";
		//	String id = "";
			%>
	</p>
	<br><br><br><p align="center">
		新增班级
	</p>
	<h:form>
		
		<table width="38%" border="1" align="center" class="Edit">
			<tr>
				<td width="29%">
					班级号
				</td>
				<td width="71%">
					<%--<input name="id" type="text" id="id2">
				--%>
				<h:inputText id="id" value="#{classesBean.id}" />
				</td>
			</tr>
			<tr>
				<td>
					教师
				</td>
				<td>
					<%--<select name="tea_id" size="1" id="tea_id">
						<option value="张三">张三	</option>
						<option value="李四">李四</option>
						<option value="王五">王五</option>
					</select>
				--%>
				
				<h:selectOneListbox id="sex" size="１" value="#{classesBean.teacher.id}">
							<f:selectItem itemLabel="张三" itemValue="1"/>
							<f:selectItem itemLabel="李四" itemValue="1"/>
							<f:selectItem itemLabel="王五" itemValue="1"/>
				</h:selectOneListbox>
				
				
				</td>
			</tr>
			<tr>
				<td>
					课程
				</td>
				<td>
					<%--<select name="cour_id" id="cour_id">
						
						<option value="1">大学语文</option>
						<option value="1">C</option>
						<option value="1">C++</option>
						
					</select>
				--%>
				
				<h:selectOneListbox id="sex" size="１" value="#{classesBean.course.id}">
							<f:selectItem itemLabel="大学语文" itemValue="1"/>
							<f:selectItem itemLabel="C" itemValue="1"/>
							<f:selectItem itemLabel="C++" itemValue="1"/>
						</h:selectOneListbox>
				
				</td>
			</tr>
			<tr>
				<td>
					教室ID
				</td>
				<td>
					<%--<select name="room_id" size="1" id="room_id">
						<option>
							10-1
						</option>
						<option>
							10-2
						</option>
						<option>
							10-3
						</option>
						<option>
							10-4
						</option>
						<option>
							10-5
						</option>
						<option>
							20-1
						</option>
						<option>
							20-2
						</option>
						<option>
							20-3
						</option>
						<option>
							20-4
						</option>
						<option>
							20-5
						</option>
						<option>
							30-1
						</option>
						<option>
							30-2
						</option>
						<option>
							30-3
						</option>
						<option>
							30-4
						</option>
						<option>
							30-5
						</option>
						<option>
							30-6
						</option>
					</select>
				--%>
				
				<h:selectOneListbox id="sex" size="１" value="#{classesBean.roomId}">
							<f:selectItem itemLabel="10-1" itemValue="10-1"/>
							<f:selectItem itemLabel="10-2" itemValue="10-2"/>
							<f:selectItem itemLabel="10-3" itemValue="10-3"/>
							<f:selectItem itemLabel="10-4" itemValue="10-4"/>
							<f:selectItem itemLabel="10-5" itemValue="10-5"/>
							<f:selectItem itemLabel="10-6" itemValue="10-6"/>
			    </h:selectOneListbox>
				
				</td>
			</tr>
			<tr>
				<td>
					上课时间
				</td>
				<td>
					<%--<select name="cour_time" size="1" id="cour_time">
						<option value="Mon_1">
							星期一/一节
						</option>
						<option value="Mon_2">
							星期一/二节
						</option>
						<option value="Mon_3">
							星期一/三节
						</option>
						<option value="Tues_1">
							星期二/一节
						</option>
						<option value="Tues_2">
							星期二/二节
						</option>
						<option value="Tues_3">
							星期二/三节
						</option>
						<option value="Wed_1">
							星期三/一节
						</option>
						<option value="Wed_2">
							星期三/二节
						</option>
						<option value="Wed_3">
							星期三/三节
						</option>
						<option value="Thurs_1">
							星期四/一节
						</option>
						<option value="Thurs_2">
							星期四/二节
						</option>
						<option value="Thurs_3">
							星期四/三节
						</option>
						<option value="Fri_1">
							星期五/一节
						</option>
						<option value="Fri_2">
							星期五/二节
						</option>
						<option value="Fri_3">
							星期五/三节
						</option>
					</select>
				--%>
				
				<h:selectOneListbox id="sex" size="１" value="#{classesBean.courTime}">
							<f:selectItem itemLabel="星期一/一节" itemValue="星期一/一节"/>
							<f:selectItem itemLabel="星期一/二节" itemValue="星期一/二节"/>
							<f:selectItem itemLabel="星期一/三节" itemValue="星期一/三节"/>
							<f:selectItem itemLabel="星期二/一节" itemValue="星期二/一节"/>
							<f:selectItem itemLabel="星期二/二节" itemValue="星期二/二节"/>
							<f:selectItem itemLabel="星期二/三节" itemValue="星期二/三节"/>
				</h:selectOneListbox>
				
				</td>
			</tr>
		</table>
		<p align="center">
			 <h:commandButton action="#{classesBean.addClasses}" id="Submit" value="提交" />
		</p>
		<p>
			&nbsp;
		</p>
	</h:form>
	<a href="getClass.faces">&lt;&lt;Back </a>
	</f:view>
	</body>
</html>
