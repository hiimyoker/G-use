<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>exhibit</title>
  <link rel="stylesheet" type="text/css" href="resources/formstyle.css"> 
  <script>
    document.addEventListener("DOMContentLoaded", function() {
      var img = document.getElementById("img");
      var fileInput = document.getElementById("file-input");
      
      img.addEventListener("click", function() {
        fileInput.click();
      });
    });
  </script>
</head>
<body>
  <!-- header -->
  <div class="header-container">
    <h1 class="TopHeaderTitle">G-use</h1>
    <h1 class="isLogin">ログイン中:Aさん</h1>
  </div>
  
  <!-- 出品登録フォーム -->
  <div class="exhibit-container">
    <h2>出品物編集</h2>
    <form class="form-container" action="add" method="POST">
      <div class="column1">
        <label for="date">期限</label>
        <input type="text" id="date" name="date">
        
        <label for="name">商品名</label>
        <input type="text" id="name" name="name">
        
        <label for="genre">ジャンル</label>
        <input type="text" id="genre" name="genre">
      </div>
 
      <div class="column2">
        <label for="img">写真</label>
        <img id="img" src="https://placehold.jp/200x200.png" style="cursor: pointer;">
        <input type="file" id="file-input" name="img" style="display: none;">
      </div>
	          
	  <div class="intro">
		<label for="intro">商品説明</label>
	    <input type="text" id="intro" name="intro">
	  </div>
	  <input type="submit" value="編集完了">
    </form>
  </div>
</body>
</html>