<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Integer num = null;
	Integer count = null;
	String param = null;
	Integer paramNum = null;
	num = (Integer) session.getAttribute("number");
	count = (Integer) session.getAttribute("count");
	if (num == null) {

		num = (int) (Math.random() * 99 + 1);
		session.setAttribute("number", num);
		count = 0;
		session.setAttribute("count", count);
	}
	param = request.getParameter("paramNum");
	try {
		if (param != null) {
			paramNum = new Integer(param);
			count++;
		}
		session.setAttribute("count", count);
	} catch (NumberFormatException e) {
%>
<jsp:forward page="error.jsp" />
<%
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="content-style-type" content="text/css" />
<style type="text/css">
h1 {
	font-style: italic;
	border-left: #ff0000 3px double;
	border-botton: #ff0000 3px double;
}
</style>
<title>数当てゲーム</title>
</head>
<body>
	<h1>数当てゲーム</h1>
	<%
		if (paramNum != null && paramNum.equals(num)) {
	%>
	<jsp:include page="success.jsp" />
	<%
		} else if (paramNum != null && !paramNum.equals(num)) {
			if(paramNum > num){
				out.print("もっと低い");
			}else if(paramNum < num){
				out.print("もっと高い");
			}
	%>
	<jsp:include page="miss.jsp" />
	<%
		} else {
	%>
	<p>1から99までの数値を入力してください</p>
	<%@ include file="form.html"%>
	<%
		}
	%>
</body>
</html>