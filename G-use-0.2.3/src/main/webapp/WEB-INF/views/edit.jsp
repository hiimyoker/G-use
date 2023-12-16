<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>出品物</title>
<link rel="stylesheet" type="text/css" href="resources/view.css">
</head>
<body>
<c:if test="${formMode==1 }">
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
			<img class="image" src="resources/OIP.jpg" alt="写真" width=30%,height=50%>
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
			<button name="startchat"　type="button"onclick="location.href='./editItems'"
				style="width: 300px; height: 70px; 　background-color: rgb(30, 255, 0)">
				<font size="6"><big><strong>編集</strong></big></font>
			</button>
			<br/>
			<button name="startchat"　type="button"onclick="location.href='./deleteCon'"
				style="width: 300px; height: 70px; 　background-color: rgb(30, 255, 0)">
				<font size="6"><big><strong>削除確認</strong></big></font>
			</button>
			
		</div>
		</p>
	</div>
	</c:if>
	<c:if test="${formMode==2}">
<h1>削除確認画面</h1>
<p>商品を削除しますか?</p>
 
<button type="button"onclick="location.href='./delete'"
				style="width: 300px; height: 70px; 　background-color: rgb(30, 255, 0)">
				<font size="6"><big><strong>削除</strong></big></font>
			</button>
 
	</c:if>
</body>
</html>