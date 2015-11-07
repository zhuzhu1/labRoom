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
			<a href="addstudent.faces">新加学生</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</p>
		<div align="center">
			<f:view>
			<h:form>
				<h:dataTable id="items" 
				             value="#{studentBean.students}" 
				             var="student"
							 border="1"
							 width="75%"
				             >
				  <h:column>
				    <f:facet name="header">
				      <h:outputText value="学生"/>
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
				      <h:outputText value="密码"/>
				    </f:facet>
				    <h:outputText value="#{student.password}"/>
				  </h:column>
				  
				  <h:column>
				     <f:facet name="header">
				      <h:outputText value="籍贯"/>
				    </f:facet>
				    <h:outputText value="#{student.jiguan}"/>
				  </h:column>
				  
				   <h:column>
				    <f:facet name="header">
				      <h:outputText value="系别"/>
				    </f:facet>
				    <h:outputText value="#{student.department}"/>
				  </h:column>
				  
				   <h:column>
				    <f:facet name="header">
				      <h:outputText value="性别"/>
				    </f:facet>
				    <h:outputText value="#{student.sex}"/>
				  </h:column>
				  
				   <h:column>
				     <f:facet name="header">
				      <h:outputText value="学分"/>
				    </f:facet>
				    <h:outputText value="#{student.mark}"/>
				  </h:column>
				
				  <h:column>
				    <f:facet name="header">
				      <h:outputText value="电话"/>
				    </f:facet>
				    <h:outputText value="#{student.tel}"/>
				  </h:column>
		
			    <h:column>
			       <f:facet name="header">
				      <h:outputText value="E-mail"/>
				    </f:facet>
				    <h:outputText value="#{student.email}"/>
				  </h:column>
				
				<h:column>
				   <f:facet name="header">
				      <h:outputText value="删除"/>
				    </f:facet>
				    <h:commandLink value="删除" action="#{studentBean.delStudent}"/>
				  </h:column>
	
			    <h:column>
			        <f:facet name="header">
				      <h:outputText value="更新"/>
				    </f:facet>
				    <h:commandLink value="更新" action="#{studentBean.preUpdateStudent}"/>
				  </h:column>
	
				</h:dataTable> 
					</h:form>		
    </f:view>
		</div>
		<p align="center">
		</p>
		<a href="admin.faces">&lt;&lt;Back </a>
	</body>
</html>
