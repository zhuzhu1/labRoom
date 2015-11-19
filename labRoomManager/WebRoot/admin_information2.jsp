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
			<br><br><br><br><br><br><br><br>基本信息
		</center>

		<div align="center">
			<f:view>
			<h:form>
			<p align=right>
			   <h:commandLink value="密码修改" action="#{adminBean.preModifyAdmin}"/>
			</p>
				<h:dataTable id="items" 
				             value="#{adminBean.admins}" 
				             var="admin"
							 border="1"
							 width="75%"
				             >
				  <h:column>
				    <f:facet name="header">
				      <h:outputText value="工号"/>
				    </f:facet>
				    <h:outputText value="#{admin.id}"/>
				  </h:column>
				  	  
				  <h:column>
				    <f:facet name="header">
				      <h:outputText value="姓名"/>
				    </f:facet>
				    <h:outputText value="#{admin.name}"/>
				  </h:column>

				  <h:column>
				    <f:facet name="header">
				      <h:outputText value="注册时间"/>
				    </f:facet>
				    <h:outputText value="#{admin.registerTime}"/>
				  </h:column>
	
				</h:dataTable> 
					</h:form>		
    </f:view>
		</div>
		<p align="center">
		</p>
		<a href="admin_information.faces">&lt;&lt;Back </a>
	</body>
</html>
