<%@page import="musicq.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author"
   content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.101.0">
<title>마이페이지</title>



<link rel="canonical"
   href="https://getbootstrap.com/docs/4.6/examples/album/">



<!-- Bootstrap core CSS -->
<link href="./resources/css/bootstrap.min.css" rel="stylesheet">



<style>

#wrap{
	/*border-style: outset;*/
	border : solid;	
	border-color : white white 	#1fc600 white;
	height : 200px;
}


.bd-placeholder-img {
   font-size: 1.125rem;
   text-anchor: middle;
   -webkit-user-select: none;
   -moz-user-select: none;
   -ms-user-select: none;
   user-select: none;
}

@media ( min-width : 768px) {
   .bd-placeholder-img-lg {
      font-size: 3.5rem;
   }
}

.card-body {
   height: 350px;
   padding: 40px;
}
.profile_area {
   display: flex;
}

.profile_img{

   border-radius: 50%;
}

img {
    vertical-align: middle;
    border-style: none;
    border-radius: 50%;
    width: 200px;
    height: 200px;
}
#grade_img {
    display: block;
    margin-left: auto;
    margin-right: auto;
    width : 150px;
    height : 150px;
}

#coupon_img{
	display: block;
    margin-left: auto;
    margin-right: auto;
    width : 170px;
    height : 150px;
}
#ticket_img{
	display: block;
    margin-left: auto;
    margin-right: auto;
    width : 150px;
    height : 150px;
}

.nickname {
   font-size: 1.2em;
   font-weight: 600;
   margin-left: 20px;
}

.btn {
   display: inline-block;
   text-decoration: none;
   color: black;
   text-decoration: none !important;
   border: 1px solid rgb(199, 199, 199);
   padding: 5px 10px;
   border-radius: 3px;
   margin-top: 30px;
   cursor: pointer;
   position : relative;
   left : 350px;
   top : 30px;
   background : #FFE4E1;
}

.profile_btn:hover {
   color: black;
}

.mypage_txt {
   font-size: 1.2em;
   font-weight: 700;
}

p {
   margin-bottom: 3px !important;
}

.btn-grade{
position : relative;
top : -68px;
right : -50px;
}

.btn-coupon{
position : relative;
top : -68px;
right : -50px;
}
.btn-ticket{
position : relative;
top : -68px;
right : -50px;
}
</style>


<!-- Custom styles for this template -->
<link href="./resources/css/album.css" rel="stylesheet">
</head>
<body>

	<div id="wrap">
		<!-- 이벤트일 경우 event_gnb 추가 -->

		<div id="header" class="main">
			<div id="header_wrap" class="pr_none">
				<!-- 메인 컨텐츠 가운데 정렬을 위한 pr_none 클래스 추가 -->

				<!-- 검색어이미지 -->
				<h1>
					<a href="/MusicQProject/WeatherMusicController" title="로고 - 홈으로 이동" class="mlog" ><img
						width="300" height="199" src="./img/logo.png" alt="뮤직큐" /></a>
				</h1>

			</div>
			



   <main role="main">


      <div class="album py-5 bg-light">
         <div class="container">

            <div class="row">

               <div class="col-md-6">
                  <p class="mypage_txt">회원정보수정</p>
                  <div class="card mb-4 shadow-sm">

                     <div class="card-body">

                        <div class="profile_area">
                           <div class="profile_img">
                              <img src="./img/milk.jpg" alt="프로필" />
                           </div>
                           <p class="nickname"><p><%= session.getAttribute("loginCode") %>님 </p></p>
                        </div>

                        <a href="/MusicQProject/updateMem?memId=<%=session.getAttribute("loginCode") %>" class="btn">회원정보 설정</a>
                     </div>
                  </div>
               </div>

               <div class="col-md-6">
                  <p class="mypage_txt">회원등급</p>
                  <div class="card mb-4 shadow-sm">

                     <div class="card-body">
                     <img id="grade_img"src="./img/grade.png" alt="등급"/>
                     <br>
                     <br>
                        <p class="card-text">회원님의 등급은 Gold입니다.<br>4개월 후 VIP회원으로 등급 업데이트 예정입니다.<br>
                                                                등업후 VIP혜택을 누리세요</p>
                        <div class="d-flex justify-content-between align-items-center">
                           <div class="btn-grade">
                              <button type="button" class="btn" onclick="location.href='/MusicQProject/grade.html'">View</button>
                           </div>
                           <small class="text-muted"></small>
                        </div>
                     </div>
                  </div>
               </div>

               <div class="col-md-6">
                  <p class="mypage_txt">보유 쿠폰</p>
                  <div class="card mb-4 shadow-sm">

                     <div class="card-body">
                     <img id="coupon_img"src="./img/coupon.png" alt="등급"/>
                     <br>
                     <br>
                        <p class="card-text">고객님께서 뮤직큐에 보유중인<br> 쿠폰내역을 확인하실 수 있습니다</p>
                        <div class="d-flex justify-content-between align-items-center">
                           <div class="btn-coupon">
                              <button type="button" class="btn" onclick="location.href='/MusicQProject/listCoupon?id=<%=session.getAttribute("loginCode")%>'">View</button>
                           </div>
                           <small class="text-muted"></small>
                        </div>
                     </div>
                  </div>
               </div>

               <div class="col-md-6">
                  <p class="mypage_txt">이용권</p>
                  <div class="card mb-4 shadow-sm">

                     <div class="card-body">
                     <img id="ticket_img"src="./img/ticket.png" alt="등급"/>
                     <br>
                     <br>
                        <p class="card-text">고객님께서 뮤직큐에서 사용중인<br> 이용권 내역을 확인하실 수 있습니다</p>
                        <div class="d-flex justify-content-between align-items-center">
                           <div class="btn-ticket">
                              <button type="button" class="btn" onclick="location.href='/MusicQProject/listTicket?id=<%=session.getAttribute("loginCode")%>'">View</button>
                           </div>
                           <small class="text-muted"></small>
                        </div>
                     </div>
                  </div>
               </div>



            </div>
         </div>
      </div>

   </main>


   <script
      src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
      integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
      crossorigin="anonymous"></script>
   <script>
      window.jQuery
            || document
                  .write('<script src="../assets/js/vendor/jquery.slim.min.js"><\/script>')
   </script>
   <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>



</body>
</html>