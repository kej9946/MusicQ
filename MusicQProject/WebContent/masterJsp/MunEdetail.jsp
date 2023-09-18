<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>문의사항 상세 정보</title>
<style>
/* Add your CSS styles here */
body {
	font-family: Arial, sans-serif;
	background-color: #f5f5f5;
	padding: 20px;
}

h1 {
	color: #333;
}

table {
	border-collapse: collapse;
	width: 100%;
	max-width: 500px;
	margin-top: 20px;
}

th, td {
	padding: 10px;
	border-bottom: 1px solid #ddd;
}

th {
	text-align: left;
}

.reply-section {
	margin-top: 20px;
}

.reply-form {
	display: flex;
	margin-bottom: 10px;
}

.reply-input {
	flex: 1;
	padding: 5px;
}

.reply-submit {
	padding: 5px 10px;
	background-color: #4CAF50;
	color: #fff;
	border: none;
	cursor: pointer;
}
</style>
</head>
<body>
	<h1>문의사항 상세 정보</h1>

	<%-- Retrieve the "munE" object from the request --%>
	<%@ page import="musicq.vo.QnaVO"%>
	<%
		QnaVO munE = (QnaVO) request.getAttribute("munE");
	%>

	<%-- Display the details of the "munE" object --%>
	<table>
		<tr>
			<th>게시글 번호:</th>
			<td><%=munE.getQnaNo()%></td>
		</tr>
		<tr>
			<th>제목:</th>
			<td><%=munE.getQnaTitle()%></td>
		</tr>
		<tr>
			<th>문의자:</th>
			<td><%=munE.getMemId()%></td>
		</tr>
		<tr>
			<th>일시:</th>
			<td><%=munE.getQnaDt()%></td>
		</tr>
		<tr>
			<th>내용:</th>
			<td><%=munE.getQnaCn()%></td>
		</tr>

		<%
			String replyContent = munE.getQnaReply();
		if (replyContent != null && !replyContent.isEmpty()) {
		%>
		<tr>
			<th>답글:</th>
			<td><%=replyContent%></td>
		</tr>
		<%
			}
		%>

	</table>

	<div class="reply-section">
		<h2>답글 달기</h2>
		<form class="reply-form" action="/MusicQProject/reply_munE"
			method="post">
			<textarea class="reply-input" name="replyContent" rows="3"
				placeholder="답글 내용을 입력하세요"></textarea>
			<input type="hidden" name="qTitle" value="<%=munE.getQnaTitle()%>">
			<button class="reply-submit" type="submit">답글 작성</button>
		</form>
	</div>


	<button onclick="goBack()">돌아가기</button>

	<script>
		function goBack() {
			window.history.back();
		}
	</script>
</body>
</html>

</body>
</html>
