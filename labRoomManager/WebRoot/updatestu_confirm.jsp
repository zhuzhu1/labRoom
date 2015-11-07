<%@page language="java" contentType="text/html; charset=GBK"%>
<%@page import="java.sql.*,stuman.*" errorPage="errorpage.faces" %>
<html>
<head>
<title>确认更新</title>
</head>
<jsp:useBean id="student" scope="page" class="stuman.student">
<jsp:setProperty name="student" id="*"/>
</jsp:useBean>
<body  background="images/image-top2.jpg" style="background-repeat:no-repeat">
<p align="center"> 
  <%
  try{
String id=(String )session.getAttribute("id");
student.setId(id);
String a = student.getSex();
String c=student.getName();
String d=student.getJiguan();
String e = student.getDep();
String f=student.getPassword();
if(c==null || c.equals("")) throw new Exception("错误，学生姓名不能为空！");
if(f==null || f.equals("")) throw new Exception("错误，学生密码不能为空！");
out.print("    Id 为"+id+"的学生<br>");
out.print("更改性别为： "+a+"<br>");
out.print("更改姓名为"+c+"<br>");
out.print("更改籍贯为 "+d);
student.updateStudent();
} catch(Exception e){out.print(e.toString());}
%>
</p>
<p>&nbsp;</p>
<p><a href="admin.faces"><br></a></p><p><a href="admin.faces"><br></a></p><p><a href="admin.faces">&lt;&lt;Back</a></p>
</body>
</html>
