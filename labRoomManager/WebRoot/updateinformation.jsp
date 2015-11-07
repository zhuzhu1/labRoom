<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ page import="java.sql.*,com.stuman.domain.Student,com.stuman.dao.StudentDAO,com.stuman.dao.DAOFactory"%>
<jsp:directive.page import="com.stuman.dao.imp.HibernateDAOFactory"/>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>


<html>
	<head>
		<title>修改学生信息</title>
		<link href="css/inner.css" rel="stylesheet" type="text/css"> 
	</head>
	<body>
	
	<div id="Header">

		









 

<div id="Logo"><a href="student/index.do#"><img src="image/student/Logo_Student.jpg" border="0"></a></div>

<div id="TopLink"><img src="image/Icon_Help.gif"><a href="student/index.do#">帮助</a>&nbsp;&nbsp;&nbsp;&nbsp;<img src="image/Icon_Exit.gif"><a href="exit.do?type=student">退出</a></div>

<div id="UserInfo">欢迎您：顾玲玲&nbsp;&nbsp;&nbsp;&nbsp;当前身份：学生</div>

		

<script type="text/javascript" language="javascript" src="js/prototype.js"></script>

<div id="Nav">

  <ul>

    <li id="homepage"><a href="student/index.do">首  页</a></li>

    <li id="studentinfo"><a href="student/studentinfo/index.do">个人信息</a></li>

    <li id="teachinginfo"><a href="student/teachinginfo/index.do">教学信息</a></li>

    <li id="teachinginfo"><a href="student/elective/index.do">学期选课</a></li>

    <li id="teachinginfo"><a href="student/signup/index.do">报名系统</a></li>

    <li id="studentinfo"><a href="student/dissertation/index.do">论文信息</a></li>

    <li id="studentinfo"><a href="student/evalcourse/list.do">课程评估</a></li>

    <li id="studentinfo"><a href="student/exchange/index.do">校际交换</a></li>    	

  </ul>

</div>

	</div>

	









<div id="Function">

    <ul>

	  <li><a href="student/studentinfo/studentinfo.do?method=searchAllList"><img src="image/student/info/personal.png"><br />学生信息</a></li>

	  <li><a href="student/studentinfo/achievementinfo.do?method=searchTermList"><img src="image/student/info/achievement.png"><br />成绩查看</a></li>

	  <li><a href="student/studentinfo/achievementinfo.do?method=searchPayment"><img src="image/student/info/recondition.png"><br />确认缴费</a></li>

	  <li><a href="student/studentinfo/reconditioninfo.do?method=searchReconditionInfo"><img src="image/student/info/recondition.png"><br />重修申请</a></li>

	   <li><a href="student/studentinfo/achievementinfo.do?method=giveupCourseList"><img src="image/student/info/recondition.png"><br />成绩注销</a></li>

	  <!-- <li>

	  	<a href="student/studentinfo/complementinfo.do?method=searchComplementInfo"><img src="image/student/info/complement.png"><br />补修申请</a>

	  	</li> 

	  -->

	   

	   

	  	<li><a href="student/iotarget/ioTargetApply.do?method=getIOTargetList"><img src="image/student/elective/elective_gym.png"><br />专业意向</a></li>

	  

	  <li><a href="student/studentinfo/modifyPassword.do"><img src="image/student/info/password.png"><br />修改密码</a></li>

	</ul>

</div>

<div class="Line"></div>
	
	<f:view>
		<p align="center">
			<br><br><br><br><br><br><br><br>修改信息
		</p>
		<%--<h:form method="post" action="editStudent2.do?student_id=<%=stu_id%>">
		--%>
		<h:form>
			<table width="49%" height="50" border="1" align="center" cellpadding="0" cellspacing="0">
				<tr>
					<td>
						密码
					</td>
					<td>
						<h:inputSecret id="password" value="#{studentBean.student.password}" />
					</td>
				</tr>
				<tr>
					<td>
						确认密码
					</td>
					<td>
						<h:inputSecret id="password1" value="#{studentBean.password}" />
					</td>
				</tr>
				<tr>
					<td>
						电话
					</td>
					<td>
						<h:inputText id="tel" value="#{studentBean.student.tel}" />
					</td>
				</tr>
				<tr>
					<td>
						邮件地址
					</td>
					<td>
						<h:inputText id="email" value="#{studentBean.student.email}" />
					</td>
				</tr>
				
				
			</table>
			<p align="center">
				<h:commandButton action="#{studentBean.editStudentByAdmin}" id="Submit" value="提交"/>
			</p>
		</h:form>
		<p>
			<a href="student.faces">&lt;&lt;Back</a>
		</p>
		</f:view>
	</body>
</html>
