<%@page language="java" contentType="text/html; charset=utf-8"%>

<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>

<html>
	<head>
	<style>
		.oddRow {background-color: gray}
		.evenRow {background-color: lightblue}
		</style>
		<link href="css/table.css" rel="stylesheet" type="text/css"> 
		<title>课程</title>
	</head>
 
	<body  background="images/image-top2.jpg" style="background-repeat:no-repeat">
		<center>
			<br><br><br><br><br><br><br><br>所有课程
		</center>

		<div align="center">
			<f:view>
			<h:form>
				<h:dataTable id="items" 
				             value="#{courseBean.courses}" 
				             var="course"
							 styleClass="order-table"
    						 headerClass="order-table-header"
    						 rowClasses="order-table-odd-row,order-table-even-row"
    						 columnClasses="list-column3-center,list-column3-center,
    						 list-column3-center,list-column3-center,list-column3-center"
				             >
				  <h:column>
				    <f:facet name="header">
				      <h:outputText value="课程编号"/>
				    </f:facet>
				    <h:outputText value="#{course.id}"/>
				  </h:column>
				  	  
				  <h:column>
				    <f:facet name="header">
				      <h:outputText value="课程名称"/>
				    </f:facet>
				    <h:outputText value="#{course.name}"/>
				  </h:column>
				  
				  <h:column>
				     <f:facet name="header">
				      <h:outputText value="院系编号"/>
				    </f:facet>
				    <h:outputText value="#{course.departmentId}"/>
				  </h:column>
				  
				   <h:column>
				    <f:facet name="header">
				      <h:outputText value="学分"/>
				    </f:facet>
				    <h:outputText value="#{course.credit}"/>
				  </h:column>
				
				  <h:column>
				    <f:facet name="header">
				      <h:outputText value="上课人数"/>
				    </f:facet>
				    <h:outputText value="#{course.stuNumber}"/>
				  </h:column>
	               
	
				</h:dataTable> 
					</h:form>		
    </f:view>
		</div>
		<p align="center">
		</p>
		<a href="stu_courseManager.faces">&lt;&lt;Back </a>
	</body>
</html>
