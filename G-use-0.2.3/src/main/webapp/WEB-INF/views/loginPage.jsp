<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page</title>
<style>
#title {
	background: #1da1f3;
	font-size: 30px;
	font-family:"MS P明朝";
	 
    background-color: #00ff7f;
    padding: 20px;
    color: #ffffff;
  
  
 
    font-size: 35px;
    margin-bottom: 10px;
  
}
#login{
    display: flex;
    align-items: center;
    justify-content: center;
font-size:20px;
{font-family:'メイリオ','ヒラギノ角ゴ Pro W3','ＭＳ Ｐゴシック',sans-serif;}
 
}
 #search-container{
    display: flex;
    align-items: center;
    justify-content: center;
 
 }
 #button {
  display: flex;
    align-items: center;
    justify-content: center;
font-size:20px;
 }
</style>
</head>
<body>
<div id=title>
 
	<p>G-use</p>
	</div>
	
	<div id="login">
	<h1>ログイン</h1><br/>
	<p>
		<span style="color: #F00;">${message }</span>
	</p>
	<!-- リクエストスコープからエラーメッセージを受け取る -->
    <%String failureMessage = (String)request.getAttribute("loginFailure"); %>

    <!-- エラーメッセージが存在するときだけ表示する -->
    <% if (failureMessage != null) {%>
      <%=failureMessage %>
    <%} %>
</div>
	<div id="search-container" >
	<form action="login" method="POST">
		<label for="id">ログインid　</label> <input type="text" name="id" size="15" /><br/>
		<label for="pass">パスワード</label> <input type="password" name="pass"
			size="15" /><br /> <div id="button"><input type="submit" value="ログイン" /></div>
			
	</form>
	</div>
	
</body>
</html>