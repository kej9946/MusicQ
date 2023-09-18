<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<title>MusicQ DJ MAIN</title>
<!-- 제이쿼리 스크립트  -->
<script type="text/javascript"
	src="/resource/script/web/common/jquery-1.9.1.min.js"></script>

<!-- 부트스트랩 스크립트  -->
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.3/examples/album/">

<!-- 구글 폰트 스크립트  -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Fira+Sans&display=swap" rel="stylesheet">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">

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

/* Thumnail */
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

.b-example-divider {
	width: 100%;
	height: 3rem;
	background-color: rgba(0, 0, 0, .1);
	border: solid rgba(0, 0, 0, .15);
	border-width: 1px 0;
	box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em
		rgba(0, 0, 0, .15);
}

.b-example-vr {
	flex-shrink: 0;
	width: 1.5rem;
	height: 100vh;
}

.bi {
	vertical-align: -.125em;
	fill: currentColor;
}

.nav-scroller {
	position: relative;
	z-index: 2;
	height: 2.75rem;
	overflow-y: hidden;
}

.nav-scroller .nav {
	display: flex;
	flex-wrap: nowrap;
	padding-bottom: 1rem;
	margin-top: -1px;
	overflow-x: auto;
	text-align: center;
	white-space: nowrap;
	-webkit-overflow-scrolling: touch;
}

.nav-tab {
	
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

.navbar-nav a {
font-family: 'Fira Sans', sans-serif;
font-size : 1em;
margin-left: 20px;
  
}

</style>

<body>

	<header>
		<!-- <!--숨김 효과 nav1영역  -->
		<div class="collapse bg-white" id="navbarHeader">
			<nav class="navbar navbar-expand-lg bg-light">
				<div class="container-fluid">
					<h1 class="logo">
						<a href="../index.jsp" title="로고 - 홈으로 이동" class="mlog" data=""><img
							width="200" height="99" src="./djimages/뮤직큐로고.png" alt="뮤직큐" /></a>
					</h1>
				
					<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
						<div class="navbar-nav">
							<a class="navbar-brand" aria-current="page" href="#">뮤직큐차트</a>
							<a class="navbar-brand" aria-current="page" href="#">테마음악</a>
							<a class="navbar-brand" aria-current="page" href="djpmain.do">뮤직큐DJ</a>
							<a class="navbar-brand" aria-current="page" href="#">이용권구매</a>
							<a class="navbar-brand" aria-current="page" href="#">공지사항</a>
						</div>
					</div>
				</div>
			</nav>

		</div>

		<!--숨김 카테고리 영역  -->
		<%-- <%@ include file="header.jsp"%> --%>


		<div class="navbar navbar-dark bg-dark shadow-sm">
			<div class="container">
				<a href="#" class="navbar-brand d-flex align-items-center">
 <svg xmlns="http://www.w3.org/2000/svg"
						style="margin-right: 7px;" width="19" height="19"
						fill="currentColor" class="bi bi-music-player-fill"
						viewBox="0 0 16 16">
  <path d="M8 12a1 1 0 1 0 0-2 1 1 0 0 0 0 2z" />
  <path
							d="M4 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H4zm1 2h6a1 1 0 0 1 1 1v2.5a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1V3a1 1 0 0 1 1-1zm3 12a3 3 0 1 1 0-6 3 3 0 0 1 0 6z" />
</svg> <strong>뮤직큐 DJ</strong>
				</a>
			</div>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarHeader"
				aria-controls="navbarHeader" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
		</div>

		</div>

	</header>



	<!--nav영역  -->

</body>
</html>