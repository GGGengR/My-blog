<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%String use=(String) session.getAttribute("use");%>
<%if(use.equals("游客")){
	response.setHeader("refresh","1;url=login.jsp");
}else if(!(use.equals("manager"))){
	response.setHeader("refresh","1;url=loading");
}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/style.css" rel="stylesheet" type="text/css" />
<title>添加博客</title>
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
<div class="message"></div>
<div class="blog">
<form action="addToSQL.jsp" method="get" >
<table align="center"  width=80% border="0">
<tr><td colspan="1">标题</td><td><input type="text" name=text></td></tr>
<tr><td colspan="1">简述</td><td><input type="text" name=blog></td></tr>
<tr><td colspan="1">内容</td><td ><textarea rows="10" cols="30" name=detail></textarea></td></tr>
<tr><td colspan="1">图片</td><td><input type="text" name=image></td></tr>
<tr>
		<td align="right" colspan="1">
		<input type="submit" value="添加" >
		</td>
		<td align="center" colspan="1">
		<input type="reset" value="重置" >
		</td>
		</tr>
</table>
</form>
</div>
</div>
<div id="footer">@Blog</div>
</div>
</body>
</html>