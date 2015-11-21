<%@page language="java" contentType="text/html; charset=utf-8"%>

<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>

<html>
	<head>
	<style>
		.oddRow {background-color: gray}
		.evenRow {background-color: lightblue}
		</style>
		<title>管理员</title>
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
			<br><br><br><br><br><br><br><br>学生充值信息
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
		<a href="admin_userManager.faces">&lt;&lt;Back </a>
	</body>
</html>
