<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% response.setHeader("refresh","5;url=loading"); %>
<html>
<head>
<link rel="stylesheet" href="css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>正在载入</title>
</head>
<style type="text/css">
body{
background-color:#5e4774;
}
div.transbox
{
  width: 550px;
  height: 500px;
  margin:0px auto;
  background-image:url("image/loading.gif");
  background-color: #ffffff;
   background-size:cover;
   no-repeat;
  filter:alpha(opacity=60);
  opacity:0.6;
}
</style>
<body>
<div class="transbox">
</div>
</body>
</html>