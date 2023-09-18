<%@page import="musicq.vo.MusicVO"%>
<%@page import="java.util.List"%>
<%@page import="musicq.music.service.MusicServiceIpml"%>
<%@page import="musicq.music.service.IMusicService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html lang="ko">

<%@include file="./header.jsp" %>
<%IMusicService mus=MusicServiceIpml.getInstance(); 


List<MusicVO> mList = mus.selectRank(); 





%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>뮤직큐</title>

<!-- 제이쿼리 스크립트  -->
<script type="text/javascript"
	src="/resource/script/web/common/jquery-1.9.1.min.js"></script>


<!--외부 스타일 시트 -->
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

<script>

		$(function() {
			$("#header").load("./header.jsp");
		});
		
		
		function btn(){
		    alert('로그인 해주세요.');
		}
		
</script>
	
	
<style>

.chart li:hover {
    transform: scale(1.2); /* 행의 크기를 1.2배로 확대 */
    transition: transform 0.2s ease-in-out; /* 부드러운 확대 효과를 위한 transition 설정 */
  }

.img:hover {
    transform: scale(1.2); /* 행의 크기를 1.2배로 확대 */
    transition: transform 0.2s ease-in-out; /* 부드러운 확대 효과를 위한 transition 설정 */
  } 

 
img:hover {
    transform: scale(1.2); /* 행의 크기를 1.2배로 확대 */
    transition: transform 0.2s ease-in-out; /* 부드러운 확대 효과를 위한 transition 설정 */
  } 


#rankText{
 font-weight: bord;
}

.chart {
	display: flex;
	flex-direction: column;
}

#song-chart {
	display: flex;
	flex-direction: column;
	list-style: none;
	padding: 0;
	margin: 0;
}

#song-chart li {
	display: flex;
	align-items: center;
	width: 100%;
	height: 40px;
	background-color: #f5f5f5;
	border-bottom: 1px solid #ddd;
}

#song-chart li:nth-child(odd) {
	background-color: #fff;
}

#song-chart li a {
	text-decoration: none;
	color: #333;
	margin-right: 10px;
}

#song-chart li:hover {
	background-color: #ddd;
	cursor: pointer;
}


</style>

<body>
	<div id="wrap">
	
	    <!--헤더.에이치티엠엘 로 옮김 .0509-->
		<!--<div id="header"></div>-->
	 
		<div id="cont_wrap" class="clfix">
			<div id="conts_section" class="pr_none">
				<!-- 메인 컨텐츠 가운데 정렬을 위한 pr_none 클래스 추가 -->
				<!-- contents -->
				<div id="conts" class="clfix">
				<h2>
							<span class="title_link">날씨에 따른 음악 추천</span>
						</h2>
					<!-- 최신앨범 -->
					<div class="new_album">
						<div class="section_na">
							<div>
								<div class="list_wrap">
									<ul class="sub_list">
										<!--한칸-->
										<li>
											<dl>
												<dt>
													<span class="none"></span>
												</dt>

												<dd class="img">
													<span class="none">앨범이미지:</span> <span class="thum">
														<img onerror="" width="156" height="156"
														src="<%=mus.selectImgPath(mList.get(0).getmCd())%>" alt="" /> <span
														class="bg_album_frame"></span>
													</span>

													<!-- //[DP] 재생 레이어 -->
												</dd>
												<dd class="singer">
													<span class="none">가수명:</span>
													<div class="ellipsis">
														<a href="" title="" class="" data=""><span><%=mList.get(0).getmNm() %></span></a></span>
													</div>
												</dd>
											</dl>
										</li>
										<!--/한칸-->
										<!--한칸-->
										<li>
											<dl>
												<dt>
													<span class="none"></span>
												</dt>

												<dd class="img">
													<span class="none">앨범이미지:</span> <span class="thum">
														<img onerror="" width="156" height="156"
														src="<%=mus.selectImgPath(mList.get(1).getmCd())%>" alt="" /> <span
														class="bg_album_frame"></span>
													</span>

													<!-- //[DP] 재생 레이어 -->
												</dd>
												<dd class="singer">
													<span class="none">가수명:</span>
													<div class="ellipsis">
														<a href="" title="" class="" data=""><span><%=mList.get(1).getmNm() %></span></a>
													</div>
												</dd>
											</dl>
										</li>
										<!--/한칸-->
										<!--한칸-->
										<li>
											<dl>
												<dt>
													<span class="none"></span>
												</dt>

												<dd class="img">
													<span class="none">앨범이미지:</span> <span class="thum">
														<img onerror="" width="156" height="156"
														src="<%=mus.selectImgPath(mList.get(2).getmCd())%>" alt="" /> <span
														class="bg_album_frame"></span>
													</span>

													<!-- //[DP] 재생 레이어 -->
												</dd>
												<dd class="singer">
													<span class="none">가수명:</span>
													<div class="ellipsis">
														<a href="" title="" class="" data=""><span><%=mList.get(2).getmNm() %></span></a></span>
													</div>
												</dd>
											</dl>
										</li>
										<!--/한칸-->
										<!--한칸-->
										<li>
											<dl>
												<dt>
													<span class="none"></span>
												</dt>

												<dd class="img">
													<span class="none">앨범이미지:</span> <span class="thum">
														<img onerror="" width="156" height="156"
														src="<%=mus.selectImgPath(mList.get(9).getmCd())%>" alt="" /> <span
														class="bg_album_frame"></span>
													</span>

													<!-- //[DP] 재생 레이어 -->
												</dd>
												<dd class="singer">
													<span class="none">가수명:</span>
													<div class="ellipsis">
														<a href="" title="" class="" data=""><span><%=mList.get(9).getmNm() %></span></a></span>
													</div>
												</dd>
											</dl>
										</li>
										<!--/한칸-->
										<!--한칸-->
										<li>
											<dl>
												<dt>
													<span class="none"></span>
												</dt>

												<dd class="img">
													<span class="none">앨범이미지:</span> <span class="thum">
														<img onerror="" width="156" height="156"
														src="<%=mus.selectImgPath(mList.get(8).getmCd())%>" alt="" /> <span
														class="bg_album_frame"></span>
													</span>

													<!-- //[DP] 재생 레이어 -->
												</dd>
												<dd class="singer">
													<span class="none">가수명:</span>
													<div class="ellipsis">
														<a href="" title="" class="" data=""><span><%=mList.get(8).getmNm() %></span></a></span>
													</div>
												</dd>
											</dl>
										</li>
										<!--/한칸-->
										<!--한칸-->
										<li>
											<dl>
												<dt>
													<span class="none"></span>
												</dt>

												<dd class="img">
													<span class="none">앨범이미지:</span> <span class="thum">
														<img onerror="" width="156" height="156"
														src="<%=mus.selectImgPath(mList.get(7).getmCd())%>" alt="" /> <span
														class="bg_album_frame"></span>
													</span>

													<!-- //[DP] 재생 레이어 -->
												</dd>
												<dd class="singer">
													<span class="none">가수명:</span>
													<div class="ellipsis">
														<a href="" title="" class="" data=""><span><%=mList.get(7).getmNm() %></span></a></span>
													</div>
												</dd>
											</dl>
										</li>
										<!--/한칸-->



									</ul>

								</div>

							</div>
						</div>
					</div>
					<!-- //최신앨범 -->

					<!-- 큰 사진이벤트 -->
					<div class="event">
						<div class="event_default">
							<a href="" class="image_type24" title=""> <img width="236"
								height="315" src="<%=mus.selectImgPath(mList.get(6).getmCd())%>" alt="" /> <span
								class="bg_album_frame"></span>
							</a>
						</div>
					</div>
					<!-- //이벤트 -->

					<!-- 로그인 -->
					<div class="id_wrap mt24">
						<script type="text/javascript">
							var html = '';
							html = [
									'<div class="login_wrap" id="gnbLoginDiv">',
									'<div class="button_login">',
									'<div class="top_area">',
									'<p>뮤직큐를 로그인 하고 자유롭게 이용하세요.</p>',
									'<a href="/MusicQProject/Join">회원가입</a>',
									'</div>',
									'<button type="button" class="btn_login" onclick="showLoginPopup()"><span class="odd_span">로그인</span></button>',
									'</div>', '</div>' ].join('');
							document.write(html);

							function showLoginPopup() {
								location.href = "login.jsp";
							}
						</script>

						<div class="promotion_wrap">
							<div class="promotion_default">
								 <iframe width="280" height="188"
									src="./weather1.jsp"  ></iframe> <span class="bg_album_frame"></span>
								</a>
							</div>
						</div>
					</div>
					<!-- //로그인 -->

					<!-- 많이 봤어요 -->
					<div class="hot_issue">
						<h2>
							<span class="title_link">인기 있어요</span><span class="txt_intro">지금
								이슈가 되는 아티스트의 인기 컨텐츠입니다.</span>
						</h2>

						<!-- 리스트 1 -->

						<ul class="sub_list">

							
							
							 <li class="issue_list04">

								<dl class="ml0">

									<dd class="mov_area">
										<a href="" title="" class="mlog link-thumb" data=""> <img
											onerror="" src="<%=mus.selectImgPath(mList.get(0).getmCd()) %>" alt=<%=mList.get(0).getmNm() %> /> <span
											class="bg_album_frame"></span>
										</a>
									</dd>
									<dt>
										<a href="" title="" class="mlog link-thumb" data=""> <span
											class="title"><%=mList.get(0).getmNm() %></span> <span class="ellipsis"><%=mList.get(0).getmSinger() %></span>
										</a>
									</dt>
								</dl>
								<dl class="ml0">

									<dd class="mov_area">
										<a href="" title="" class="mlog link-thumb" data=""> <img
											onerror="" src="<%=mus.selectImgPath(mList.get(1).getmCd()) %>" alt=<%=mList.get(1).getmNm() %> /> <span
											class="bg_album_frame"></span>
										</a>
									</dd>
									<dt>
										<a href="" title="" class="mlog link-thumb" data=""> <span
											class="title"><%=mList.get(1).getmNm() %></span> <span class="ellipsis"><%=mList.get(1).getmSinger() %></span>
										</a>
									</dt>
								</dl>
								<dl class="ml0">

									<dd class="mov_area">
										<a href="" title="" class="mlog link-thumb" data=""> <img
											onerror="" src="<%=mus.selectImgPath(mList.get(2).getmCd()) %>" alt=<%=mList.get(2).getmNm() %> /> <span
											class="bg_album_frame"></span>
										</a>
									</dd>
									<dt>
										<a href="" title="" class="mlog link-thumb" data=""> <span
											class="title"><%=mList.get(2).getmNm() %></span> <span class="ellipsis"><%=mList.get(2).getmSinger() %></span>
										</a>
									</dt>
								</dl>

								<dl class="ml0">

									<dd class="mov_area">
										<a href="" title="" class="mlog link-thumb" data=""> <img
											onerror="" src="<%=mus.selectImgPath(mList.get(3).getmCd()) %>" alt=<%=mList.get(3).getmNm() %> /> <span
											class="bg_album_frame"></span>
										</a>
									</dd>
									<dt>
										<a href="" title="" class="mlog link-thumb" data=""> <span
											class="title"><%=mList.get(3).getmNm() %></span> <span class="ellipsis"><%=mList.get(3).getmSinger() %></span>
										</a>
									</dt>
								</dl>

								<dl class="ml0">

									<dd class="mov_area">
										<a href="" title="" class="mlog link-thumb" data=""> <img
											onerror="" src="<%=mus.selectImgPath(mList.get(4).getmCd()) %>" alt=<%=mList.get(4).getmNm() %> /> <span
											class="bg_album_frame"></span>
										</a>
									</dd>
									<dt>
										<a href="" title="" class="mlog link-thumb" data=""> <span
											class="title"><%=mList.get(4).getmNm() %></span> <span class="ellipsis"><%=mList.get(4).getmSinger() %></span>
										</a>
									</dt>
								</dl>


								<dl class="ml0">

									<dd class="mov_area">
										<a href="" title="" class="mlog link-thumb" data=""> <img
											onerror="" src="<%=mus.selectImgPath(mList.get(5).getmCd()) %>" alt=<%=mList.get(5).getmNm() %> /> <span
											class="bg_album_frame"></span>
										</a>
									</dd>
									<dt>
										<a href="" title="" class="mlog link-thumb" data=""> <span
											class="title"><%=mList.get(5).getmNm() %></span> <span class="ellipsis"><%=mList.get(5).getmSinger() %></span>
										</a>
									</dt>
								</dl>

							</li> 
					</div>
					<!-- //많이 봤어요 -->




					<!-- 멜론차트 -->
					<div class="chart">
						<h2>실시간 음악차트 TOP 10</h2>
						<ol id="song-chart">
						<%int rank=1; %>
							   <%for(MusicVO mrk : mList) {%>
							 
							<%-- <li><button onclick="javascript:btn()"> <span id="rankText"><%=rank+"위 "%><span><%= mrk.getmSinger() %> - <%=mrk.getmNm() %> </button></li> --%>
							<li><a href="javascript:btn()"><span id="rankText"><%=rank+"위 "%><span><%= mrk.getmSinger() %> - <%=mrk.getmNm() %></a></li>
							<%rank++; %>
							<%} %>
						</ol>
					</div>
					<!-- //멜론차트 -->


					<!-- 공지사항 -->
					<div class="notice">
						<dl>
							<dt class="label">
								<a href="./img/메인임시0.jpg" title="공지사항">공지사항</a>
							</dt>


							<dd>
								<a href="./img/메인임시_0.jpg" title="0505공지" class="mlog" data="">05/05(목)
									2023-05-05-14:30 공지 </a>
							</dd>
							<dd class="date">
								2023.05.05 <br>
								<br>
								<br>
							</dd>


						</dl>
					</div>
					<!-- //공지사항 -->
				</div>

				<!-- //contents -->
			</div>
		</div>

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
			</div>

</body>

</html>