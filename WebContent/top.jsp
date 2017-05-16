<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="content-style-type" content="text/css" />
<link rel="stylesheet" type="text/css" href="tour.css" />
<title>ご希望の旅行を選んでください。</title>
</head>
<body>
<h1>ご希望の旅行を選んでください</h1>
<table border="1" summary="旅行ツアーの情報まとめた表">
<tr class="green2">
<td class="col1">ツアーID</td>
<td class="col2">ツアー名</td>
<td class="col3">行き先</td>
<td class="col4">料金</td>
<td class="col5"></td>
</tr>
<tr>
<td>004</td>
<td>くいだおれの街大阪！日本の台所満喫ツアー</td>
<td>大阪</td>
<td>大人￥10000</td>
<td>
<form action ="number.jsp" method="post">
<input type="submit" value="選択" />
<input type="hidden" name="tourId" value="004" />
<input type="hidden" name="tourName" value="くいだおれの街大阪！日本の台所満喫ツアー" />
<input type="hidden" name="place" value="大阪" />
<input type="hidden" name="price" value="10000" />
</form>
</td>
</tr>
</table>
<table border="1" summary="旅行ツアーの情報まとめた表">
<tr class="green2">
<td class="col1">ツアーID</td>
<td class="col2">ツアー名</td>
<td class="col3">行き先</td>
<td class="col4">料金</td>
<td class="col5"></td>
</tr>
<tr>
<td>003</td>
<td>大牧場で自家製チーズ作り体験</td>
<td>北海道</td>
<td>大人￥32000</td>
<td>
<form action ="number.jsp" method="post">
<input type="submit" value="選択" />
<input type="hidden" name="tourId" value="003" />
<input type="hidden" name="tourName" value="大牧場で自家製チーズ作り体験" />
<input type="hidden" name="place" value="北海道" />
<input type="hidden" name="price" value="32000" />
</form>
</td>
</tr>
</table>
<table border="1" summary="旅行ツアーの情報まとめた表">
<tr class="green2">
<td class="col1">ツアーID</td>
<td class="col2">ツアー名</td>
<td class="col3">行き先</td>
<td class="col4">料金</td>
<td class="col5"></td>
</tr>
<tr>
<td>002</td>
<td>世界一透明な海でお魚の踊り食い</td>
<td>沖縄</td>
<td>大人￥53000</td>
<td>
<form action ="number.jsp" method="post">
<input type="submit" value="選択" />
<input type="hidden" name="tourId" value="002" />
<input type="hidden" name="tourName" value="世界一透明な海でお魚の踊り食い" />
<input type="hidden" name="place" value="沖縄" />
<input type="hidden" name="price" value="53000" />
</form>
</td>
</tr>
</table>
<table border="1" summary="旅行ツアーの情報まとめた表">
<tr class="green2">
<td class="col1">ツアーID</td>
<td class="col2">ツアー名</td>
<td class="col3">行き先</td>
<td class="col4">料金</td>
<td class="col5"></td>
</tr>
<tr>
<td>001</td>
<td>白馬の雪山でスキー、スノーボード！</td>
<td>長野</td>
<td>大人￥17000</td>
<td>
<form action ="number.jsp" method="post">
<input type="submit" value="選択" />
<input type="hidden" name="tourId" value="001" />
<input type="hidden" name="tourName" value="白馬の雪山でスキー、スノーボード！" />
<input type="hidden" name="place" value="長野" />
<input type="hidden" name="price" value="17000" />
</form>
</td>
</tr>
</table>
</body>
</html>