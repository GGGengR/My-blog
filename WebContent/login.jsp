<%@ page language="java" contentType="text/html; charset=UTF-8"  import="com.blog.blog.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎登陆</title>
</head>
<link rel=stylesheet href="/css/style.css">
<style type="text/css">
body
{
	background-image: url("image/black.jpg") ;
}
.head
{
font-family:"STCaiyun";
font-size:40px;
}
div.background
{
  align:center;
  width: 500px;
  margin:100px auto;
  background-image: url("image/fl.gif") ;
  background-size:cover;
  border: 4px solid black;
}
div.transbox
{
  height: 290px;
  margin:30px;
  background-color: #ffffff;
  border: 1px solid black;
  filter:alpha(opacity=60);
  opacity:0.6;
}
</style>
<body>
<div class="background">
<div class="transbox">
<form name="form1"action="success" align="center">
<table align="center" width="350">
	<tr>
	<h2 id="head">请登录您的账号</h2>
	</tr>
	<tr>
		<td align="right">用户名</td> 
		<td><input type="text" name="用户"value=""></td>
	</tr>
	<tr>
		<td align="right">密码</td> 
		<td><input type="password" name="密码" value=""></td>
	</tr>
	<tr align="right">
	<tr align="center">
	<td><input type="reset" name="重置"></td>
		<td><input type="submit" name="提交" ></td>
	</tr>
</table>
</form>
<div align=right>
_______________</br><a href="register.jsp">-点击进行注册-</a>
</br>_______________</br><a href="loading">-游客身份进入-</a>
</div>
</div>
</div>
</body>
</html>