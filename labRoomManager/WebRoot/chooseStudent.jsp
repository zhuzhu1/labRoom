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
		<center>
			<br><br><br><br><br><br><br><br><br><br>选报该课程的学生
		</center>
		
		<div align="center">
			<f:view>
			<h:form>
				<h:dataTable id="items" 
				             value="#{classesBean.student}" 
				             var="enrol"
							 border="1"
							 width="75%"
				             >
				  <h:column>
				    <f:facet name="header">
				      <h:outputText value="学生"/>
				    </f:facet>
				    <h:outputText value="#{enrol.student.id}"/>
				  </h:column>
				  	  
				  <h:column>
				    <f:facet name="header">
				      <h:outputText value="姓名"/>
				    </f:facet>
				    <h:outputText value="#{enrol.student.name}"/>
				  </h:column>
				  
				  <h:column>
				     <f:facet name="header">
				      <h:outputText value="籍贯"/>
				    </f:facet>
				    <h:outputText value="#{enrol.student.jiguan}"/>
				  </h:column>
				  
				   <h:column>
				    <f:facet name="header">
				      <h:outputText value="系别"/>
				    </f:facet>
				    <h:outputText value="#{enrol.student.department}"/>
				  </h:column>
				  
				   <h:column>
				    <f:facet name="header">
				      <h:outputText value="性别"/>
				    </f:facet>
				    <h:outputText value="#{enrol.student.sex}"/>
				  </h:column>
				  
				   <h:column>
				     <f:facet name="header">
				      <h:outputText value="学分"/>
				    </f:facet>
				    <h:outputText value="#{enrol.student.mark}"/>
				  </h:column>
				
				  <h:column>
				    <f:facet name="header">
				      <h:outputText value="电话"/>
				    </f:facet>
				    <h:outputText value="#{enrol.student.tel}"/>
				  </h:column>
		
			    <h:column>
			       <f:facet name="header">
				      <h:outputText value="E-mail"/>
				    </f:facet>
				    <h:outputText value="#{enrol.student.email}"/>
				  </h:column>
	
			    <h:column>
			        <f:facet name="header">
				      <h:outputText value="接受"/>
				    </f:facet>
				    <h:commandLink value="接受" action="#{enrolBean.acceptEnrol}"/>
				  </h:column>
	
				</h:dataTable> 
			</h:form>		
    </f:view>
		</div>
		<p align="center">
		</p>
		<a href="choosestu.faces">&lt;&lt;Back </a>
	</body>
</html>
