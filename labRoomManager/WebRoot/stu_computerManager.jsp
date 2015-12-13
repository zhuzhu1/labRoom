<%@page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<jsp:useBean id="courseListBean" class="com.stuman.web.jsf.bean.courseListBean" scope="page"/>
<jsp:setProperty property="*" name="courseListBean"/>

<%  String courseno=request.getParameter("courseno"); 
	String labno=request.getParameter("labno");
	
	if(courseno!=null && labno!=null){
		courseListBean.setCourseId(courseno);
		courseListBean.setRoomId(labno);
		courseListBean.arrangeCourse(courseno,labno);

		request.removeAttribute("courseno");
		request.removeAttribute("labno");

   }
	%>
	
 <% courseListBean.checkLabroom(); %>
<%@page import ="com.stuman.domain.Courselist" %>
<%@page import ="com.stuman.domain.CourselistId" %>
<html >
  <head>
    <title>南京大学教务系统</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	 <link href="css/inner.css" rel="stylesheet" type="text/css"> 
  </head>
  
   <base href="login.faces">
    <title>课程信息</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
    <link href="css/table.css" rel="stylesheet" type="text/css">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    
    <script type="text/javascript">
   
    function con1(courseno,labno){
        if(window.confirm("确认选择？")){
           location.href="tea_arrangecourse.jsp?courseno="+courseno+"&labno="+labno; 
       }
   }
    </script>
    
  <body >
	<div id="Header">
<div id="Logo"><a href="teacher.faces"><img src="images/Logo_Student.jpg" border="0"></a></div>
<div id="TopLink"><img src="images/Icon_Help.gif"><a href="student/index.do#">帮助</a>&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/Icon_Exit.gif"><a href="login.faces">退出</a></div>
<div id="UserInfo">~~欢迎您~~</div>
<script type="text/javascript" language="javascript" src="js/prototype.js"></script>
<div id="Nav">
  <ul>
    <li id="homepage"><a href="teacher.faces">首  页</a></li>
    <li id="studentinfo"><a href="tea_userManager.faces">用户管理</a></li>
    <li id="teachinginfo"><a href="tea_labRoomManager.faces">机房管理</a></li>
    <li id="teachinginfo"><a href="tea_arrangecourse.faces">实验课程管理</a></li>
  </ul>
</div>
	</div>
	

  <div  align="center">
 
<div id="d22" >

   	
   <br />
			<table class="TABLE_BODY" bordercolor="#777777" border="0" style="border-color:#777777;border-collapse:collapse">
				
			
	 		<%int litnum=9;
				   for(int i=0;i<litnum;i++){
				   	%>
				   	<tr align="left">
				   	<%for(int j=0;j<15;j++){
				   	if(i>=5 ||(i==4 && j>5) || (i==1 && j==2))
				   	{%>
				   	<td valign="middle" width="10px"><img src="images/computer.png"/></td>
				   	<%} else{%> 
					<td valign="middle" width="12px"><img src="images/computer_on.png"/></td>
				    <%}%> 
				    <%if((j+1)%4 == 0){%> 
					<td width="20px"></td>
					<%}%> 
					<%}%> 
				   	</tr>
				   	
				    	
				    <% if((i+1)%4 == 0) {%>
				   	<tr align="left">
				    <td width="20px" height="18px"></td>
				    </tr>
				   	<% }%>
			
				   <% }%>
				   
			</table>
	
			</div>
	</div>
  </body>
  
</html>


