<%@page import="java.util.List"%>
<%@page import="musicq.dj.service.DjPageServiceImpl"%>
<%@page import="musicq.dj.service.IDjPageService"%>
<%@page import="musicq.dj.dao.DjPageDaoImpl"%>
<%@page import="musicq.dj.service.IDjCommentService"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="musicq.vo.DjPageVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%

String result = (String)request.getAttribute("result");
String uId = (String) session.getAttribute("loginCode");
String redirectURL = request.getContextPath() + "/dj/mydjpage.do?uid="+ URLEncoder.encode(uId, "UTF-8");

//String djId = request.getParameter("djId");

DjPageVO djpv = new DjPageVO();
IDjPageService djps = DjPageServiceImpl.getInstance();


List<DjPageVO> allDjpvList = djps.getAllDjp();	

for (DjPageVO djpvList : allDjpvList) {
	
}

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
<title>MusicQ DJ MAIN</title>
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
.album py-5 bg-body-tertiary {
	
}

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
	margin-bottom: 15px;
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
	font-size: 1em;
	margin-left: 20px;
}

.bi-music-note-beamed {
	margin-right: 5px;
}

	.fixed-size-image {
		width: 100%; /* 원하는 너비로 설정합니다 */
		height: 300px; /* 원하는 높이로 설정합니다 */
		object-fit: cover; /* 가로 세로 비율을 유지하면서 컨테이너를 채웁니다 */
	}

	.fixed-card-text {
		height: 110px; /* 원하는 크기로 조정 */
		overflow: hidden;
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


	<%
		if (session.getAttribute("loginCode") == null) {
	%>

	<!-- 로그인 하지 않은 회원의 로그인 박스  -->
	<div class="card" id="loginbox2" style="width: 18rem;">
		<div class="card-body" id="loginboxtext">
			<h6 class="card-subtitle mb-2 text-muted">
				뮤직큐에 로그인하고 <br>자유롭게 이용하세요
			</h6>
			<a href="../login.jsp" class="card-link">로그인</a> <a
				href="../join.jsp" class="card-link">회원가입</a> <br>
		</div>
	</div>
	<!-- 로그인 하지 않은 회원의 로그인 박스  -->


	<%
		} else {
	%>


	<!-- 로그인한 회원의 로그인 박스  -->
	<div class="card" id="loginbox" style="width: 18rem;">
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
	<!-- 로그인한 회원의 로그인 박스  -->
	<%
		}
	%>

	<!--메인콘텐츠영역  -->
	<main>

		<section class="py-5 text-center container">
			<div class="row py-lg-5">
				<div class="col-lg-6 col-md-8 mx-auto">
					<h1 class="fw-light">MusicQ DJ Lounge</h1>
					<p>
						<a href="#" class="btn btn-primary my-2" id="popular-dj-btn"
							style="margin-right: 15px;">뮤직큐 인기 DJ</a> <a href="#"
							class="btn btn-secondary my-2" id="my-dj-btn">나의 DJ페이지</a>
					</p>

					<div id="login">
						<p class="lead text-body-primary" id="popular-dj-section">
							뮤직큐 인기 DJ는 전문성 있는 선곡을 바탕으로 <br> 다양한 테마/장르의 고품격 DJ플레이리스트를 <br>
							공유하고 숨겨진 명곡을 소개하는 DJ입니다.
						</p>


						<p class="lead text-body-secondary" id="my-dj-section"
							style="display: none">

							<%
								if (result != null && result.equals("none")) {
							%>
							<br>
							<%=session.getAttribute("loginCode")%>회원님의 뮤직큐DJ정보가 없습니다.<br>

							<button type="button" class="btn btn-link" id="apply-button"
								onclick="applyDj()">뮤직큐DJ신청하기</button>

							<%
								} else {
							%>
							<button type="button" class="btn btn-link" id="mydjp-button">나의
								DJ페이지 바로가기</button>

							<%
								}
							%>
						</p>
					</div>
				</div>
			</div>
		</section>



		<script>
		
		//로그인 정보에 맞는 화면을 보여줌
		    var popularDjBtn = document.getElementById("popular-dj-btn");
		    var myDjBtn = document.getElementById("my-dj-btn");
		    var popularDjSection = document.getElementById("popular-dj-section");
		    var myDjSection = document.getElementById("my-dj-section");
		    
			// 최초에는 popularDjSection만 보이도록 함
			popularDjSection.style.display = "block";
			myDjSection.style.display = "none";
		    
		    popularDjBtn.addEventListener("click", function() {
		        popularDjSection.style.display = "block";
		        myDjSection.style.display = "none";
		    });
		    
		    myDjBtn.addEventListener("click", function() {
		        // 서버에서 데이터를 가져와서 myDjSection에 내용을 추가하는 코드가 필요함
		        popularDjSection.style.display = "none";
		        myDjSection.style.display = "block";
		    });
		
		
			function applyDj() {
				window.location.href = 'djpcreate.do';
			}
								
			/* 마이DJ페이지로 바로가기 버튼 */			
	  document.getElementById("mydjp-button").addEventListener("click", function() {
      
        window.location.href = '<%=redirectURL%>'

					});
		</script>
		
		<div class="album py-5 bg-body-tertiary">
			<div class="container">

				<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
				<% for(int i=0; i<6; i++){

				%>
				
					<div class="col">
						<div class="card shadow-sm">
							<img src="..<%=allDjpvList.get(i).getDjpImgCd()%>" alt="배경사진" class="card-img-top fixed-size-image">
							<div class="card-body">
								<p class="card-text fixed-card-text"><%=allDjpvList.get(i).getDjpNm()%></p>
								<div class="d-flex justify-content-between align-items-center">
								
									<div class="btn-group">
										<a href="http://localhost:8888/MusicQProject/dj/mydjpage2.do?djId=<%=allDjpvList.get(i).getMemId()%>"></a> 
										<a href="http://localhost:8888/MusicQProject/dj/mydjpage2.do?djId=<%=allDjpvList.get(i).getMemId()%>"	target="_blank" class="btn btn-sm btn-outline-secondary">GO</a>
										<button type="button" class="btn btn-sm btn-outline-secondary">♥</button>
									</div>
									
									<small class="text-body-secondary"><%=allDjpvList.get(i).getDjNm()%></small>
								</div>
							</div>
						</div>
					</div>
					<%} %>

	</main>



	<!--메인콘텐츠영역  -->


	<!--헤더 영역  -->


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


	<!--푸터 영역  -->
	<footer>
		<%@ include file="footer.jsp"%>
	</footer>
	<!--푸터 영역  -->

	<!-- 부트스트랩 스크립트  -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
		crossorigin="anonymous"></script>



</body>
</html>
