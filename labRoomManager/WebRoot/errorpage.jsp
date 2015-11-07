<%@page language="java" contentType="text/html; charset=GBK"%>
<%@page import="java.sql.*,com.stuman.*,java.io.*" errorPage="errorpage.faces" %>
<HTML>
<HEAD><TITLE>Output</TITLE></HEAD>

<body  background="images/image-top2.jpg" style="background-repeat:no-repeat">
<p align="center"><font color="#660000" size="2"><b>  
  <% 
	//if (exception != null) { 
		//out.print(exception.toString()); 
	//} else  
		if (request.getAttribute("problem") != null) { 
		String str =(String) request.getAttribute("problem"); 
		// byte[] tmpbyte=str.getBytes("ISO8859_1"); 
// str=new String(tmpbyte); 
%> 
  <%= str %>  
  <% } else { %></b></font></p><p align="center"><font color="#660000" size="2"><b><br></b></font></p><p align="center"><font color="#660000" size="2"><b><br></b></font></p><p align="center"><font color="#660000" size="2"><b><br></b></font></p><p align="center"><font color="#660000" size="2"><b>(No error code)  
  <% } %> 
  </b></font></p>

<P><B>
<p> <a href="javascript:history.back();"> &lt;&lt;Back</a> </p>
</B></P>
</BODY>
</HTML>
