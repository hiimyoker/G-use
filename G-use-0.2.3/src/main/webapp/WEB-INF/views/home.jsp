<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Home</title>
		<link rel="stylesheet" href="resources/formstyle.css">
	</head>
	<body>
		<!-- header -->
		<div class="header-container">
			<h1 class="TopHeaderTitle">G-use</h1>
			<h1 class="isLogin">${message }</h1>
	    </div>
		  
		<!-- searching bar -->
		<div class="search-container">
			<h2>出品物検索
			<select id="search-dropdown" name="selectedItemtype">
			    <c:forEach var="itemtype" items="${Itemtypes}">
			        <option value="${itemtype.typeID}">${itemtype.itemType}</option>
			    </c:forEach>
			</select>



				<button id="search-button">検索</button>
				<form action="./logout" method="POST">
            <input type="submit" value="ログアウト" style="width: 300px; height: 70px; background-color: rgb(30, 255, 0);" /></form> <a href ="./mypage"> マイページ</a><a href="./addItems"> 出品物登録</a>
			</h2>
		  </div>
		<!-- 出品物表示 -->
		<div class="flex-box">
			</div>
			<a href="./exhibit" >
			<ul class="thumnail-right-box flex-box">
				<li>
				<a href="exhibit">
					<img src="https://placehold.jp/50x50.png"></a>
					<span class="image-name">商品①</span>
				  </li>
				  <li>
					<img src="https://placehold.jp/50x50.png">
					<span class="image-name">商品①</span>
				  </li>				<li>
					<img src="https://placehold.jp/50x50.png">
					<span class="image-name">商品①</span>
				  </li>				<li>
					<img src="https://placehold.jp/50x50.png">
					<span class="image-name">商品①</span>
				  </li>				<li>
					<img src="https://placehold.jp/50x50.png">
					<span class="image-name">商品①</span>
				  </li>				<li>
					<img src="https://placehold.jp/50x50.png">
					<span class="image-name">商品①</span>
				  </li>				<li>
					<img src="https://placehold.jp/50x50.png">
					<span class="image-name">商品①</span>
				  </li>				<li>
					<img src="https://placehold.jp/50x50.png">
					<span class="image-name">商品①</span>
				  </li>				<li>
					<img src="https://placehold.jp/50x50.png">
					<span class="image-name">商品①</span>
				  </li>				<li>
					<img src="https://placehold.jp/50x50.png">
					<span class="image-name">商品①</span>
				  </li>				<li>
					<img src="https://placehold.jp/50x50.png">
					<span class="image-name">商品①</span>
				  </li>				<li>
					<img src="https://placehold.jp/50x50.png">
					<span class="image-name">商品①</span>
				  </li>				<li>
					<img src="https://placehold.jp/50x50.png">
					<span class="image-name">商品①</span>
				  </li>				<li>
					<img src="https://placehold.jp/50x50.png">
					<span class="image-name">商品①</span>
				  </li>				<li>
					<img src="https://placehold.jp/50x50.png">
					<span class="image-name">商品①</span>
				  </li>				<li>
					<img src="https://placehold.jp/50x50.png">
					<span class="image-name">商品①</span>
				  </li>
			</ul>
		  </div>
		  </a>
	</body>
</html>