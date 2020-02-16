<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" import="com.blog.blog.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link href="css/style.css" rel="stylesheet" type="text/css" />
<%String use=(String)session.getAttribute("use");%>
<%if(use.equals("游客")){
	response.setHeader("refresh","1;url=login.jsp");
}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>你好！<%=use %></title>
</head>
<body>
<div id="Container">
<div id="header"> 	
	<nav>
		<ul>
			<li><a href="loading">列表</a></li>
			<li><a href="addBlog.jsp">添加博客</a></li>
			<li><a href="manageBlog">管理博客</a></li>
			<li><a href="addMessage.jsp">我要留言</a></li>
		</ul>
	</nav>
	<div id="use"><%=use %> //<a href="login.jsp">登陆</a></div>
</div>
<div id="main">
<div class="message">
<form class="form1" action="addMessageToSQL.jsp">
<table align="center" width=100% border="1">
	<tr>
		<td align="center" colspan="3" width=80% height=50px>
			<h3>留言区</h2>
		</td>
	</tr>
<% 	
List<Message> list1=(List<Message>)request.getAttribute("list1");
if(list1==null||list1.size()<1){
	%>
	<tr align="center"><td></td></tr><%
}else {
	for(Message mess:list1){
		%>
		<tr align="left"><td><%=mess.getName() %>-<%=mess.getText() %>:<%=mess.getMessage() %></td></tr>
			<%
	}
}
%>
<tr><td>NAME:<input type="text" name="name" /></tr>
<tr><td>TEXT:<input type="text" name="text" /></tr>
<tr><td>MESSAGE:<input type="text" name="message" /></tr>
</table>
<input type="submit" name="提交"><input type="reset" name="重置">
</form>
</div>
</div>
<div id="footer">@Blog</div>
</div>
</body>
</html>