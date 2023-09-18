<%@page import="java.util.List"%>
<%@page import="musicq.vo.QnaVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 헤더영역 -->
<%@include file="./header.jsp"%>

<%
	QnaVO vo = (QnaVO) request.getAttribute("vo");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<title>글 수정하기</title>

<!-- 부트스트랩  css-->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery  -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>

<!-- 부트스트랩 js  -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- 버튼 눌렀을 때  -->
<script>
	$(document).on('click', '#btnSave', function(e) {
		e.preventDefault();
		$("#form").submit();
		alert("문의글 수정이 완료되었습니다.");

	});

	$(document).on('click', '#btnList', function(e) {
		e.preventDefault();
		location.href = "${pageContext.request.contextPath}/Qna/qnaList.jsp";
	});
</script>


<style>
#contentForm {
	width: 60%;
	margin: 0 auto;
	padding-top: 12%;
}

.table>thead>tr>th, .table>tbody>tr>th {
	background-color: #e6ecff;
	text-align: center;
}
</style>
</head>

<body>
	<article>
		<div class="container">
		<h2>문의글 수정</h2>
		<br>
	<form action="<%=request.getContextPath()%>/update.do" method="post" id="form">
		<div id="contentForm">
				<table class="table table-striped table-bordered">
					<thead>
						<tr>
							<th width="30%">글번호</th>
						</tr>
						<tr>
							<th width="30%">작성자</th>
							<td width="70%"><% session.getAttribute("loginCode");%></td>
						</tr>
						<tr>
							<th width="30%">작성일자</th>
						</tr>
						<tr>
							<th style="padding-top: 15px">제목</th>
							<td><input type="text" name="qnaTitle"></td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th>내용</th>
							<td colspan="2"><textarea class="form-control" rows="20" name="content"></textarea></td>
						</tr>
					</tbody>
				</table>
			</div>
	</form>
			<div>
				<button type="submit" class="btn btn-success" id="btnSave">저장</button>
				<button type="reset" class="btn btn-success" id="btnCancel">취소</button>
				<button type="button" class="btn btn-success" id="btnList">목록</button>
			</div>
			</div>
	</article>
</body>
</html>
