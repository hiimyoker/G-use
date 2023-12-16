<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <title>マイページ</title>
 		 <link rel="stylesheet" type="text/css" href="resources/view.css"> 
<style>
 
    .touroku {
        position: absolute;
        top: 150px;
        left: 1000px;
    }
 
    .gotohome {
        position: absolute;
        top: 150px;
        left: 1200px;
    }
 
    .rogout {
        position: absolute;
        top: 150px;
        left: 1350px;
    }
</style>
</head>
<body>
    <div class="header-container">
        <h1 class="TopHeaderTitle">G-use</h1>
        <h1 class="isLogin">ログイン中:Aさん</h1>
    </div>
    <h1>マイページ</h1>
    <div class="hikitoritxt">
        <p>引き取り物</p>
      </div>
 
<a href="./exhibit">
      <div class="hikitori">
        <img src="https://placehold.jp/150x150.png">
        <p>商品1</p>
      </div> </a> 
      
    <div class="syuppinntxt">
        <p>出品物</p>
      </div>
    
     <a href="./edit">
      <div class="syuppinn">
        <img src="https://placehold.jp/150x150.png">
        <p>商品1</p>
      </div></a>
 
<a href="./addItems">
      <div class="touroku">
        <p>出品物登録</p>
      </div></a>
 
<a href="./home">
      <div class="gotohome">
        <p>ホーム</p>
      </div></a>
 
<a href="./logout">
      <div class="rogout">
        <p>ログアウト</p>
      </div></a>
</body>
</html>