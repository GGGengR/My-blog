<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%String use=(String )request.getAttribute("use"); %>
<%session.setAttribute("use", use); %>
<% response.setHeader("refresh","2;url=loading"); %>
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
<title>登陆成功</title>
</head>
<body>
亲爱的<%=use %>，正在跳转，请稍后> >
</body>
</html>