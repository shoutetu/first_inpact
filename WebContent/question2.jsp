<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="jspexan3.QuestionBean" %>
    <%
    String ans1 = request.getParameter("ans1");
    if(ans1 != null){
	QuestionBean qb =(QuestionBean)session.getAttribute("qb");

	qb.setAns1(ans1);
    }
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>IT用語クイズ（2問目）</title>
</head>
<body>
	<h1>2問目</h1>
	<br />
	<h3>NO.2：1MBをKBに換算すると？</h3>
	<form action="question3.jsp" method="post">
		<table>
		<tr>
			<td align="left">
			<input type="radio" checked="checked" name="ans2" value="A" />A.1024KB
			<input type="hidden" name="tans2" value="A" />
			</td>
			</tr>
			<tr>
			<td align="left">
			<input type="radio" name="ans2"value="B" />B.1022KB
			</td>
			</tr>
			<tr>
			<td align="left">
			<input type="radio" name="ans2" value="C" />C.1028KB
			</td>
			</tr>
			<tr>
			<td align="left">
			<input type="radio" name="ans2" value="D" />D.1026KB
			</td>
			</tr>
		</table>
	<input type="submit" value="3問目へ進む" />
	</form>
</body>
</html>