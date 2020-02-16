<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% String use=(String)request.getAttribute("name"); %>
<% response.setHeader("refresh","2;URL=login.jsp");%>
<html>
<style type="text/css">
body{
background-color:#5e4774;
background-image:url("image/main.jpg");
background-size:cover;
no-repeat;
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登陆失败</title>
</head>
<body>
亲爱的<%=use %>>用户名或密码错误!
</body>
</html>