<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
  <title>exhibit</title>
  <link rel="stylesheet" href="resources/formstyle.css">
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
  <f:form action="add" method="POST" modelAttribute="RegistItemForm">
  <div class="exhibit-container">
    <h2>出品</h2>
    <form class="form-container" action="add" method="POST">
      <div class="column1">
        <label for="term">期限</label>
        <input type="text" id="term" name="term">
        
        <label for="itemname">商品名</label>
        <input type="text" id="itemname" name="itemname">
        
        <label for="itemtype">ジャンル</label>
 <br>
        <br />
      </div>
 
      <div class="column2">
        <label for="img">写真</label>
        <img id="img" src="https://placehold.jp/200x200.png" style="cursor: pointer;">
        <input type="file" id="file-input" name="img" style="display: none;">
      </div>
	          
	  <div class="itemdiscripition">
		<label for="itemdiscripition">商品説明</label>
	    <input type="text" id="itemdiscripition" name="itemdiscripition">
	  </div>
	  <input type="submit" value="出品">
    </form>
  </div>
  </f:form>
</body>
</html>