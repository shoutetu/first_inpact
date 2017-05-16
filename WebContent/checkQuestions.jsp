<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="jspexan3.QuestionBean" %>
    <%
    String ans3 = request.getParameter("ans3");
if(ans3 != null){
	QuestionBean qb = (QuestionBean)session.getAttribute("qb");
	qb.setAns1(ans3);
	qb.setTans1("B");
	qb.setTans2("A");
	qb.setTans3("A");
}
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>IT用語クイズ（結果発表）</title>
</head>
<body>
<h1>IT用語クイズ</h1>
<br />
<h2>結果発表</h2>
<br>
<h4>お疲れ様でした<br>
${qb.question }問中
${qb.anss }問正解でした。</h4>
<table align="left" border="1">
<tr>
<td><h2>問題</h2></td><td><h2>回答</h2></td><td><h2>正解</h2></td><td><h2>結果</h2></td>
</tr>
<tr>
<td><h2>1問目</h2></td><td>${qb.ans1 }</td><td>${qb.tans1 }</td><td>${qb.jach1 ? "○":"×" }</td>
</tr>
<tr>
<td><h2>2問目</h2></td><td>${qb.ans2 }</td><td>${qb.tans2 }</td><td>${qb.jach2 ? "○":"×" }</td>
</tr>
<tr>
<td><h2>3問題</h2></td><td>${qb.ans3 }</td><td>${qb.tans3 }</td><td>${qb.jach3 ? "○":"×" }</td>
</table>
</body>
</html>