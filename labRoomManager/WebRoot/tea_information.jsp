<%@page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>

<html>
	<head>
	<style>
		.oddRow {background-color: gray}
		.evenRow {background-color: lightblue}
		</style>
		<title>学生</title>
	</head>
 
	<body  background="images/image-top2.jpg" style="background-repeat:no-repeat">
		<%/*
		String admin_id = (String) session.getAttribute("id");
			if (admin_id == null) {
				response.sendRedirect("login.faces");
			}

			int mark = 0;
*/
			%>
		<center>
			<br><br><br><br><br><br><br><br>所有学生
		</center>
		<p align=right>
			<a href="tea_passwordModify.faces">修改密码</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</p>
		<div align="center">
			<f:view>
			<h:form>
				<h:dataTable id="items" 
				             value="#{teacherBean.teachers}" 
				             var="teacher"
							 border="1"
							 width="75%"
				             >
				  <h:column>
				    <f:facet name="header">
				      <h:outputText value="教师编号"/>
				    </f:facet>
				    <h:outputText value="#{teacher.id}"/>
				  </h:column>
				  	  
				  <h:column>
				    <f:facet name="header">
				      <h:outputText value="姓名"/>
				    </f:facet>
				    <h:outputText value="#{teacher.name}"/>
				  </h:column>
				  
				   <h:column>
				     <f:facet name="header">
				      <h:outputText value="密码"/>
				    </f:facet>
				    <h:outputText value="#{teacher.password}"/>
				  </h:column>
				  
				   <h:column>
				    <f:facet name="header">
				      <h:outputText value="注册时间"/>
				    </f:facet>
				    <h:outputText value="#{teacher.registerTime}"/>
				  </h:column>
	
				</h:dataTable> 
					</h:form>		
    </f:view>
		</div>
		<p align="center">
		</p>
		<a href="tea_userManager.faces">&lt;&lt;Back </a>
	</body>
</html>
