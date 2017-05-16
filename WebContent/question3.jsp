<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="jspexan3.QuestionBean"%>
    <%
    String ans2 = request.getParameter("ans2");
    if(ans2 != null){
	QuestionBean qb = (QuestionBean)session.getAttribute("qb");

	qb.setAns1(ans2);
	}
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>IT用語クイズ（3問目）</title>
</head>
<body>
	<h1>3問目</h1>
	<br />
	<h3>NO.3：「XML」とは何の略？</h3>
	<form action="checkQuestions.jsp" method="post">
		<table>
		<tr>
			<td align="left">
			<input type="radio" checked="checked" name="ans3" value="A" />A.eXciting Markup Language
			</td>
			</tr>
			<tr>
			<td align="left">
			<input type="radio" name="ans3"value="B" />B.X-BOX Mailing List
			</td>
			</tr>
			<tr>
			<td align="left">
			<input type="radio" name="ans3" value="C" />C.eXciting Mailing List
			</td>
			</tr>
			<tr>
			<td align="left">
			<input type="radio" name="ans3" value="D" />D.eXtensible Markup Language
			</td>
			</tr>
		</table>
	<input type="submit" value="結果を見る" />
	</form>
</body>
</html>