<%@page language="java" contentType="text/html; charset=utf-8"%>

<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<html>
	<head>
		<title>管理员登陆</title>
		<link href="css/inner.css" rel="stylesheet" type="text/css"> 
	</head>
	<body ">
	<div id="Header">
<div id="Logo"><a href="admin.faces"><img src="images/Logo_Student.jpg" border="0"></a></div>
<div id="TopLink"><img src="images/Icon_Help.gif"><a href="student/index.do#">帮助</a>&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/Icon_Exit.gif"><a href="login.faces">退出</a></div>
<div id="UserInfo">~~欢迎您~~</div>
<script type="text/javascript" language="javascript" src="js/prototype.js"></script>
<div id="Nav">
  <ul>
    <li id="homepage"><a href="admin.faces">首  页</a></li>
    <li id="studentinfo"><a href="admin_stustatus.faces">学籍信息</a></li>
    <li id="teachinginfo"><a href="admin_grademanage.faces">成绩管理</a></li>
    <li id="teachinginfo"><a href="admin_courseplan.faces">选课安排</a></li>
    <li id="teachinginfo"><a href="admin_graduateinfo.faces">毕业信息管理</a></li>
     	
  </ul>
</div>
	</div>
	﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<div id="Function">
    <ul>
	    <li id="studentinfo"><a href="admin_stustatus.faces"><img src="images/personal.png"><br />学籍信息</a></li>
	    <li id="teachinginfo"><a href="admin_grademanage.faces"><img src="images/achievement.png"><br />成绩管理</a></li>
	    <li id="electiveinfo"><a href="admin_courseplan.faces"><img src="images/elective.png"><br />选课安排</a></li>
	    <li id="signupinfo"><a href="admin_applicationsystem.faces"><img src="images/executeplan.png"><br />申报系统</a></li>
		<li id="dissertation"><a href="admin_message.faces"><img src="images/dissertation.png"><br />通知设置</a></li>
		<li id="coureval"><a href="admin_graduateinfo.faces"><img src="images/stueval.png"><br />毕业信息管理</a></li>
		<li id="coureval"><a href="admin_ticket.faces"><img src="images/current_term_course.png"><br />票务管理</a></li>
	</ul>
</div>
<div class="Line"></div>
<div>
<table width="100%" border="0" cellpadding="0" cellspacing="1">
	<tr style="width: 100%">
		<!-- 获取公告通知 -->
		<td align="left" valign="top"  style="border:0;color:blue;padding-left: 45px; padding-bottom: 10px;" colspan="2"><br /><!-- <include page="/student/notice/index.do?method=noticeIndex"/> -->
		<br /></td>
	<tr>
</table>
</div>
<div>
<table width="100%" border="0" cellpadding="0" cellspacing="1">
</table>
</div>
	</body>
</html>
