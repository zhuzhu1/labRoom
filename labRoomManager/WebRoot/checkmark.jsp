<%@page language="java" contentType="text/html; charset=GBK"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%> 
<html>
	<head>
		<title>查看成绩</title>
	</head>
	<%
	String stuid = (String)session.getAttribute("stuid");
			%>
	<body  background="images/image-top2.jpg" style="background-repeat:no-repeat">
		<br><br><br><br><br><br><br><p align="center">
			您所有的成绩
		</p>
		<!-- <table border="1" align="center" width='85%'>
			<tr>
				<td width="40%">
					课程名称
				</td>
				<td width="30%">
					学分
				</td>
				<td width="30%">
					成绩
				</td>
			</tr>
			<p>
		</table> -->
		<f:view>
		<h:form>
		<h:dataTable value="#{enrolBean.enrols}" var="enrol" border="1" width="75%">
        	<h:column>
        	    <f:facet name="header">
				      <h:outputText value="课程名称"/>
				 </f:facet>
            	<h:outputText value="#{enrol.id}"/>
        	</h:column>
        	<h:column>
                <f:facet name="header">
				      <h:outputText value="学分"/>
				</f:facet>
            	<h:outputText value="#{enrol.classes}"/>
        	</h:column>
        	<h:column>
        	     <f:facet name="header">
				      <h:outputText value="成绩"/>
				 </f:facet>
            	<h:outputText value="#{enrol.score}"/>
        	</h:column>
        	
    	</h:dataTable>
		</h:form>
		</f:view>
		<p>
			<a href="student.faces">&lt;&lt;Back </a>
		</p>
	</body>
</html>
