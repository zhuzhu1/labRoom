<%@page language="java" contentType="text/html; charset=GBK"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<html>
	<head>
	    <meta http-equiv="cache-control" content="no-cache">
		<title>选报课程</title>
	    <link href="choose_course_images/inner.css" rel="stylesheet" type="text/css">  
	</head>
	
	<body>
<div id="Header">

<div id="Logo"><a href="student/index.do#"><img src="choose_course_images/Logo_Student.jpg" border="0"></a></div>
<div id="TopLink"><img src="choose_course_images/Icon_Help.gif"><a href="student/index.do#">帮助</a>&nbsp;&nbsp;&nbsp;&nbsp;<img src="choose_course_images/Icon_Exit.gif"><a href="exit.do?type=student">退出</a></div>
<div id="UserInfo">欢迎您：顾玲玲&nbsp;&nbsp;&nbsp;&nbsp;当前身份：学生</div>
<script type="text/javascript" language="javascript" src="js/prototype.js"></script>
<div id="Nav">
  <ul>
    <li id="homepage"><a href="student.faces">首  页</a></li>
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
		<li><a href="student/elective/specialityCourseList.do"><img src="choose_course_images/elective_speciality.png"><br />专业选课</a></li>
		<li><a href="student/elective/gymClassList.do"><img src="choose_course_images/elective_gym.png"><br />体育选课</a></li>
		<li><a href="student/select/index.do"><img src="choose_course_images/elective_public.png"><br />公共选课</a></li>
		<li><a href="student/elective/courseList.do?method=publicRenewCourseList"><img src="choose_course_images/elective_public_renew.png"><br />公选课补选</a></li>
		<li><a href="student/elective/courseList.do?method=discussRenewCourseList"><img src="choose_course_images/recondition.png"><br />通识课补选</a></li>
		<li><a href="student/elective/courseList.do?method=openRenewCourseList"><img src="choose_course_images/elective_public_renew.png"><br />跨专业补选</a></li>
		<li><a href="student/elective/courseList.do?method=getElectiveResult"><img src="choose_course_images/elective_result.png"><br />课程退选</a></li>
	</ul>
</div>






<div class="Line"></div>
		<p align="center">
			<br><br><br><br><br><br><br><br><br>您可以选报的课程为
		</p>
		<!--  <table border="1" align="center">
			<tr>
				<td width="54">
					课程号
				</td>
				<td width="54">
					课程名
				</td>
				<td width="57">
					预修课
				</td>
				<td width="58">
					系别
				</td>
				<td width="59">
					班级号
				</td>
				<td width="69">
					教室号
				</td>
				<td width="88">
					上课时间
				</td>
				<td width="88">
					教师
				</td>
				<td width="83">
					选择
				</td>
			</tr>
			<p>
			
		</table>-->
		<f:view>
		<h:form>
		<h:dataTable value="#{studentBean.courses}" var="course" border="1" width="75%">
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
				    <h:outputText value="班级号"/>
				</f:facet>
            	<h:outputText value="#{course.classes.id}"/>
        	</h:column>
        	<h:column>
        	    <f:facet name="header">
				    <h:outputText value="教室号"/>
				</f:facet>
            	<h:outputText value="#{course.classes.roomId}"/>
        	</h:column>
        	<h:column>
        	    <f:facet name="header">
				    <h:outputText value="上课时间"/>
				</f:facet>
            	<h:outputText value="#{course.classes.courTime}"/>
        	</h:column>
			<h:column>
			       <f:facet name="header">
				      <h:outputText value="选择"/>
				   </f:facet>
				   <h:commandLink value="注册" action="#{enrolBean.saveEnrol}"/>
		     </h:column>
    	</h:dataTable>
		</h:form>
		</f:view>
		<p>
			&nbsp;
		</p>
		<p>
			<a href="student.faces">&lt;&lt;Back </a>
		</p>
	</body>
</html>
