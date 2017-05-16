<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="kensample.TourBean"%>
<%
	request.setCharacterEncoding("UTF-8");
	String tourId = request.getParameter("tourId");
	String tourName = request.getParameter("tourName");
	String place = request.getParameter("place");
	String price = request.getParameter("price");

	TourBean tour = new TourBean();
	tour.setTourId(tourId);
	tour.setTourName(tourName);
	tour.setPlace(place);
	tour.setPrice(Integer.parseInt(price));

	session.setAttribute("tour", tour);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="content-style-type" content="text/css"/>
<link rel="stylesheet" type="text/css" href="tour.css" />
<title>旅行ツアー試算ページ</title>
</head>
<body>
	<h1>参加人数は?</h1>
	<form action="calc.jsp" method="post">
		<p class="marginLeft">
			大人: <select name="adult">
			<option value="1" selected="selected">1名</option>
			<option value="2" >2名</option>
			<option value="3" >3名</option>
			<option value="4" >4名</option>
			<option value="5" >5名</option>
			<option value="6" >6名</option>
			<option value="7" >7名</option>
			<option value="8" >8名</option>
			<option value="9" >9名</option>
			</select>
			</p>
			<p class="marginLeft">
			子供: <select name="child">
			<option value="0" selected="selected">なし</option>
			<option value="1" >1名</option>
			<option value="2" >2名</option>
			<option value="3" >3名</option>
			<option value="4" >4名</option>
			</select>
			</p>
			<p class="marginLeft">
			<input type="submit" value="試算" />
			</p>
	</form>
	<p>
	※子供料金は大人料金の半額です。<br />
	※参加者4人以上で、料金が１割引きになります。
	</p>
</body>
</html>