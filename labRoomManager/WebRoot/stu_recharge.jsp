<%@page language="java" contentType="text/html; charset=utf-8"%>

<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>

<html>
	<head>
	<style>
		.oddRow {background-color: gray}
		.evenRow {background-color: lightblue}
		</style>
		<title>上机信息</title>
	</head>
 
	<body  background="images/image-top2.jpg" style="background-repeat:no-repeat">

		<center>
			<br><br><br><br><br><br><br><br>在线模块
		</center>
		<div align="center">
			<f:view>
			<h:form>
				<h:dataTable id="items" 
				             value="#{rechargelistBean.rechargeLists}" 
				             var="rechargeList"
							 border="1"
							 width="75%"
				             >
				  	  
				  <h:column>
				    <f:facet name="header">
				      <h:outputText value="学号"/>
				    </f:facet>
				    <h:outputText value="#{rechargeList.id.stuId}"/>
				  </h:column>
				  
				  <h:column>
				     <f:facet name="header">
				      <h:outputText value="充值金额"/>
				    </f:facet>
				    <h:outputText value="#{rechargeList.id.money}"/>
				  </h:column>
				  
				   <h:column>
				    <f:facet name="header">
				      <h:outputText value="充值时间"/>
				    </f:facet>
				    <h:outputText value="#{rechargeList.id.rechargetime}"/>
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
