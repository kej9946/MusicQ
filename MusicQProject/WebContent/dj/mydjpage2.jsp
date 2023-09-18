<%@page import="musicq.dj.dao.DjPageDaoImpl"%>
<%@page import="musicq.dj.service.DjPageServiceImpl"%>
<%@page import="musicq.dj.service.IDjPageService"%>
<%@page import="musicq.vo.DjPageVO"%>
<%@page import="java.util.List"%>
<%@page import="musicq.vo.MusicVO"%>
<%@page import="musicq.music.service.MusicServiceIpml"%>
<%@page import="musicq.music.service.IMusicService"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String uId = (String) session.getAttribute("loginCode");
DjPageVO djpv = (DjPageVO) request.getAttribute("djpv");
%>

<!doctype html>

<html lang="en" data-bs-theme="auto">

<head>
<script src="/docs/5.3/assets/js/color-modes.js"></script>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.111.3">
<title>MusicQ My DJ Page</title>
<!-- 제이쿼리 스크립트  -->
<script type="text/javascript"
	src="/resource/script/web/common/jquery-1.9.1.min.js"></script>

<!-- 부트스트랩 앨범 디자인 스크립트  -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.3/examples/album/">

<!-- 구글 폰트 스크립트  -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Fira+Sans&display=swap"
	rel="stylesheet">


<!-- Favicons -->
<link rel="apple-touch-icon"
	href="/docs/5.3/assets/img/favicons/apple-touch-icon.png"
	sizes="180x180">

<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-32x32.png"
	sizes="32x32" type="image/png">

<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-16x16.png"
	sizes="16x16" type="image/png">

<link rel="manifest" href="/docs/5.3/assets/img/favicons/manifest.json">
<link rel="mask-icon"
	href="/docs/5.3/assets/img/favicons/safari-pinned-tab.svg"
	color="#712cf9">
<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon.ico">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<meta name="theme-color" content="#712cf9">


<style>
#loginbox2 {
	margin-top: 20px;
	margin-left: 73%;
	/* bottom: 500px; */
	width: 250px;
	background-color: #f8f9fa;
	letter-spacing: 1.5px;
}

#loginboxtext {
	text-align: center;
	text-decoration: none;
	line-height: 25px;
	margin-top: 15px;
	margin-bottom: 5px;
}

#loginbox {
	text-align: center;
	margin-top: 20px;
	margin-left: 73%;
	/* bottom: 500px; */
	width: 250px;
	background-color: #f8f9fa;
	line-height: 25px;

	/* border-left: 1px solid #dee2e6; */
}

/*상단으로올라가는버튼  */
#btnTop {
	display: none; /* 초기에는 버튼을 숨김 */
	position: fixed; /* 버튼 위치를 고정 */
	bottom: 300px; /* 하단에서 300px 떨어진 위치 */
	right: 30px; /* 우측에서 30px 떨어진 위치 */
	font-size: 14px; /* 버튼 글꼴 크기 */
	line-height: 1.1; /* 버튼 높이 */
	border: none; /* 테두리 제거 */
	background-color: #555; /* 배경색 */
	color: #fff; /* 글자색 */
	padding: 10px; /* 내부 여백 */
	border-radius: 10%; /* 둥근 모서리 */
	cursor: pointer;
	border: none; /* 테두리 제거 */
	background-color: #555; /* 마우스 커서 모양 */
}

#btnTop:hover {
	background-color: rgb(000, 206, 060); /* 마우스를 올리면 배경색 변경 */
}

.bi {
	vertical-align: -.125em;
	fill: currentColor;
}

.btn-bd-primary { -
	-bd-violet-bg: #712cf9; -
	-bd-violet-rgb: 112.520718, 44.062154, 249.437846; -
	-bs-btn-font-weight: 600; -
	-bs-btn-color: var(- -bs-white); -
	-bs-btn-bg: var(- -bd-violet-bg); -
	-bs-btn-border-color: var(- -bd-violet-bg); -
	-bs-btn-hover-color: var(- -bs-white); -
	-bs-btn-hover-bg: #6528e0; -
	-bs-btn-hover-border-color: #6528e0; -
	-bs-btn-focus-shadow-rgb: var(- -bd-violet-rgb); -
	-bs-btn-active-color: var(- -bs-btn-hover-color); -
	-bs-btn-active-bg: #5a23c8; -
	-bs-btn-active-border-color: #5a23c8;
}

.bd-mode-toggle {
	z-index: 1500;
}

.logo {
	margin-left: 25px;
}

.bi-music-note-beamed {
	margin-right: 5px;
}

.background-image {
	position: relative;
	width: 100%;
	height: 500px; /* Adjust the height as needed */
	overflow: hidden;
}

.background-image img {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	min-width: 100%;
	min-height: 100%;
}

.card-text, .card-title {
	text-align: justify;
	text-justify: inter-word;
	margin-left: 20px;
	margin-right: 20px;
	margin-top: 30px;
	width: 600px;
	z-index: 1;
	word-wrap: normal !important;
}

#profilebutton {
	position: fixed;
	top: 20px; /* Adjust the top position as needed */
	right: 20px;
	/* margin-right: 550px; */
}

.iframe-container1 {
	margin-left: 10px; 
	width : 1200px;
	margin-top : 30px;
	height: 700px;
	width: 1200px;
}

.iframe-container2 {
	margin-bottom: 100px; 
	width : 1200px;
	height: 700px;
	width: 1200px;
}
</style>


</head>
<body>

	<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
      <symbol id="check2" viewBox="0 0 16 16">
        <path
			d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z" />
      </symbol>
      <symbol id="circle-half" viewBox="0 0 16 16">
        <path
			d="M8 15A7 7 0 1 0 8 1v14zm0 1A8 8 0 1 1 8 0a8 8 0 0 1 0 16z" />
      </symbol>
      <symbol id="moon-stars-fill" viewBox="0 0 16 16">
        <path
			d="M6 .278a.768.768 0 0 1 .08.858 7.208 7.208 0 0 0-.878 3.46c0 4.021 3.278 7.277 7.318 7.277.527 0 1.04-.055 1.533-.16a.787.787 0 0 1 .81.316.733.733 0 0 1-.031.893A8.349 8.349 0 0 1 8.344 16C3.734 16 0 12.286 0 7.71 0 4.266 2.114 1.312 5.124.06A.752.752 0 0 1 6 .278z" />
        <path
			d="M10.794 3.148a.217.217 0 0 1 .412 0l.387 1.162c.173.518.579.924 1.097 1.097l1.162.387a.217.217 0 0 1 0 .412l-1.162.387a1.734 1.734 0 0 0-1.097 1.097l-.387 1.162a.217.217 0 0 1-.412 0l-.387-1.162A1.734 1.734 0 0 0 9.31 6.593l-1.162-.387a.217.217 0 0 1 0-.412l1.162-.387a1.734 1.734 0 0 0 1.097-1.097l.387-1.162zM13.863.099a.145.145 0 0 1 .274 0l.258.774c.115.346.386.617.732.732l.774.258a.145.145 0 0 1 0 .274l-.774.258a1.156 1.156 0 0 0-.732.732l-.258.774a.145.145 0 0 1-.274 0l-.258-.774a1.156 1.156 0 0 0-.732-.732l-.774-.258a.145.145 0 0 1 0-.274l.774-.258c.346-.115.617-.386.732-.732L13.863.1z" />
      </symbol>
      <symbol id="sun-fill" viewBox="0 0 16 16">
        <path
			d="M8 12a4 4 0 1 0 0-8 4 4 0 0 0 0 8zM8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0zm0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13zm8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zM3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8zm10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0zm-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707zM4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708z" />
      </symbol>
    </svg>



	<header>
		<%@ include file="header.jsp"%>
	</header>
	<!--헤더 영역  -->

	<aside>
		<!-- 로그인한 회원의 로그인 박스  -->
		<div class="card" id="loginbox" style="width: 13rem; height: 7rem;">
			<div class="card-body">
				<h5 class="card-title">
					<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
						fill="currentColor" class="bi bi-music-note-beamed"
						viewBox="0 0 16 16">
  <path
							d="M6 13c0 1.105-1.12 2-2.5 2S1 14.105 1 13c0-1.104 1.12-2 2.5-2s2.5.896 2.5 2zm9-2c0 1.105-1.12 2-2.5 2s-2.5-.895-2.5-2 1.12-2 2.5-2 2.5.895 2.5 2z" />
  <path fill-rule="evenodd" d="M14 11V2h1v9h-1zM6 3v10H5V3h1z" />
  <path
							d="M5 2.905a1 1 0 0 1 .9-.995l8-.8a1 1 0 0 1 1.1.995V3L5 4V2.905z" />
</svg>
					<%=session.getAttribute("loginCode")%>님
				</h5>
				<%
					if (session.getAttribute("djpCode") != null) {
				%>
				<h6 class="card-subtitle mb-2 text-muted">
					뮤직큐DJ
					<%=session.getAttribute("djpCode")%></h6>
				<%
					}
				%>
				<a href="../mypage2.jsp" class="card-link">마이페이지</a> <a
					href="/MusicQProject/Logout" class="card-link">로그아웃</a>
			</div>
		</div>
	</aside>

	<main>
		<section class="py-5 text-center container">
			<div class="background-image">
				<img
					src="${pageContext.request.contextPath}<%= djpv.getDjpImgCd() %>"
					class="img-fluid" alt="배경">
			</div>

			<div class="card mb-3" style="max-width: 100%; margin-top: 20px;">
				<div class="row g-0">
					<div class="col-md-4" style="width: 300px; margin: 20px;">
						<img
							src="${pageContext.request.contextPath}<%= djpv.getDjpDjimgCd() %>"
							<%System.out.print(djpv.getDjpDjimgCd()); %>
							class="img-fluid rounded-start" alt="프로필"
							style="margin-top: 20px;">
					</div>
					<div class="col-md-8">
						<div class="card-body" id="cardBox">
							<h5 class="card-title">
								<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
									fill="currentColor" class="bi bi-person-circle"
									viewBox="0 0 16 16">
  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
  <path fill-rule="evenodd"
										d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
</svg>
								</i>
								<%=djpv.getDjNm()%>(<%=djpv.getMemId()%>님)
							</h5>
							<p class="card-text"><%=djpv.getDjpNm()%></p>
							<p class="card-text"><%=djpv.getDjpIntro()%></p>
							<p class="card-text">
								대표장르/키워드 #<%=djpv.getdjpGenre()%>
								#<%=djpv.getDjpKeywd()%></p>

							<p class="card-text">
								<a href="<%=djpv.getDjpSns()%>" class="btn btn-primary my-2"><%=djpv.getDjpSnsCorp()%></a>
								<a href="#" class="btn btn-secondary my-2">신고</a> <a href="#"
									class="btn btn-secondary my-2">좋아요</a>
							</p>

						</div>
					</div>
				</div>
			</div>

			<section>
				<!--댓글작성영역  -->
<h4>DJ <%=djpv.getDjNm()%>님의 플레이리스트</h4>
<img src="../dj/djimages/플레이리스트.png" class="img-fluid" alt="마이플레이리스트">



<h4><br><br>DJ <%=djpv.getDjNm()%>님의 방명록</h4>
				
				<main class="iframe-container1">
					<iframe src="${pageContext.request.contextPath}/cmntList.do?djId=<%=djpv.getMemId()%>"
						frameborder="0" width="100%" height="100%"></iframe>
					</article>		
				
				
					<main class="iframe-container2">
						<iframe src="cmntinsert.jsp?djId=<%=djpv.getMemId()%>"
							frameborder="0" width="100%" height="100%"></iframe>
						</article>


						<!--선곡영역  -->
						<article class="iframe-container3">

							<iframe src="djsearch.jsp" frameborder="0" width="100%"
								height="100%"></iframe>
						</article>
			</section>
	</main>
	

	<button id="btnTop" onclick="goTop()">
		△<br>TOP
	</button>

	<script>
		window.addEventListener('scroll', function() {
			var btnTop = document.getElementById('btnTop');
			if (document.documentElement.scrollTop > 100) {
				btnTop.style.display = 'block';
			} else {
				btnTop.style.display = 'none';
			}
		});

		// 버튼 클릭 시 페이지 상단으로 이동
		function goTop() {
			window.scrollTo({
				top : 0,
				behavior : 'smooth'
			});
		}
	</script>




	<!-- 부트스트랩 스크립트  -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
		crossorigin="anonymous"></script>
</body>
</html>
