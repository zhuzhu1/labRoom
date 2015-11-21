<%@page language="java" contentType="text/html; charset=utf-8"%>

<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>

<html>
	<head>
	<style>
		.oddRow {background-color: gray}
		.evenRow {background-color: lightblue}
		</style>
		<title>电脑使用情况</title>
	</head>
 
	<body  background="images/image-top2.jpg" style="background-repeat:no-repeat">

		<center>
			<br><br><br><br><br><br><br><br>电脑使用情况
		</center>
		<div align="center">
			<f:view>
			<h:form>
				<h:dataTable id="items" 
				             value="#{computeruseBean.computeruses}" 
				             var="computeruse"
							 border="1"
							 width="75%"
				             >
				  	  
				  <h:column>
				    <f:facet name="header">
				      <h:outputText value="实验室编号"/>
				    </f:facet>
				    <h:outputText value="#{computeruse.id.roomId}"/>
				  </h:column>
				  
				  <h:column>
				     <f:facet name="header">
				      <h:outputText value="电脑编号"/>
				    </f:facet>
				    <h:outputText value="#{computeruse.id.computerId}"/>
				  </h:column>
				  
				  <h:column>
				    <f:facet name="header">
				      <h:outputText value="学号"/>
				    </f:facet>
				    <h:outputText value="#{computeruse.id.stuId}"/>
				  </h:column>
				  
				  <h:column>
				    <f:facet name="header">
				      <h:outputText value="上机时间"/>
				    </f:facet>
				    <h:outputText value="#{computeruse.id.startTime}"/>
				  </h:column>
				  
				   <h:column>
				    <f:facet name="header">
				      <h:outputText value="时长"/>
				    </f:facet>
				    <h:outputText value="#{computeruse.id.duration}"/>
				  </h:column>
				  
				</h:dataTable> 
					</h:form>		
    </f:view>
		</div>
		<p align="center">
		</p>
		<a href="admin_labRoomManager.faces">&lt;&lt;Back </a>
	</body>
</html>
