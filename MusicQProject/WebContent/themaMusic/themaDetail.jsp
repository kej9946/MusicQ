<%@page import="musicq.vo.MusicVO"%>
<%@page import="board.dao.QnaDaoImpl"%>
<%@page import="musicq.vo.QnaVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 헤더영역 -->
<%@include file="../header.jsp" %>

<%
	String loginId = (String)session.getAttribute("loginCode");
	boolean isLoggedIn = loginId != null;
	List<MusicVO> mPlace = (List<MusicVO>) request.getAttribute("mPlace");
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
 
 <style>
 .container {
  word-wrap: break-word;
 }
 </style>
</head>
<body>

<br>
  <h2 class="text-center">추천음악</h2><br><br>
  
<div class="container">
  <table class="table table-hover">
    <tr>
      <th>노래제목</th>
      <th>가수명</th>
      <th>장르</th>
      <th>국가</th>
      <% if (isLoggedIn) { %>
        <th>재생</th>
      <% } %>
    </tr>

    <% for (MusicVO vo : mPlace) { %>

      <tr class="success">
        <td><%= vo.getmNm() %></td>
        <td><%= vo.getmSinger() %></td>
        <td><%= vo.getmGenre() %></td>
        <td><%= vo.getmCountry() %></td>
        <% if (isLoggedIn) { %>
          <td>
            <button type="button" class="glyphicon glyphicon-volume-up player" onclick="location.href='./ListeningMusicController?mCd=<%= vo.getmCd() %>'"></button>
          </td>
        <% } %>
      </tr>

    <% } %>
  </table>
</div>
      
  </table>
  <hr/>
  </div>
  
  <!-- 페이징 부분해야함...  -->
  <div class="text-center">
  	<ul class="pagination">
  		<li><a href="#">1</a></li>
  		<li><a href="#">2</a></li>
  		<li><a href="#">3</a></li>
  		<li><a href="#">4</a></li>
  		<li><a href="#">5</a></li>
  	</ul>
  </div>
  
  
  <!-- footer-->
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
			</div>
		</div><br><br><br>
<!-- //footer -->

</body>
</html>
