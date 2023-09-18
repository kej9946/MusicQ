


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
</head>

<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
	padding: 20px;
}

h2 {
	color: #333333;
	margin-bottom: 20px;
}

form {
	background-color: #ffffff;
	border: 1px solid #cccccc;
	padding: 20px;
	max-width: 400px;
	margin: 0 auto;
}

label {
	display: block;
	margin-bottom: 10px;
}

input[type="text"] {
	width: 100%;
	padding: 10px;
	border: 1px solid #cccccc;
	border-radius: 4px;
	box-sizing: border-box;
	margin-bottom: 10px;
}

input[type="submit"] {
	background-color: #4caf50;
	color: #ffffff;
	padding: 10px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #45a049;
}
</style>

<body>


	<form action="findId" method="post">
		<h2>아이디 찾기</h2>
		<div>
			<label for="name">이름:</label> <input type="text" id="name" required
				name="name">
		</div>
		<div>
			<label for="phone">핸드폰 번호:</label> <input type="text" id="phone" required
				name="phone" placeholder="- 없이 입력하세요">
		</div>
		<div>
			<input type="submit" value="아이디 찾기">
		</div>
	</form>
</body>
</html>
