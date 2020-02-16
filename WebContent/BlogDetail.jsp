<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String text=request.getParameter("text");
	String blog=request.getParameter("blog");
	String detail=request.getParameter("detail");
	String image=request.getParameter("image");
%>
<%String use=(String) session.getAttribute("use");%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/style.css" rel="stylesheet" type="text/css" />
<title>博客详情</title>
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
<div class="blog">
<form class="form1">
<table align="center" width=80% border="0">
	<tr><h2><%=text %></h2>
	</tr>
	<tr><td><%=detail %></td></tr>
</table>
</form>
<img border="0" src="<%=image %>" alt="Pulpit rock" width="290px" height="200px" >
</div>
</div>
</div>
<div id="footer">@Blog</div>
</div>
</body>
</html>