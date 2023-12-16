<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
.title{
text-align:center;
}
.backhome {
	position: absolute;
	top: 24%;
	right: 0%;
}
.input{
    margin-left: auto;
    margin-right: auto;
    width: 20em
}
</style>
<title>AddAcount</title>
</head>
<body>
<div class="header-container">
		<h1 class="TopHeaderTitle">G-use</h1>
		<a class="isLogin">ログイン中:Bさん</a>
	</div>
	<div>
<h1 class="title">アカウント追加</h1>
</div>
<div class="input">
 <label for="id">id</label>
  <input type="text" name="id" size="15"/><br />
 <label for="pass">パスワード</label>
  <input type="password" name="pass" size="15"/><br />
  <label for="EntranceYear">入学年度</label>
  <select name="EntranceYear">
  <option value="2020">2020年</option>
  <option value="2021">2021年</option>
  <option value="2022">2022年</option>
  <option value="2023">2023年</option>  
  </select><br />
  <label for="department">学科</label>
  <select name="department">
  <option value="it">情報電子</option>
  <option value="machine">精密・機械</option>
  <option value="bio">バイオサイエンス</option>
  <option value="aviation">航空宇宙</option>
  <option value="reduction">柔道整復</option>
  <option value="economy">地域経済</option>
  </select><br />
<button type="button" onclick="location.href='./AddAccountC'">追加</button>
</div>
<div class="backhome">
		<a href="./managementHome">ホーム</a>
	</div>
<body>
 
</body>
</html>