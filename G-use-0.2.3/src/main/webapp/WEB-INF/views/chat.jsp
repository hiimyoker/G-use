<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
  <title>チャット</title>
  <link rel="stylesheet" type="text/css" href="resources/view.css"> 
  
</head>
<body>
    <div class="header-container">
        <h1 class="TopHeaderTitle">G-use</h1>
        <h1 class="isLogin">ログイン中:Aさん</h1>
    </div>
    <p>
      <div style="text-align: right;">
        <a href="./home.html"><big><strong>ホーム</strong></big></a>
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
      <div
			style="border: 3px solid; margin-left: 0.5em; width: 900px; height: 200px;">○○社製の(商品名)です。2年間使用しました。よろしくお願いします。</div>
  <div class="chat-container">
    <div class="message-area" id="messageArea">
      <!-- メッセージが表示されるエリア -->
    </div>
  </div>
  <div class="input-area">
<c:forEach var="ch" items="${result}">
 <p>${ch.comment}(by${ch.user.userid },${ch.chatDate})</p>
 </c:forEach>
<form action="./chater" method="POST">
  <textarea id="message" name="message" required>こんにちわ!</textarea>
  <input type="submit" value="送信" />
</form>
	 
  </div>
  
  <button class="stop-button" onclick="location.href='./stop'">中止</button>
   <button class="end-button" onclick="location.href='./evaluation'">取引終了</button>
</body>
</html>