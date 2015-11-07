<%@page language="java" contentType="text/html; charset=GBK"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>

<html>
	<head>
		<title>所有班级</title>
	</head>
	<body  background="images/image-top2.jpg" style="background-repeat:no-repeat">
	<f:view>
		<%//String id = "", tea_id = "", cour_id = "", room_id = "", cour_time = "", cour_name = "", tea_name = "";

			%>
			<h:form>
		<div align="center">
			<br><br><br><br><br><p>
				所有班级 
			</p>
			<p align="right">
				<a href="AddClass.faces">新增班级</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</p>
			<%--<table width="75%" border="1">
				<tr>
					<td>
						班级号
					</td>
					<td>
						教师
					</td>
					<td>
						教师号
					</td>
					<td>
						课程
					</td>
					<td>
						课程号
					</td>
					<td>
						教室ID
					</td>
					<td>
						上课时间
					</td>
					<td>
						删除
					</td>
					<td>
						更新
					</td>
				</tr>
				<%ListClasses clalist = new ListClasses();
			clalist.list(request, out);
		%>
			</table>
			--%>
			
			<h:dataTable value="#{classesBean.classess}" var="classes" border="1" width="75%">
        	<h:column>
            	<h:outputText value="#{classes.id}"/>
        	</h:column>
        	<h:column>
            	<h:outputText value="#{classes.teacher.name}"/>
        	</h:column>
        	<h:column>
            	<h:outputText value="#{classes.teacher.id}"/>
        	</h:column>
        	<h:column>
            	<h:outputText value="#{classes.course.name}"/>
        	</h:column>
        	<h:column>
            	<h:outputText value="#{classes.course.id}"/>
        	</h:column>
        	<h:column>
            	<h:outputText value="#{classes.roomId}"/>
        	</h:column>
        	<h:column>
            	<h:outputText value="#{classes.courTime}"/>
        	</h:column>
        	<h:column>
			        <f:facet name="header">
				      <h:outputText value="删除"/>
				    </f:facet>
				    <h:commandLink value="删除" action="#{classesBean.deleteClasses}"/>
				  </h:column>
			    <h:column>
			        <f:facet name="header">
				      <h:outputText value="更新"/>
				    </f:facet>
				    <h:commandLink value="更新" action="#{classesBean.preEditClasses}"/>
				  </h:column>
    	</h:dataTable>
    	
			<p align="left">
				<a href="admin.faces">&lt;&lt;返回</a>
			</p>
		</div>
		</h:form>
		</f:view>
	</body>
</html>
