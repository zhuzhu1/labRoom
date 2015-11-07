<%@ page language="java"  pageEncoding="gb2312"%>
<%@ page import="com.stuman.service.*"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>

<html>
  <head>
  </head>
 <body  background="images/image-top2.jpg" style="background-repeat:no-repeat">
  <table width="100%" height="439"  border="1">
    <tr>
      <td height="22"><table width="200" border="1">
        <tr>
          <td><br></td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td colspan='3'>&nbsp;</td>
        </tr>
      </table></td>
    </tr>
    <tr>
      	<%
      		ListStudent stulist = new ListStudent();
      		stulist.list(request,out);
      	%>
    </tr>
    <tr>
      <td height="19"></td>
    </tr>
  </table>
  </body>
</html>
