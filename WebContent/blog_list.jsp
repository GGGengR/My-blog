<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" import="com.blog.blog.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link href="css/style.css" rel="stylesheet" type="text/css" />
<%String use=(String)request.getAttribute("use"); %>
<%if(session.getAttribute("use")!=null){
	use=(String)session.getAttribute("use");
}else {
	use="游客";
	session.setAttribute("use", use);
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
<form class="form1">
<table align="center" width=100% border="1">
	<tr>
		<td align="center" colspan="3" width=80% height=30px>
			<h3>留言版</h2>
		</td>
	</tr>
<% 	
List<Message> list1=(List<Message>)request.getAttribute("list1");
if(list1==null||list1.size()<1){
	%>
	<tr align="center"><td>暂无留言</td></tr><%
}else {
	for(Message mess:list1){
		%>
		<tr align="left"><td><%=mess.getName() %>-<%=mess.getText() %>:<%=mess.getMessage() %></td></tr>
			<%
	}
}
%>
</table>
</form>
</div>
<div class="blog">
<form class="form1">
<table align="center" width=80% border="0">
	<tr>
		<td align="center" colspan="5" width=90%>
			<h2>所有博客信息</h2>
		</td>
	</tr>
	<tr align="center">
	<td><b>主题</b></td>
	<td><b>简述</b></td>
	</tr>
<% 	
List<Blog> list=(List<Blog>)request.getAttribute("list");
if(list==null||list.size()<1){
	%>
	<tr align="center"><td></td></tr><%
}else {
	for(Blog blog:list){
		%>
		<tr align="center">
			<td><a href="BlogDetail.jsp?text=<%=blog.getText() %>&blog=<%=blog.getBlog() %>&image=<%=blog.getImage() %>&detail=<%=blog.getDetail() %>"><%=blog.getText() %></a></td>
			<td><%=blog.getBlog() %></td>
			</tr>
			<%
	}
}
%>
</table>
</form>
</div>
</div>
<div id="footer">@Blog</div>
</div>
</body>
</html>