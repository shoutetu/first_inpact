<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="jspexan3.QuestionBean"%>
<%
	request.setCharacterEncoding("UTF-8");
	QuestionBean qb = new QuestionBean();

	session.setAttribute("qb",qb);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="content-style-type" content="text/css" />
<title>IT用語クイズ（1問目）</title>
</head>
<body>
	<h1>1問目</h1>
	<br />
	<h3>NO.1：コンピューター間でデータ通信を行う時に必要な通信速度、手順などの取り決めをなんという？</h3>
	<form action="question2.jsp" method="post">
		<table>
		<tr>
			<td align="left">
			<input type="radio" checked="checked" name="ans1" value="A" />A.プログラム
			<input type="hidden" name="tans1" value="B" />
			</td>
			</tr>
			<tr>
			<td align="left">
			<input type="radio" name="ans1"value="B" />B.プロトコル
			</td>
			</tr>
			<tr>
			<td align="left">
			<input type="radio" name="ans1" value="C" />C.プロファイル
			</td>
			</tr>
			<tr>
			<td align="left">
			<input type="radio" name="ans1" value="D" />D.プロメテウス
			</td>
			</tr>
		</table>
	<input type="submit" value="2問目へ進む" />
	</form>
</body>
</html>