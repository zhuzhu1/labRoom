<%@page language="java" contentType="text/html; charset=utf-8"%>

<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>

<html>
	<head>
	<style>
		.oddRow {background-color: gray}
		.evenRow {background-color: lightblue}
		</style>
		<title>课程</title>
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
			<br><br><br><br><br><br><br><br>所有课表
		</center>
		<div align="center">
			<f:view>
			<h:form>
				<h:dataTable id="items" 
				             value="#{courseListBean.courseLists}" 
				             var="courselist"
							 border="1"
							 width="75%"
				             >
				  <h:column>
				    <f:facet name="header">
				      <h:outputText value="教师编号"/>
				    </f:facet>
				    <h:outputText value="#{courselist.id.teacherId}"/>
				  </h:column>
				  	  
				  <h:column>
				    <f:facet name="header">
				      <h:outputText value="课程编号"/>
				    </f:facet>
				    <h:outputText value="#{courselist.id.courseId}"/>
				  </h:column>
				  
				  <h:column>
				     <f:facet name="header">
				      <h:outputText value="实验室编号"/>
				    </f:facet>
				    <h:outputText value="#{courselist.labroom.id}"/>
				  </h:column>
				  
				   <h:column>
				    <f:facet name="header">
				      <h:outputText value="上课开始时间"/>
				    </f:facet>
				    <h:outputText value="#{courselist.startTime}"/>
				  </h:column>
				
				  <h:column>
				    <f:facet name="header">
				      <h:outputText value="上课结束时间"/>
				    </f:facet>
				    <h:outputText value="#{courselist.endTime}"/>
				  </h:column>
	               
	             
	
				</h:dataTable> 
					</h:form>		
    </f:view>
		</div>
		<p align="center">
		</p>
		<a href="admin_courseManager.faces">&lt;&lt;Back </a>
	</body>
</html>
