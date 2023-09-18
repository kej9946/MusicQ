<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뮤직큐</title>

<%
	String userId = (String) session.getAttribute("loginCode");
%>

<!-- <script type="text/javascript" src="/resource/script/web/common/jquery-1.9.1.min.js"></script> -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="https://cdnimg.melon.co.kr/static/web/resource/style/w1/av/i/qrguc73w.css"
	type="text/css" />
<link rel="stylesheet"
	href="https://cdnimg.melon.co.kr/static/web/resource/style/w1/ri/4/rw98ltzfrqdnf.css"
	type="text/css" />
<link rel="stylesheet"
	href="https://cdnimg.melon.co.kr/static/web/resource/style/w1/n4/y/b3ljt0mxu2fn6lq1q.css"
	type="text/css" />

</head>

<style>
.navigation_list {
	float: left;
	width: 142px;
	line-height: 40px;
	text-align: center;
}

.navigation_link {
	font-size: 16px;
	font-weight: bold;
	color: black;
	font-family: 'Noto Sans KR', sans-serif;
}

.sub_menu {
	width: 100%;
	height: 100px;
	background: rgba(3, 3, 3, 0);
	position: absolute;
	top: 40;
	left: 0;
	display: none;
}

.navigation_list:hover .sub_menu {
	display: block;
}

.navigation_link:hover {
	color: green;
}

#nav {
	margin-top: -10px;
}
</style>

<body>

	<div id="header" class="main">
		<div id="header_wrap" class="pr_none">
			<!-- 메인 컨텐츠 가운데 정렬을 위한 pr_none 클래스 추가 -->
			<div id="gnb" class="clfix">
				<!-- 상단 빠른 메뉴 -->
				<div id="util_menu">
					<p class="none">상단 빠른 메뉴</p>
					<div class="top_right ">
						<ul class="clfix">
							<li class="first_child"><a
								href="/MusicQProject/Ticket/tkPurchase.html" title="이용권구매"
								class="menu01 mlog" data=""><span>이용권구매</span></a></li>
							<li class="last_child"><a href="/MusicQProject/notice.do"
								title="공지사항" class="menu04 mlog" data=""><span>공지사항</span></a></li>
						</ul>
					</div>
				</div>
				<!-- //상단 빠른 메뉴 -->

				<!-- 검색어이미지 -->
				<h1>
				<%if(userId!=null){ %>
					<a href="/MusicQProject/WeatherMusicController"
						title="로고 - 홈으로 이동" class="mlog" data=""><img width="200"
						height="99" src="${pageContext.request.contextPath}/img/logo.png"
						alt="뮤직큐" /></a>
						<%}else{%>
							<a href="/MusicQProject/main.jsp"
									title="로고 - 홈으로 이동" class="mlog" data=""><img width="200"
									height="99" src="${pageContext.request.contextPath}/img/logo.png"
									alt="뮤직큐" /></a>
							<%
						}%>
				</h1>
				<script>
					$(document).on('click', '#search', function(e) {
						$("#form").submit();
					});
				</script>
				<!-- 통합검색 영역 -->
				<fieldset>
					<legend>통합검색영역</legend>
					<form action="./search.do" method="post">

						<input type="text" title="검색 입력 편집창" placeholder="검색어를 입력하세요 ♪♬"
							name="musicList" id="top_search" style="width: 249px" />
						<button type="submit" id="search" class="btn_icon search_m"
							title="검색">
							<span class="odd_span">검색</span>
						</button>
					</form>
				</fieldset>
				<!-- //통합검색 영역 -->

			</div>

			<!-- 메뉴바 -->
			<!-- navigation -->
			<div id="nav">
				<div class="nav_inner">
					<ul class="navigation clearfix">
						<li class="navigation_list"><a
							href="${pageContext.request.contextPath}/musiqChart/musicQChart.jsp"
							class="navigation_link">뮤직큐차트</a></li>
						<li class="navigation_list"><a
							href="${pageContext.request.contextPath}/themaMusic/themaList.jsp"
							class="navigation_link">테마음악</a></li>
						<li class="navigation_list"><a href="./dj/djpmain.do"
							class="navigation_link">뮤직큐DJ</a></li>
						<li class="navigation_list"><a
							href="${pageContext.request.contextPath}/listQna.do"
							class="navigation_link">문의사항</a></li>
						<li class="navigation_list"><a
							href="${pageContext.request.contextPath}/done.jsp"
							class="navigation_link">기부하기</a></li>
					</ul>
				</div>
			</div>
			<!-- //navigation -->
			<!-- /메뉴바 -->



		</div>
	</div>

</body>
</html>