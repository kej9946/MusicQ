<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>비밀번호 찾기</title>
</head>

<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
	padding: 20px;
}

h1 {
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

input[type="email"] {
	width: 100%;
	padding: 10px;
	border: 1px solid #cccccc;
	border-radius: 4px;
	box-sizing: border-box;
	margin-bottom: 20px;
}

input[type="submit"] {
	background-color: #4caf50;
	color: #ffffff;
	padding: 10px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	margin-top: 10px;
}

input[type="submit"]:hover {
	background-color: #45a049;
}
</style>

<body>
  
    <form method="post" action="findpw">
        <h1>비밀번호 찾기</h1>
        <label for="email">이메일:</label>
        <input type="email" id="email" name="email" required>
        <br>
        <br>
        <input type="submit" value="비밀번호 찾기">
    </form>

</body>
</html>
