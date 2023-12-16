<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <title>評価画面</title>
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
  <div class="rating-container">
    <div>
      <select class="pointdropdown">
        <!-- ドロップダウンボックスの選択肢を定義します -->
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
      </select>
      <span class="rating-label">/5</span>
    </div>
    <input type="text" class="comenttextbox" placeholder="コメント(任意)">
  </div>
  <div class="hyoukatxt">
    <p>出品者を5段階で評価してください</p>
  </div>
  <button class="final-button"　type="button"onclick="location.href='./end'">取引終了</button>
</body>
</html>