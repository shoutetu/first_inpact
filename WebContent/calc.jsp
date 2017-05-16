<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="kensample.TourBean" %>
    <%
    request.setCharacterEncoding("UTF-8");
    String adult= request.getParameter("adult");
    String child= request.getParameter("child");

    TourBean tour =(TourBean)session.getAttribute("tour");
    tour.setNumAdult(Integer.parseInt(adult));
    tour.setNumChild(Integer.parseInt(child));
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>旅行ツアー試算ページ</title>
</head>
<body>
<h1>旅行ツアー試算結果</h1>
<h2>お選びになったツアー</h2>
<table border="1" summary="旅行ツアーの情報まとめた表">
<tr class="green2">
<td class="col1">ツアーID</td>
<td class="col2">ツアー名</td>
<td class="col3">行き先</td>
<td class="col4">料金</td>
</tr>
<tr>
<td>${sessionScope.tour.tourId }</td>
<td>${sessionScope.tour.tourName }</td>
<td>${sessionScope.tour.place }</td>
<td>大人 ￥${sessionScope.tour.price }</td>
</tr>
</table>
<h2>試算</h2>
<p class ="marginLeft">
大人： ${sessionScope.tour.numAdult }名<br />
子供： ${sessionScope.tour.numChild }名
</p>
<h3>計：${sessionScope.tour.totalAmount }円</h3>
<%
if(tour.getNumPeople() >= 4){
%>
<p class="discount">
${sessionScope.tour.numPeople }名様で、グループ割引適用、1割引!!
</p>
<%
}
%>
<p><a href="top.jsp">トップへ戻る</a></p>
</body>
</html>