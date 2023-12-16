<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page</title>
<style>
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
    font-size: 30px;
    text-align: right;
  }
  a.islogout{
   font-size: 20px;
  position: fixed;
	top: 160px;
	right: 100px;
	color:#ffffff;
  }
 
	a.addacount{
	  font-size: 25px;
  position: fixed;
	top: 300px;
	right: 100px;
	}
  a.showacount{
    font-size: 25px;
  position: fixed;
	top: 350px;
	right: 100px;
  }
  /* setting searching bar */
  .search-container {
    display: flex;
    align-items: center;
    justify-content:center;
    
  }
  
  #search-dropdown {
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    margin-right: 10px;
  }
  
  #search-input {
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    margin-right: 10px;
  }
   
  #search-button {
    padding: 10px 20px;
    background-color: #00ff7f;
    color: #333;
    border: none;
    border-radius: 5px;
    cursor: pointer;
  }
#title {
    font-size: 35px;
    margin-bottom: 10px;
  }
  #box select{
  width:100px;
  font-size:25;
  }
  a:hover {
	color: #ff7043;
}
  
</style>
</head>
<body>
<!-- header -->
		<div class="header-container">
			<h1 class="TopHeaderTitle">G-use</h1>
			<h1 class="isLogin">管理者ページへようこそ</h1>
			<a class="islogout"href="./logout">ログアウト</a>
			<a class="addacount"href="./AddAccount">アカウント追加</a>
			<a class="showacount"href="./DeleatAccount">アカウント閲覧</a>
			</div>
		<div class="search-container">
			<h2>出品物検索
				<select id="search-dropdown">
					<option value="option1">家電</option>
					<option value="option2">家具</option>
					<option value="option3">本</option>
				</select>
				<button id="search-button">検索</button>
			</h2>
		  </div>
 
 </body>
 </html>