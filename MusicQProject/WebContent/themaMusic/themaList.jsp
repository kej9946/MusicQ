<%@page import="java.util.List"%>
<%@page import="musicq.vo.MusicVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 헤더영역 -->
<%@include file="../header.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<style>
.d_content {
	display: flex;
}

.d_content li {
	margin-right: 10px;
}

.all_wrap {
	display: flex;
	justify-content: center;
	width: 100%;
	margin-top: 60px;
}

.thumb {
	width: 195px;
	height: 195px;
}

.thumb img {
	width: 100%;
	height: 100%;
	height: 195px;
}

.thumb>div {
	text-align: center;
	font-style: italic;
	font-weight: bold;
	font-size: medium;
	color: #A9A9A9;
	font-family: ui-sans-serif;
}

#text {
	text-align: center;
    font-weight: bold;
    font-style: italic;
    color: darkgray;
    padding-top: 5px;
    font-size: large;
   }
   
.wrap_tabmenu03 type02 {
	width:1025px;
}
</style>
</head>
<body>

	<div class="all_wrap">
		<div>
			<div class="page_header mb15">
				<h5 class="title">오늘의 추천 태그</h5>
			</div>

			<div class="rolling">
				<div class="recommend_list" style="padding-bottom: 100px;">
					<ul class="d_content">
						<li>
							<div class="thumb">
								<form method="post"
									action="${pageContext.request.contextPath}/thema.do">
									<input type="hidden" value="산" name="PlaceBtn"> <img
										src="../img/hiking.jpg" alt="rain">
									<div id="text">
										<button type="submit" id="PlaceBtn">#등산</button>
									</div>
								</form>
							</div>
						</li>

						<li>
							<div class="thumb">
								<form method="post"
									action="${pageContext.request.contextPath}/thema.do">
									<input type="hidden" value="피크닉" name="PlaceBtn"> <img
										src="../img/piknic.jpg" alt="piknic">
									<div id="text">
										<button type="submit" id="PlaceBtn">#피크닉</button>
									</div>
								</form>
							</div>
						</li>


						<li>
							<div class="thumb">
								<form method="post"
									action="${pageContext.request.contextPath}/thema.do">
									<input type="hidden" value="바다" name="PlaceBtn"> <img
										src="../img/sea.jpg" alt="sea">
									<div id="text">
										<button type="submit" id="PlaceBtn">#바다</button>
									</div>
								</form>
							</div>
						</li>


						<li>
							<div class="thumb">
								<form method="post"
									action="${pageContext.request.contextPath}/thema.do">
									<input type="hidden" value="카페" name="PlaceBtn"> <img
										src="../img/cafe.jpg" alt="cafe">
									<div id="text">
										<button type="submit" id="PlaceBtn">#카페</button>
									</div>
								</form>
							</div>
						</li>

						<li>
							<div class="thumb">
								<form method="post"
									action="${pageContext.request.contextPath}/thema.do">
									<input type="hidden" value="집" name="PlaceBtn"> <img
										src="../img/home.jpg" alt="home">
									<div id="text">
										<button type="submit" id="PlaceBtn">#집</button>
									</div>
								</form>
							</div>
						</li>
					</ul>

					<!-- 여기부터 두번째 줄  -->
					<ul class="d_content" style="padding-top: 30px;">
						<li>
							<div class="thumb">
								<form method="post"
									action="${pageContext.request.contextPath}/thema.do">
									<input type="hidden" value="퇴근길" name="PlaceBtn"> <img
										src="../img/afternoon.jpg" alt="afternoon">
									<div id="text">
										<button type="submit" id="PlaceBtn">#퇴근길</button>
									</div>
								</form>
							</div>
						</li>

						<li>
							<div class="thumb">
								<form method="post"
									action="${pageContext.request.contextPath}/thema.do">
									<input type="hidden" value="여행" name="PlaceBtn"> <img
										src="../img/trip.jpg" alt="trip">
									<div id="text">
										<button type="submit" id="PlaceBtn">#여행</button>
									</div>
								</form>
							</div>
						</li>

						<li>
							<div class="thumb">
								<form method="post"
									action="${pageContext.request.contextPath}/thema.do">
									<input type="hidden" value="사랑" name="btn"> <img
										src="../img/love.jpg" alt="love">
									<div id="text">
										<button type="submit" id="PlaceBtn">#사랑</button>
									</div>
								</form>
							</div>
						</li>


						<li>
							<div class="thumb">
								<form method="post"
									action="${pageContext.request.contextPath}/thema.do">
									<input type="hidden" value="추억" name="btn"> <img
										src="../img/memories.jpg" alt="memories">
									<div id="text">
										<button type="submit" id="PlaceBtn">#추억</button>
									</div>
								</form>
								
							</div>
						</li>

						<li>
							<div class="thumb">
							<form method="post" action="${pageContext.request.contextPath}/thema.do">
								<input type="hidden" value="꽃" name="btn"> <img
									src="../img/flower.jpg" alt="flower">
								<div id="text">
									<button type="submit" id="PlaceBtn">#꽃</button></div>
								</form>
							</div>
						</li>
					</ul>

					<br> <br>
					<div class="page_header mb15">
						<h5 class="title">인기 테마/장르</h5>
					</div>

					<div id="best">
						<div class="wrap_tabmenu03 type02">
							<ul>
								<li class="first_child on"><a href="#tab1"
									class="link_tab d_tab"><span class="cntt">인기 테마</span></a></li>

								<li class="first_child on"><a href="https://www.youtube.com/embed/VfCdEEYzs1E" class="link_tab">
								<span class="cntt">기분전환</span></a></li>

								<li><a
									href=""
									class="link_tab"><span class="cntt">감성</span></a></li>

								<li><a
									href=""
									class="link_tab"><span class="cntt">힐링</span></a></li>

								<li><a
									href=""
									class="link_tab"><span class="cntt">드라이브</span></a></li>

								<li><a
									href=""
									class="link_tab"><span class="cntt">사랑</span></a></li>

								<li><a
									href=""
									class="link_tab"><span class="cntt">추억</span></a></li>

								<li><a
									href=""
									class="link_tab"><span class="cntt">이별</span></a></li>

								<li><a
									href=""
									class="link_tab"><span class="cntt">여행</span></a></li>

								<li><a
									href=""
									class="link_tab"><span class="cntt">슬픔</span></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script>
		/* // 산 눌렀을 때 
		$(document).on('click', "#btn", function(e){
			$('#form').submit();
		}); */
	</script>

	<!-- footer-->
	<div id="footer" class="pr_none">

		<div id="popNotice" class="wrap_pop_notice MELONUIT-738"></div>
		<div class="footer_cont">
			<div class="footer_menu"></div>

			<p>
				<span class="first"><strong>대덕인재개발원 </strong>&nbsp;&nbsp;대전
					중구 오류동 846</span> <span>담임 : 배미숙</span> <span class="first">담임 전화 :
					010-0000-0000</span> <span>이메일 : <a
					href="https://www.ddit.or.kr/room" class="btn_footer_mail">bms@naver.com</a></span>
				<span>사업자 : 재단법인 대덕인재개발원</span> <span><a
					href="https://www.ddit.or.kr/room" class="btn_footer_mail"
					target="_blank">© 대덕인재Corp.</a></span>
			</p>


		</div>
	</div>
	<br>
	<br>
	<br>
	<!-- //footer -->
</body>
</html>
