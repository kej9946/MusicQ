<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 등록하기</title>

 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>



<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">

<script>
	$(document).on('click', '#btnSave', function(e) {
		e.preventDefault();
		$("#form").submit();
		alert("문의글 등록이 완료되었습니다.");
	});

	$(document).on('click', '#btnList', function(e) {
		e.preventDefault();
		location.href = "${pageContext.request.contextPath}/Qna/qnaList.jsp";
	});
</script>

<style>
body {
	padding-top: 70px;
	padding-bottom: 30px;
}
h2 {
	font-weight:bold;
}
.form-control {
	height: 50px;
}
#lab {
	font-size: small;
}
</style>
</head>

<body>
	<article>
		<div class="container" role="main">
			<h2>문의글 작성</h2>
			<br>
			<form name="form" id="form" method="post"
				action="${pageContext.request.contextPath}/insert.do">
				
				<div class="mb-3">
					<label id="lab">제목*</label> <input type="text" size=10
						class="form-control" name="qnaTitle" id="qnaTitle"
						placeholder="제목을 입력해 주세요" required>
				</div>

				<div class="mb-3">
					<label id="lab">내용</label>
					<textarea class="form-control" rows="5" name="qnaCn" id="content"
						placeholder="내용을 입력해 주세요"></textarea>
				</div>
				<div class="mb-3">
					<label id="lab">TAG</label> <input type="text"
						class="form-control" name="tag" id="tag" placeholder="태그를 입력해 주세요(선택)">
				</div>
			</form>
			<div>

				<button type="submit" class="btn btn-sm btn-success" id="btnSave">저장</button>
				<button type="button" class="btn btn-sm btn-success" id="btnList">목록</button>
				<button type="button" class="btn btn-sm btn-success" id="btnList">취소</button>

			</div>
		</div>
	</article>
</body>
</html>