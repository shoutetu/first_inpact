<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	int[] tourPrice = { 30000, 40000, 80000, 20000, 50000 };
	String[] tourName = { "ジークンドー", "マーシャルアーツ", "シラット", "システマ", "ローコンバット" };
	String[] tourImg = { "jikun.jpg", "mas.jpg", "sira.jpg", "sisu.jpg", "roko.jpg" };
	int total = 0;
	int itemprice = 0;

	String tableData = "";
	String message = "";
	String subject = "";

//記入データの習得
	String[] tour = request.getParameterValues("tour");
	String people = request.getParameter("people");
	int peoples = Integer.parseInt(people);
//記入データの判断、各ツアーの金額割り振り
	if (!people.equals("")) {
		for (int i = 0; i < tour.length; i++) {
			int tour_num = Integer.parseInt(tour[i]);
			itemprice = tourPrice[tour_num] * peoples;
			total += itemprice;
//tableの作成
			tableData += "<tr />";
			tableData += "<td>" + tourName[tour_num] + "</td>";
			tableData += "<td>" + tourPrice[tour_num] +" 円"+"</td>";
			tableData += "<td>" + itemprice +" 円 "+ "</td>";
			tableData += "<td>";
			tableData += "<img src=\"img/" + tourImg[tour_num]
					+ "\" height=\"150\" width=\"170\" alt=\"" + tourName[tour_num] + "\" />";
			tableData += "</td>";
			tableData += "</tr>\n";
		}
//5名以上なら10％オフ
		subject = "お申し込みありがとう！";
		if (peoples >= 5) {
			int rototal = (int) (total * 0.9);
			message += people + "名様ですね";
			message += "合計金額" + total + "円から10%OFFで" + rototal+"円です!!";
		} else {
			message += people + "名様の合計は" + total + "円です";
		}
		message += "<br />";
	} else {
		subject = "参加人数を入力してください";
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>格闘技申し込み</title>
</head>
<body background = "img/leo.jpg" text="ff0000">
	<div align="center">
		<h1 align="center"><%=subject%></h1>
		<hr />
		<table border="1" summary="もし込みツアー一覧" bgcolor="000000">
			<%=tableData%>
		</table>
		<br />
		<font size=6><span style="background-color:#ffffff"><%=message%></span></font>
		<hr />
	</div>
</body>
</html>