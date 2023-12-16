<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery.min.js"></script>
 
 
<style>
/* Reset default styles */
html, body, ul {
	margin: 0;
	padding: 0;
}
 
/* Page layout */
body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
}
/* setting header */
.header-container {
	background-color: #00ff7f;
	padding: 20px;
	color: #ffffff;
}
 
h1.TopHeaderTitle {
	font-size: 35px;
	margin-bottom: 10px;
}
 
h1.isLogin {
	font-size: 14px;
	position: absolute;
	top: 10%;
	right: 0%;
}
 
.backhome {
	position: absolute;
	top: 24%;
	right: 0%;
}
</style>
<title>DeleatAccount</title>
</head>
<body>
	<div class="header-container">
		<h1 class="TopHeaderTitle">G-use</h1>
		<a class="isLogin">ログイン中:Bさん</a>
	</div>
 
	<h1>アカウント閲覧</h1>
 
 
	<label for="EntranceYear">入学年度</label>
	<select name="EntranceYear">
		<option value="2020">2020年</option>
		<option value="2021">2021年</option>
		<option value="2022">2022年</option>
		<option value="2023">2023年</option>
	</select>
	<br />
	<label for="department">学科</label>
	<select name="department">
		<option value="it">情報電子</option>
		<option value="machine">精密・機械</option>
		<option value="bio">バイオサイエンス</option>
		<option value="aviation">航空宇宙</option>
		<option value="reduction">柔道整復</option>
		<option value="economy">地域経済</option>
	</select>
	<br />
	<span onClick="document.all.item('moji1').style.visibility='visible'">
		<button type="button">検索</button>
	</span>
	<div id="moji1" style="visibility: hidden;">
		<table border="1">
			<tr>
				<th>id</th>
				<th>入学年度</th>
				<th>学科</th>
				<th>削除</th>
			</tr>
			<tr>
				<td>student1</td>
				<td>2020年</td>
				<td>情報電子</td>
				<td><a href="./DeleatAccountC">削除</a></td>
			</tr>
			<tr>
				<td>student2</td>
				<td>2020年</td>
				<td>情報電子</td>
				<td><a href="./DeleatAccountC">削除</a></td>
			</tr>
		</table>
	</div>
	<div class="backhome">
		<a href="./">ホーム</a>
	</div>
 
</body>
</html>