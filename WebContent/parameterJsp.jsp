<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("UTF-8");
    String parameter = request.getParameter("data");
    parameter += "と入力しましたね";
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ユーザーからの入力を受け取る</title>
</head>
<body>
<h1>受け取った値の出力</h1>
<p><%= parameter %></p>
</body>
</html>