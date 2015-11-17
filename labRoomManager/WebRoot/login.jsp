<%@ page language="java" contentType="text/html; charset=utf-8"%>

<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>login</title>
     <link href="css/homepage.css" rel="stylesheet" type="text/css">
</head>
<script type="text/javascript">
	function CheckForm()
	{
		
		var oName = document.getElementById('ousername');
		var oPassword = document.getElementById("opassword");
		if(oName.value.length == 0)
		{
			alert("请输入用户名称!");
			oName.focus();
			return false;
		}
		
		if(oPassword.value == "")
		{
			alert("请输入用户密码!");
			oPassword.focus();
			return false;
		}
		return true;
	}
	function RefreshValidateImg(sValidateImgId)
	{
		document.getElementById(sValidateImgId).src = "ValidateCode.jsp?TimeCode=" + Math.random() + "100";
	}
</script>


<body>
<f:view>
	<h:form style="height: 510px; ">
	<div id="Wrapper">
			<table width="740" height="100%" align="center" cellpadding="0"
				cellspacing="0">
				<tr>
					<td height="136">
						<div id="Logo">
							<a href="login.faces"><img src="images/IndexLogo.jpg"
									border="0"> </a>
						</div>
					</td>
				</tr>
				<tr>
					<td height="39"></td>
				</tr>
				<tr>					
					<td height="341" id="Main">						    					
					<div id="Login" >
						<font style="font-size: 12px;font-weight:bold;color: #FF0000"></font><br>

						<form method="post" action="login" onsubmit="JavaScript: return CheckForm();" >
<label>
								用户类型
							</label>
								<h:selectOneListbox value="#{loginBean.sort}">
									<f:selectItem itemLabel="学生" itemValue="1"/>
									<f:selectItem itemLabel="教师" itemValue="2"/>
									<f:selectItem itemLabel="管理员" itemValue="3"/>
								</h:selectOneListbox>
	<br />		
							<label>
								用户
							</label>
								<h:inputText id="ousername" value="#{loginBean.username}" required="true">
							         <f:validateLength minimum="1"></f:validateLength>  
							    </h:inputText>
							    <h:message for="ousername"></h:message>  
<br />
			  				<label>
								密码
							</label>
							<h:inputSecret id="opassword" value="#{loginBean.password}" required="true" />

							<br />
							<h:commandButton action="#{loginBean.login}" value="登录"/>
							<br/>
							
							</form>
						</div>
						
												
						<div id="News">							
							<ul>
								<label style="color: red;font-size: 12px;">教师登录：</label>
								<li>
									 用户名为工资号，初始密码为工资号，请及时更改密码。
								</li>
<li>
									 可进入帮助了解如何使用本系统。
								</li>
								<br/>
                                                                <label style="color: red;font-size: 12px;">新生登陆：</label>
								<li>
									 用户名为学号，初始密码为录取号的<strong>后6位</strong>（或学号）。
								</li>
								<br/>
								<label style="color: red;font-size: 12px;">新生登录注意事项：</label>
								<li>
									 1. 请初次登录后进入【个人信息】核对您的基本信息。
								</li>
								<li>
									 2. 如果出生日期或身份证号有误请及时与辅导员联系。
								</li>
								<li>
									 3. 请填写个人联系方式，便于与您及时联系，谢谢。
								</li>
							</ul>
						</div>
					</td>					
				</tr>
				<tr>
					<td valign="top" id="Footer">
						Copyright &copy; 2007 All Rights Reserved. 版权所有：南京大学教务处
						<a href="#">联系我们</a>
					</td>
				</tr>
			</table>
		</div>
		
	</h:form>
	</f:view>
	<%
String msg = (String)session.getAttribute("msg");
out.print(msg);                            
%>
</body>

</html>
