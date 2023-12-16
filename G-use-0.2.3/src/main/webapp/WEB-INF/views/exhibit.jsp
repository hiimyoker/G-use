<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>出品物</title>
<link rel="stylesheet" type="text/css" href="resources/view.css">
</head>
<body>
	<div style="background-color: white;">
		<div class="header-container">
			<h1 class="TopHeaderTitle">G-use</h1>
			<h1 class="isLogin">ログイン中:Aさん</h1>
		</div>
		<p>
		<div style="text-align: right;">
			<a href="./home"><big><strong>ホーム</strong></big></a>
		</div>
		</p>
		<div style="text-align: center;">
			<img src="monitor.png" width="300" height="300">
		</div>
		<p>
		<div style="margin-left: 0.5em;">
			<font size="5"><big><strong>モニター</strong></big></font> 出品者:Bさん <font
				color="red">あと30日</font>
		</div>
		</p>
		<p>
		<div
			style="border: 3px solid; 　margin-left: 0.5em; width: 900px; height: 200px;">○○社製の(商品名)です。2年間使用しました。よろしくお願いします。</div>
		<div style="text-align: right;">
 			<form action="./chat" method="GET">
			<input type="submit" value="取引開始" style="width: 300px; height: 70px; background-color: rgb(30, 255, 0);" />
			</form>		
		</div>
		</p>
	</div>
</body>
</html>