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
		<title>学生</title>
	</head>

	<body  background="images/image-top2.jpg" style="background-repeat:no-repeat">
		<center>
			<br><br><br><br><br><br><br><br>基本信息
		</center>
		<div align="center">
			<f:view>
			<h:form>

			   <h:commandLink value="密码修改" action="#{studentBean.preModifyStudent}"/>

				<h:dataTable id="items" 
				             value="#{studentBean.oneStudents}" 
				             var="student"
				             styleClass="order-table"
    						 headerClass="order-table-header"
    						 rowClasses="order-table-odd-row,order-table-even-row"
    						 columnClasses="list-column1-center,list-column1-center,list-column1-center,
    						 list-column1-center,list-column1-center,list-column2-center"
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
		<a href="stu_userManager.faces">&lt;&lt;Back </a>
	</body>
</html>
