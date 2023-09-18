<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.List"%>
<%@ page import="musicq.vo.MusicVO"%>

<!DOCTYPE html>
<html>
<head>
<title>관리자 모드</title>
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
	text-align: left;
}

.admin-table td {
	word-break: break-all;
	text-align: left;
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
	margin-top: 10px;
	text-align: center;
}

.pagination a, .pagination .current-page {
	display: inline-block;
	padding: 5px 10px;
	border: 1px solid #ddd;
	border-radius: 3px;
	margin-right: 5px;
	color: #000;
	text-decoration: none;
}

.pagination a:hover {
	background-color: #2ecc71;
	color: #fff;
}

.pagination .current-page {
	background-color: #2ecc71;
	color: #fff;
}
</style>
</head>
<body>
	<header>
		<!-- 관리자 페이지 헤더 -->
		<h1>관리자 모드</h1>
	</header>

	<main>
		<aside>
			<!-- 좌측 메뉴 -->
			<ul>
				<li><a href="/MusicQProject/admin_member">멤버 관리</a></li>
				<li><a href="/MusicQProject/admin_music">음악 관리</a></li>
				<li><a href="/MusicQProject/admin_gongji">공지 사항</a></li>
					<li><a href="/MusicQProject/admin_munE">문의 사항</a></li>
				<li><a href="/MusicQProject/Logout">Logout</a></li>
			</ul>
		</aside>

		<section>
			<!-- 페이지 콘텐츠 -->
			<!-- 멤버 관리 표 -->
			<table class="admin-table">
				<tr>
					<th>음악제목</th>
					<th>장르</th>
					<th>정보</th>
					<th>Actions</th>
					<!-- 추가: 동작 열 -->
				</tr>
				<%-- 멤버 리스트 출력 부분 --%>
				<%
					// 멤버 리스트 가져오기    
				List<MusicVO> musicList = (List<MusicVO>) request.getAttribute("pagedMusicList");
				// 멤버 리스트가 존재하는 경우에만 출력
				if (musicList != null && !musicList.isEmpty()) {
					for (MusicVO music : musicList) {
				%>
				<tr>
					<td><%=music.getmNm()%></td>
					<td><%=music.getmGenre()%></td>
					<td><%=music.getmAlbum()%></td>
					<td>
						<form action="delete_music" method="post" style="display: inline;"
							onsubmit="return confirmDelete();">
							<input type="hidden" name="mnm" value="<%=music.getmNm()%>">
							<button type="submit">Delete</button>
						</form>
					</td>
				</tr>
				<%
					}
				} else {
				%>
				<tr>
					<td colspan="4">음악 없음.</td>
				</tr>
				<%
					}
				%>
			</table>

			<script>
				function confirmDelete() {
					return confirm("정말로 해당 음악을 삭제하시겠습니까?");
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
	</main>
</body>
</html>