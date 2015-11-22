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
<form action="tea_arrangecourse.jsp" method="post">
	<table width="95%">
	<tr>
  <td > 请输入课程编号：</td>
  <td><input type="text" name="sno" value=<%=courseListBean.getCourseId()%> /> </td>
  <td><input type="submit" name="submit" value="确定 " /></td>
  </tr>
   </table>
   	</form>
   	
   <br />
			<table width="95%"  class="TABLE_BODY" bordercolor="#777777" border="1" style="border-color:#777777;border-collapse:collapse">
				<tr class="TABLE_TH">
				  <th >机房编号</th>
				  <th >可用电脑数</th>
				  <th> 操作 </th>
				  </tr>
			
	 		<%int litnum=courseListBean.getLabrooms().size();
				   for(int i=0;i<litnum;i++){
				   	if(i%2 == 0) {%>
				   	<tr align="left" class="TABLE_TR_01">
				   	<% }%>
				   	<%if(i%2 == 1) {%>
				   	<tr align="left" class="TABLE_TR_02">
				   	<% }%>
				
				   	<td valign="middle"><%=(courseListBean.getLabrooms().get(i)).getId()%></td>
					<td valign="middle"><%=((courseListBean.getLabrooms().get(i))).getComputerNum()%></td>
					<td valign="middle"><a href="javascript:con1(<%=courseListBean.getCourseId()%>,<%=(courseListBean.getLabrooms().get(i)).getId()%>)">选择</a></td>
				   	</tr>	
				  
				   <% }%>
				   
			</table>
	
			</div>
	</div>
  </body>
  
</html>


