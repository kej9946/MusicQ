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
<meta charset="UTF-8">
<title>글 등록하기</title>

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">

<style>
.container {
	margin-top: 50px;
}

.table>thead>tr>th,
.table>tbody>tr>th {
	background-color: #e6ecff;
	text-align: center;
}

#btn {
	text-align: center;
	margin-top: 20px;
}

#commentSection {
	margin-top: 30px;
}

.comment {
	margin-bottom: 15px;
	border: 1px solid #ccc;
	padding: 10px;
}

.comment .info {
	margin-bottom: 10px;
}

.comment .content {
	margin-bottom: 10px;
}

#footer{
	margin-top: 25px;
}
#qnaTitle {
	width:100%;
}
</style>

<script>
$(document).ready(function() {
	let writerId = '<%=vo.getMemId() %>';
	let loginId = '<%=session.getAttribute("loginCode")%>';
	if (writerId !== loginId) {
		$('#btnModif').hide();
		$('input[value=삭제]').hide();
	}
});

$(document).on('click', '#btnModif', function(e) {
	let writerId = '<%=vo.getMemId() %>';
	let loginId = '<%=session.getAttribute("loginCode")%>';
	if (writerId !== loginId) {
		alert("수정할 권한이 없습니다.");
	} else {
		$("#form").submit();
		alert("수정 완료되었습니다.");
	}
});

$(document).on('click', '#btnList', function(e) {
	location.href = "${pageContext.request.contextPath}/listQna.do";
});

function btnDelete() {
	let writerId = '<%=vo.getMemId() %>';
	let loginId = '<%=session.getAttribute("loginCode")%>';
	if (writerId !== loginId) {
		alert("삭제할 권한이 없습니다.");
		location.href = "${pageContext.request.contextPath}/listQna.do";
	} else if (confirm("삭제하시겠습니까?")) {
		location.href = "${pageContext.request.contextPath}/delete.do?qnaTitle=<%=vo.getQnaTitle()%>";
		alert("삭제가 완료되었습니다.");
		location.href = "${pageContext.request.contextPath}/delete.do?qnaTitle=<%=vo.getQnaTitle()%>";
	}
}
</script>

</head>

<body>
	<article>
		<div class="container" role="main">
			<form name="form" id="form" method="post"
				action="${pageContext.request.contextPath}/update.do">
				<table class="table table-striped table-bordered">
					<thead>
						<tr>
							<th width="30%">글번호</th>
							<td width="70%" name="qnaNo" id="qnaNo"><%=vo.getQnaNo() %></td>
						</tr>
						<tr>
							<th width="30%">작성자</th>
							<td width="70%"><%=vo.getMemId()%></td>
						</tr>
						<tr>
							<th width="30%">작성일자</th>
							<td width="70%"><%=vo.getQnaDt() %></td>
						</tr>
						<tr>
							<th>제목</th>
							<td><input type="text" id="qnaTitle" name="qnaTitle" value="<%=vo.getQnaTitle() %>"/></td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th>내용</th>
							<td colspan="2">
								<textarea class="form-control" rows="6" name="qnaCn" id="qnaCn"><%=vo.getQnaCn() %></textarea>
							</td>
						</tr>
					</tbody>
				</table>
			</form>
			
					<div id="commentSection">
				<h4>문의 답변</h4>
				<div class="comment">
					<div class="info">
						관리자 :
						<span class="date"></span>
					</div>
					<div class="content">
						<td width="50%"><%=vo.getQnaReply() %></td>
					</div>
				</div>
			</div>
			
			
			<div id="btn">
				<button type="submit" class="btn btn-success" id="btnModif">수정완료</button>
				<input type="button" value="삭제" class="btn btn-success" onclick="btnDelete()">
				<button type="submit" class="btn btn-success" id="btnList">목록</button>
			</div>

	
		</div>
	</article>
</body>

<!-- footer -->
<div id="footer" class="pr_none">
	<div id="popNotice" class="wrap_pop_notice MELONUIT-738"></div>
	<div class="footer_cont">
		<div class="footer_menu"></div>
		<p>
			<span class="first"><strong>대덕인재개발원 </strong>&nbsp;&nbsp;대전 중구 오류동 846</span>
			<span>담임 : 배미숙</span>
			<span class="first">담임 전화 : 010-0000-0000</span>
			<span>이메일 : <a href="https://www.ddit.or.kr/room" class="btn_footer_mail">bms@naver.com</a></span>
			<span>사업자 : 재단법인 대덕인재개발원</span>
			<span><a href="https://www.ddit.or.kr/room" class="btn_footer_mail" target="_blank">© 대덕인재Corp.</a></span>
		</p>
	</div>
</div>
<!-- //footer -->

</html>
