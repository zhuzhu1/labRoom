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
			<br><br><br><br><br><br><br><br>基本信息
		</center>

		<div align="center" style="width: 90%">
			<f:view>
			<h:form>
			<p align=right>
			   <h:commandLink value="密码修改" action="#{studentBean.preModifyStudent}"/>
			</p>
				<h:dataTable id="items" 
				             value="#{studentBean.students}" 
				             var="student"
							 border="1"
							 width="65%"
				             >
				  <h:column>
				    <f:facet name="header">
				      <h:outputText value="学号"/>
				    </f:facet>
				    <h:outputText value="#{student.id}"/>
				  </h:column>
				  	  
				  <h:column>
				    <f:facet name="header">
				      <h:outputText value="姓名"/>
				    </f:facet>
				    <h:outputText value="#{student.name}"/>
				  </h:column>
				  
				  <h:column>
				     <f:facet name="header">
				      <h:outputText value="院系编号"/>
				    </f:facet>
				    <h:outputText value="#{student.departmentId}"/>
				  </h:column>
				  
				   <h:column>
				    <f:facet name="header">
				      <h:outputText value="班级"/>
				    </f:facet>
				    <h:outputText value="#{student.classes}"/>
				  </h:column>
				  
				   <h:column>
				    <f:facet name="header">
				      <h:outputText value="账户余额"/>
				    </f:facet>
				    <h:outputText value="#{student.money}"/>
				  </h:column>
				
				  <h:column>
				    <f:facet name="header">
				      <h:outputText value="注册时间"/>
				    </f:facet>
				    <h:outputText value="#{student.registerTime}"/>
				  </h:column>
	
				</h:dataTable> 
					</h:form>		
    </f:view>
		</div>
		<p align="center">
		</p>
		<a href="stu_userManager.faces">&lt;&lt;Back </a>
	</body>
</html>
