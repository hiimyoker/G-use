<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
 
.title {
	text-align: center;
}
 
.backhome {
	position: absolute;
	top: 24%;
	right: 0%;
}
</style>
<title>DeleatAccountC</title>
</head>
<body>
<div class="header-container">
		<h1 class="TopHeaderTitle">G-use</h1>
		<a class="isLogin">ログイン中:Bさん</a>
	</div>
<div class="title">
<h1>アカウント削除</h1>
</div>
<div class="input">
<p>ID  student1</p>
<p>入学年度　2020年</p>
<p>学科　情報電子工学科</p>
<p>このアカウントを削除しますか</p>
<button type="button" onclick="location.href='./managementHome'">削除</button>
<button type="button" onclick="location.href='./DeleatAccount'">戻る</button>
</div>
</body>
</html>