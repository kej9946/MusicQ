<%@page import="musicq.vo.DjPageVO"%>
<%@page import="musicq.dj.service.DjPageServiceImpl"%>
<%@page import="musicq.dj.service.IDjPageService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	DjPageVO djpv = (DjPageVO) session.getAttribute("djpCode");
%>


<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap demo</title>

<!--부트스트랩  -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">

<!-- 제이쿼리 스크립트  -->
<script type="text/javascript"
	src="/resource/script/web/common/jquery-1.9.1.min.js"></script>

<script type="text/javascript"
	src="/resource/script/web/common/jquery-1.9.1.min.js"></script>

<style>
#loginbox {
	position: fixed;
	top: 200px;
	right: 80px;
	/* bottom: 500px; */
	width: 250px;	
	background-color: #f8f9fa;
	/* border-left: 1px solid #dee2e6; */
}
</style>

</head>
<body>
	<div class="card" id="loginbox" style="width: 18rem;">
		<div class="card-body">
			<h5 class="card-title"><%=session.getAttribute("loginCode")%>님
			</h5>
			<h6 class="card-subtitle mb-2 text-muted"><%=session.getAttribute("djpCode")%></h6>
			<a href="/MusicQProject/mypage2" class="card-link">마이페이지</a> <a
				href="/MusicQProject/Logout" class="card-link">로그아웃</a>
		</div>
	</div>


	<!--부트스트랩  -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>
</body>
</html>