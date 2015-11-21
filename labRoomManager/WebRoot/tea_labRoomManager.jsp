<%@page language="java" contentType="text/html; charset=utf-8"%>

<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>

<html>
	<head>
	<style>
		.oddRow {background-color: gray}
		.evenRow {background-color: lightblue}
		</style>
		<title>机房使用情况</title>
	</head>
 
	<body  background="images/image-top2.jpg" style="background-repeat:no-repeat">

		<center>
			<br><br><br><br><br><br><br><br>机房使用情况
		</center>
		<div align="center">
			<f:view>
			<h:form>
				<h:dataTable id="items" 
				             value="#{labRoomBean.labRooms}" 
				             var="labRoom"
							 border="1"
							 width="75%"
				             >
				  	  
				  <h:column>
				    <f:facet name="header">
				      <h:outputText value="实验室编号"/>
				    </f:facet>
				    <h:outputText value="#{labRoom.id}"/>
				  </h:column>
				  
				  <h:column>
				     <f:facet name="header">
				      <h:outputText value="容纳人数"/>
				    </f:facet>
				    <h:outputText value="#{labRoom.computerNum}"/>
				  </h:column>
			
				  
				  <h:column>
				    <f:facet name="header">
				      <h:outputText value="单价"/>
				    </f:facet>
				    <h:outputText value="#{labRoom.cost}"/>
				  </h:column>
				  
				  <h:column>
				   <f:facet name="header">
				      <h:outputText value="进入"/>
				    </f:facet>
				    <h:commandLink value="进入" action="#{labRoomBean.getIn}"/>
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
