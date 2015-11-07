<%@page language="java" contentType="text/html; charset=GBK"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<html>
	<head>
		<title>教师</title>
	</head>
	<body  background="images/image-top2.jpg" style="background-repeat:no-repeat">
	<f:view>
		<p align="center"><br><br><br><br><br><br><br><br>所有教师</p>
		<p align=right>
			<a href="addteacher.faces">新增教师</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</p>
		<h:form>
		<h:dataTable value="#{teacherBean.teachers}" var="teacher" border="1" width="75%">
        	<h:column>
            	<h:outputText value="#{teacher.id}"/>
        	</h:column>
        	<h:column>
            	<h:outputText value="#{teacher.name}"/>
        	</h:column>
        	<h:column>
            	<h:outputText value="#{teacher.password}"/>
        	</h:column>
        	<h:column>
            	<h:outputText value="#{teacher.title}"/>
        	</h:column>
        	<h:column>
			        <f:facet name="header">
				      <h:outputText value="删除"/>
				    </f:facet>
				    <h:commandLink value="删除" action="#{teacherBean.deleteTeacher}"/>
				  </h:column>
			    <h:column>
			        <f:facet name="header">
				      <h:outputText value="更新"/>
				    </f:facet>
				    <h:commandLink value="更新" action="#{teacherBean.preEditTeacher}"/>
				  </h:column>
    	</h:dataTable>
    	</h:form>
		<p>
			<a href="admin.faces">&lt;&lt;返回</a>
		</p>
		</f:view>
	</body>
</html>
