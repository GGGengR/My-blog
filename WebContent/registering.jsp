<%@ page language="java" contentType="text/html; charset=UTF-8" import="com.blog.blog.*" import="java.sql.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/style.css" rel="stylesheet" type="text/css" />
<title>注册结果</title>
</head>
<%request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="com.blog.blog.User"></jsp:useBean>
<jsp:setProperty property="*" name="user"/>
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
		String sql="insert into user(user,name,password,telephone,email)values(?,?,?,?,?)";
		PreparedStatement ps= conn.prepareStatement(sql);
		ps.setString(1,user.getUser());
		ps.setString(2,user.getName());
		ps.setString(3,user.getPassword());
		ps.setString(4,user.getTelephone());
		ps.setString(5,user.getEmail());
		int row=ps.executeUpdate();
		ps.close();
		conn.close();
		if(row >0){
			out.print("注册成功");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		}catch(Exception e){
		out.print("注册失败！"+e);
		}
%></div>
<div class="blog"></div>
</div>
<div id="footer">@Blog</div>
</div>
</body>
</html>