<%@page import="musicq.music.service.MusicServiceIpml"%>
<%@page import="musicq.music.service.IMusicService"%>
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
	List<MusicVO> musicList = (List<MusicVO>) request.getAttribute("musicList");
	
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
  display: flex;
  flex-wrap: wrap;
 }
 </style>
</head>
<body>

<br>
  <h2 class="text-center">검색결과</h2><br><br>
  
<div class="container">
  <table class="table table-hover">
      <tr>
        <th>노래제목</th>
        <th>가수명</th>
        <th>장르</th>
        <th>국가</th>
        <th>재생</th>
      </tr>
      
      <%
      	for(MusicVO mu : musicList){
      %>
      
      <tr class="success">
        <td><%=mu.getmNm()%></td>
        <td><%=mu.getmSinger()%></td>
        <td><%=mu.getmGenre()%></td>
        <td><%=mu.getmCountry()%></td>
<!--         <td><audio src="/MusicQProject/img/Rabbit Farm Farm Animals Animals.mp4" controls style="width: 150px;"></audio></td> -->
        <td><span id="player" class="glyphicon glyphicon-volume-up player" src="./ListeningMusicController?mCd=<%=mu.getmCd() %>"></span>
        	</td>
      </tr>
    
      <%
      	}
      %>
      
  </table>
  <hr/>
  </div>
  
  <div class="text-center">
  	<ul class="pagination">
  		<li><a href="#">1</a></li>
  		<li><a href="#">2</a></li>
  		<li><a href="#">3</a></li>
  		<li><a href="#">4</a></li>
  		<li><a href="#">5</a></li>
  	</ul>
  </div>
  
<script>

$('.player').on('click', function() {
	<% if(loginId == null || loginId.isEmpty()) { %>
		alert("로그인이 필요합니다.");
	<% } else { %>
		var src = $(this).attr('src');
	    window.location.href = src;
	<% } %>
	});
</script>
</body>
</html>
  