<%@page language="java" contentType="text/html; charset=utf-8"%>

<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<html>
<head>
<link href="css/inner.css" rel="stylesheet" type="text/css"> 
</head>
<body>
<div id="Header">
<div id="Logo"><a href="student.faces"><img src="images/Logo_Student.jpg" border="0"></a></div>
<div id="TopLink"><img src="images/Icon_Help.gif"><a href="student/index.do#">帮助</a>&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/Icon_Exit.gif"><a href="login.faces">退出</a></div>
<div id="UserInfo">~~欢迎您~~</div>
<script type="text/javascript" language="javascript" src="js/prototype.js"></script>
<div id="Nav">
  <ul>
    <li id="homepage"><a href="student.faces">首  页</a></li>
    <li id="studentinfo"><a href="stu_userManager.faces">用户管理</a></li>
    <li id="teachinginfo"><a href="stu_labRoomManager.faces">机房管理</a></li>
    <li id="teachinginfo"><a href="stu_courseManager.faces">实验课程管理</a></li>
     	
  </ul>
</div>
	</div>
	﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<div id="Function">
    <ul>
	    <li id="studentinfo"><a href="stu_information.faces"><img src="images/personal.png"><br />基本信息</a></li>
	    <li id="teachinginfo"><a href="stu_useComputer.faces"><img src="images/achievement.png"><br />上机信息</a></li>
	    <li id="electiveinfo"><a href="stu_recharge.faces"><img src="images/elective.png"><br />充值信息</a></li>
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
  <%
String stuid = (String)session.getAttribute("stuid");
if(stuid==null){response.sendRedirect("login.faces");}                                 
%>
</body>
</html>