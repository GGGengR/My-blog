<%@ page language="java" contentType="text/html; charset=UTF-8" import="com.blog.blog.*" import="java.sql.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/style.css" rel="stylesheet" type="text/css" />
<title>添加结果</title>
</head>
<%request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="message" class="com.blog.blog.Message"></jsp:useBean>
<jsp:setProperty property="*" name="message"/>
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
</div>
<div id="main">
<div class="message">添加结果>
<%
	try{
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/blog?serverTimezone=GMT%2B8";
		String username="root";
		String password="0000";
		Connection conn=DriverManager.getConnection(url,username,password);
		String sql="insert into message(name,text,message)values(?,?,?)";
		PreparedStatement ps= conn.prepareStatement(sql);
		ps.setString(1,message.getName());
		ps.setString(2,message.getText());
		ps.setString(3,message.getMessage());
		int row=ps.executeUpdate();
		if(row >0){
			out.print("成功添加");
		}
		ps.close();
		conn.close();
		}catch(Exception e){
		out.print("信息添加失败！"+e);
		}
%></div>
</div>
<div id="footer">@Blog</div>
</div>
</body>
</html>