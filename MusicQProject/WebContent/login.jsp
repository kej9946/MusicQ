<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 부트스트랩 사용을 위한 외부파일 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- 부트스트랩 사용을 위한 외부파일 -->
<style>
.container-fluid {
  width: 50%;
  margin-top: 10px; /* Reduce the margin-top to 10px */
}

/* Add the following CSS rules */
.container-fluid > div:first-child {
  margin-bottom: 10px;
}

.row {
  border: 4px solid lightgray;
  padding: 10%;
}

.join {
  text-align: center;
}

img {
  margin: auto;
  display: block;
  width: 450px;
  margin-bottom: 10px; /* Add margin-bottom to create a gap */
}

.col-md-12 {
  padding-left: 0px;
  padding-right: 0px;
}

#loginForm{
margin-top: 12px;
}


</style>
</head>
<body>
	<div><img alt="MusicQ" src="./img/1logo.png"></div>
<form method="post" action="/MusicQProject/Login">
	
	
		<div class="container-fluid">
			<div class="input-group">
				<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
				<input id="userId" type="text" class="form-control" name="userId" 
				 placeholder="아이디를 입력하세요" required><br>
			</div>
			<div class="input-group">
				<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
				<input id="userPw" type="password" class="form-control"  name="userPw" 
				 placeholder="비밀번호를 입력하세요" required><br>
			</div>			
			<div class="col-md-12">
				<input type="submit" id="loginForm" value="로그인(Login)" class="btn btn-success col-xs-12"><br>
				<div><a href="join.jsp">회원가입</a></div>
				<a href="findId.jsp">아이디를 잊으셨나요?</a>
			</div>			
			</div>			
</form>


</body>
</html>
