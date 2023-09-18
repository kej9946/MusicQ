<%@page import="musicq.vo.TicketVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	TicketVO vo = (TicketVO) request.getAttribute("ticketList");
System.out.print(vo);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보유 이용권</title>
</head>
<script>
	// var tkcd = (TicketVO)request.getAttribute("ticketList");
	// confirm("ㅇㅇㅇ");
	// console.log("tkcd", tkcd);
	// if(tkcd == null){
	// 	alert("보유중인 이용권이 없습니다");
	// }
</script>
<style>
.all {
	display: flex;
	justify-content: space-between;
}

#ticket {
	margin: 0 auto;
	margin-top: 50px;
}

#wrap {
	/*border-style: outset;*/
	border: solid;
	border-color: white white #1fc600 white;
}

#nav {
	float: right;
}

.navigation_list {
	float: left;
	width: 142px;
	line-height: 40px;
	text-align: center;
	list-style-type: none;
}

.navigation_link {
	font-size: 16px;
	font-weight: bold;
	color: black;
	font-family: 'Noto Sans KR', sans-serif;
}

.navigation_list:hover .sub_menu {
	display: block;
}

.navigation_link:hover {
	color: green;
}

.mypage {
	display: flex;
	height: 600px;
	width: 300px;
}

.mypage>* {
	border-radius: 40px;
	margin-right: 10px;
}

#left {
	flex: 0.8;
	background: #1fc600;
	padding: 20px;
}

#left>ul {
	padding-left: 0px;
	border-radius: 5px;
}

#left>ul>li {
	list-style: none;
	padding: 10px;
}

#left>ul>li>a {
	text-decoration: none;
	color: white;
	padding-left: 20px;
	display: inline-block;
	width: 100%;
}

table {
	border-collapse: collapse;
	border-spacing: 0;
	text-align: center;
	line-height: 1.5;
	border-top: 1px solid;
	border-left: 1px solid;
	margin: 20px 10px;
	width: 800px;
	height: 300px;
}

table th {
	width: 200px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	border-right: 1px solid;
	border-bottom: 1px solid;
	border-top: 1px solid;
	border-left: 1px solid;
	background-color: #e5e6eb;
}

table td {
	width: 300px;
}
</style>

<body>
	<%
		if (vo == null) {
	%>
	<script>
		alert("보유중인 이용권이 없습니다");
	</script>
	<%
		} else {
	%>

	<div id="wrap">
		<!-- 이벤트일 경우 event_gnb 추가 -->

		<div id="header" class="main">
			<div id="header_wrap" class="pr_none">
				<!-- 메인 컨텐츠 가운데 정렬을 위한 pr_none 클래스 추가 -->

				<!-- 검색어이미지 -->
				<h1>
					<a href="/index.htm" title="로고 - 홈으로 이동" class="mlog" data=""><img
						width="300" height="199" src="./img/logo.png" alt="뮤직큐" /></a>
				</h1>

			</div>

			<!-- 메뉴바 -->
			<!-- navigation -->
			<div id="nav">
				<div class="nav_inner">
					<ul class="navigation clearfix">
						<li class="navigation_list"><a href="여기에뮤직큐차트링크"
							class="navigation_link">뮤직큐차트</a></li>
						<li class="navigation_list"><a href="여기에테마음악링크"
							class="navigation_link">테마음악</a></li>
						<li class="navigation_list"><a href="여기에뮤직큐dJ링크"
							class="navigation_link">뮤직큐DJ</a></li>
						<li class="navigation_list"><a href="여기에이용권구메링크"
							class="navigation_link">이용권구매</a></li>
						<li class="navigation_list"><a href="여기에이벤트링크"
							class="navigation_link">이벤트</a></li>
						<li class="navigation_list"><a href="여기에공지사항링크"
							class="navigation_link">공지사항</a></li>
					</ul>
				</div>
			</div>
			<!-- //navigation -->
			<!-- /메뉴바 -->

		</div>
	</div>

	<br>
	<br>
	<br>
	<div class="all">
		<div class="mypage">
			<aside id="left">
				<h2>My Page</h2>
				<ul>
					<li><a
						href="/MusicQProject/listCoupon?id=<%=session.getAttribute("loginCode")%>"
						target="ifr">나의 쿠폰함</a></li>
					<li><a
						href="/MusicQProject/listTicket?memId=<%=session.getAttribute("loginCode")%>"
						target="ifr">이용권 조회</a></li>
					<li><a
						href="/MusicQProject/updateMem?memId=<%=session.getAttribute("loginCode")%>"
						class="profile_btn" target="ifr">회원정보 수정</a></li>
				</ul>
			</aside>
		</div>




		<div id="ticket">
			<h3>▶ 보유 이용권</h3>

			<table border="1">

				<tr>
					<th>이용권 코드</th>
					<td><%=vo.getTkCd()%></td>
				</tr>

				<tr>
					<th>이용권 이름</th>
					<td><%=vo.getTkNm()%></td>
				</tr>

				<tr>
					<th>이용권 가격</th>
					<td><%=vo.getTkPrice()%></td>
				</tr>

				<tr>
					<th>이용권 구매일</th>
					<td><%=vo.getTkPayDt()%></td>
				</tr>




			</table>

		</div>
	</div>

	<%
		}
	%>





</body>



</html>