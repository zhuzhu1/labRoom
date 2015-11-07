<%@page language="java" contentType="text/html; charset=GBK"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>

<html>
	<head>
		<title>所有课程</title>
	</head>
	<body  background="images/image-top2.jpg" style="background-repeat:no-repeat">
	<f:view>
		<div align="center">
			<br><br><br><br><br><br><br><br><br>所有课程 
			<p align="right">
				<a href="Addcourse.faces">新增课程</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</p>
		</div>
		<h:form>
		<div align="center">
			<%--<table width="75%" border="1">
				<tr>
					<td>
						课程号
					</td>
					<td>
						课程名
					</td>
					<td>
						学分
					</td>
					<td>
						预修课
					</td>
					<td>
						所在系
					</td>
					<td>
						删除
					</td>
					<td>
						更新
					</td>
				</tr>
				<%
				ListCourse courlist = new ListCourse();
			courlist.list(request, out);
		%>
			</table>

		--%>
		<h:dataTable value="#{courseBean.courses}" var="course" border="1" width="75%">
        	<h:column>
        	    <f:facet name="header">
				    <h:outputText value="课号"/>
			    </f:facet>
            	<h:outputText value="#{course.id}"/>
        	</h:column>
        	<h:column>
        	    <f:facet name="header">
				    <h:outputText value="课名"/>
				</f:facet>
            	<h:outputText value="#{course.name}"/>
        	</h:column>
        	<h:column>
        	    <f:facet name="header">
				    <h:outputText value="学分"/>
				</f:facet>
            	<h:outputText value="#{course.mark}"/>
        	</h:column>
        	<h:column>
        	    <f:facet name="header">
				    <h:outputText value="预修课"/>
				</f:facet>
            	<h:outputText value="#{course.prepare}"/>
        	</h:column>
        	<h:column>
        	    <f:facet name="header">
				    <h:outputText value="所在系"/>
				</f:facet>
            	<h:outputText value="#{course.dep}"/>
        	</h:column>
        	<h:column>
			        <f:facet name="header">
				      <h:outputText value="删除"/>
				    </f:facet>
				    <h:commandLink value="删除" action="#{courseBean.deleteCourse}"/>
				  </h:column>
			    <h:column>
			        <f:facet name="header">
				      <h:outputText value="更新"/>
				    </f:facet>
				    <h:commandLink value="更新" action="#{courseBean.preEditCourse}"/>
				  </h:column>
    	</h:dataTable>
		
		
		</div>
		</h:form>
		<p align="left">
			<a href="admin.faces">&lt;&lt;返回</a>
		</p>
		</f:view>
	</body>
</html>
