<%@page language="java" contentType="text/html; charset=utf-8"%>

<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>


<html>
	<head>
		<title>修改密码</title>
	</head>
	<body>
	<f:view>
		<p align="center">
			修改密码
		</p>
		<h:form>
			<table width="49%" height="50" border="1" align="center" cellpadding="0" cellspacing="0">
				<tr>
					<td>
						新密码
					</td>
					<td>
						<h:inputSecret id="password" value="#{teacherBean.teacher.password}" />
					</td>
				</tr>
				<tr>
					<td>
						确认密码
					</td>
					<td>
						<h:inputSecret id="password1" value="#{teacherBean.password}" />
					</td>
				</tr>
				
			</table>
			<p align="center">
				<h:commandButton action="#{teacherBean.editPassword}" id="Submit" value="提交"/>
			</p>
			<% 
				String msg = (String)session.getAttribute("msg");
				if(msg != null && msg != "")
				{
					out.print(msg);   
				}                         
			%>
		</h:form>
		<p>
			<a href="tea_information.faces">&lt;&lt;Back</a>
		</p>
		</f:view>
	</body>
</html>
