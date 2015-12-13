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
		<title>上机信息</title>
	</head>
 
	<body  background="images/image-top2.jpg" style="background-repeat:no-repeat">

		<center>
			<br><br><br><br><br><br><br><br>历史模块
		</center>
		<div align="center">
			<f:view>
			<h:form>
				<h:dataTable id="items" 
				             value="#{studentBean.historyComputeruses}" 
				             var="computeruse"
							 styleClass="order-table"
    						 headerClass="order-table-header"
    						 rowClasses="order-table-odd-row,order-table-even-row"
    						 columnClasses="list-column1-center,list-column1-center,list-column2-center,
    						 list-column2-center,list-column1-center,list-column1-center,list-column1-center"
				             >
				  	  
				  <h:column>
				    <f:facet name="header">
				      <h:outputText value="实验室号"/>
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
				      <h:outputText value="上机时间"/>
				    </f:facet>
				    <h:outputText value="#{computeruse.id.startTime}"/>
				  </h:column>
				  
				  <h:column>
				    <f:facet name="header">
				      <h:outputText value="下机时间"/>
				    </f:facet>
				    <h:outputText value="#{computeruse.id.endTime}"/>
				  </h:column>
	
				   <h:column>
				    <f:facet name="header">
				      <h:outputText value="时长"/>
				    </f:facet>
				    <h:outputText value="#{computeruse.id.duration}"/>
				  </h:column>
				  
				  <h:column>
				    <f:facet name="header">
				      <h:outputText value="花费"/>
				    </f:facet>
				    <h:outputText value="#{computeruse.id.cost}"/>
				  </h:column>
				  
				  <h:column>
				    <f:facet name="header">
				      <h:outputText value="账户余额"/>
				    </f:facet>
				    <h:outputText value="88"/>
				  </h:column>
				  
				</h:dataTable> 
					</h:form>		
    </f:view>
		</div>
		<p align="center">
		</p>
		<a href="stu_useComputer.faces">&lt;&lt;Back </a>
	</body>
</html>
