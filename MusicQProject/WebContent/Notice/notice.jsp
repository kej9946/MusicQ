<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.List"%>
<%@ page import="musicq.vo.GongjiVO"%>

<%@include file="/header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<!-- CSS 스타일시트 -->
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	overflow: hidden;
}

header {
	background-color: #2ecc71;
	padding: 20px;
	color: #fff;
}

main {
	display: flex;
	height: 100vh;
}

aside {
	background-color: #c9f7d5;
	width: 250px;
	padding: 20px;
	overflow-y: auto;
}

aside ul {
	list-style-type: none;
	padding: 0;
	margin: 0;
}

aside ul li {
	margin-bottom: 10px;
}

aside ul li a {
	color: #000;
	text-decoration: none;
	display: block;
	padding: 15px;
	border-radius: 5px;
	transition: background-color 0.3s ease;
}

aside ul li a:hover {
	background-color: #2ecc71;
	color: #fff;
}

section {
	flex: 1;
	padding: 20px;
	overflow-y: auto;
}

h2 {
	color: #2ecc71;
	margin-bottom: 20px;
}

.admin-table {
	width: 100%;
	border-collapse: collapse;
	margin-bottom: 20px;
}

.admin-table th, .admin-table td {
	padding: 12px;
	border-bottom: 1px solid #ddd;
}

.admin-table th {
	background-color: #2ecc71;
	color: #fff;
	text-align: center;
}

.admin-table td {
	word-break: break-all;
	text-align: center;
}

.admin-table td:first-child, .admin-table th:first-child {
	padding-left: 0;
}

.admin-table td:last-child, .admin-table th:last-child {
	padding-right: 0;
}

.admin-table td, .admin-table th {
	width: 30%;
}

.admin-table td:nth-child(2), .admin-table th:nth-child(2) {
	width: 30%;
}

.pagination {
	margin-top: 50px;
	margin-right: 100px;
	text-align: center;
}

.pagination a {
	display: inline-block;
	margin: 0 5px;
	padding: 5px 10px;
	border: 1px solid #ccc;
	border-radius: 3px;
	text-decoration: none;
	color: #333;
}

.pagination a.current-page {
	background-color: #2ecc71;
	color: #fff;
}

.pagination a:hover {
	background-color: #2ecc71;
	color: #fff;
}

.admin-table tr:hover {
	background-color: lightgray;
}
</style>


<body>

	<section>
		<!-- 페이지 콘텐츠 -->
		<!-- 공지사항 관리 표 -->
		<table class="admin-table">
			<tr>
				<th>게시글번호</th>
				<th>제목</th>
				<th>일시</th>
			</tr>
			<%-- 공지사항 리스트 출력 부분 --%>
			<%
				// 공지사항 리스트 가져오기    
			List<GongjiVO> gList = (List<GongjiVO>) request.getAttribute("gList");
			// 공지사항 리스트가 존재하는 경우에만 출력
			if (gList != null && !gList.isEmpty()) {
				for (GongjiVO gongji : gList) {
			%>
			<tr onclick="goToDetailPage(<%=gongji.getgNo()%>)">
				<td><%=gongji.getgNo()%></td>
				<td><%=gongji.getgTitle()%></td>
				<td><%=gongji.getgDt()%></td>
			</tr>
			<%
				}
			} else {
			%>
			<tr>
				<td colspan="3">공지사항 없음.</td>
			</tr>
			<%
				}
			%>
		</table>

		<script>
	function goToDetailPage(gNo) {
		 window.location.href = 'detail_notice.do?gNo=' + gNo;
	}
</script>



		<div class="pagination">
			<%-- 이전 페이지 링크 --%>
			<%
				int currentPage = (int) request.getAttribute("currentPage");
			int totalPages = (int) request.getAttribute("totalPages");
			if (currentPage > 1) {
			%>
			<a href="?page=<%=currentPage - 1%>">&laquo; 이전</a>
			<%
				}
			%>

			<%-- 페이지 번호 링크 --%>
			<%
				for (int i = 1; i <= totalPages; i++) {
			%>
			<%
				if (i == currentPage) {
			%>
			<span class="current-page"><%=i%></span>
			<%
				} else {
			%>
			<a href="?page=<%=i%>"><%=i%></a>
			<%
				}
			%>
			<%
				}
			%>

			<%-- 다음 페이지 링크 --%>
			<%
				if (currentPage < totalPages) {
			%>
			<a href="?page=<%=currentPage + 1%>">다음 &raquo;</a>
			<%
				}
			%>
		</div>

	</section>
</body>

	<!-- footer -->
		<div id="footer" class="pr_none">

			<div id="popNotice" class="wrap_pop_notice MELONUIT-738"></div>
			<div class="footer_cont">
				<div class="footer_menu"></div>

				<p>
					<span class="first"><strong>대덕인재개발원 </strong>&nbsp;&nbsp;대전
						중구 오류동 846</span> <span>담임 : 배미숙</span> <span class="first">담임 전화
						: 010-0000-0000</span> <span>이메일 : <a
						href="https://www.ddit.or.kr/room" class="btn_footer_mail">bms@naver.com</a></span>
					<span>사업자 : 재단법인 대덕인재개발원</span> <span><a
						href="https://www.ddit.or.kr/room" class="btn_footer_mail"
						target="_blank">© 대덕인재Corp.</a></span>
				</p>

				<!-- //footer -->
</html>
