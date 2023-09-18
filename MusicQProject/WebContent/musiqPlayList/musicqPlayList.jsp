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
	List<MusicVO> playList = (List<MusicVO>)request.getAttribute("MPList");
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
  <h2 class="text-center">플레이리스트</h2><br><br>
  
<div class="container">
  <table class="table table-hover">
      <tr>
        <th>번호</th>
        <th>노래제목</th>
        <th>가수명</th>
        <th>장르</th>
        <th>국가</th>
        <th>재생</th>
        <th>삭제할음악</th>
      </tr>
      
     <%
     if(playList!=null)
     {
     	int num=1;
      	for(MusicVO vo : playList){
      %> 
      
      <tr class="success">
        <td><%=num %></td>
        <td><%=vo.getmNm() %></td>
        <td><%=vo.getmSinger() %></td>
        <td><%=vo.getmGenre() %></td>
        <td><%=vo.getmCountry() %></td>
        <td><span id="player" class="glyphicon glyphicon-volume-up player" src ="./ListeningMusicController?mCd=<%=vo.getmCd() %>"></span>
        	</td>
        	<td><input type="checkbox" class="check-item" value="<%=vo.getmCd() %>"></td>
      </tr>
    
      <%
      num++;
      	}
     }else{
    	 %>
    	 <tr class="success">
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
       </tr>
     <%
     }
      %>
      
  </table>
  <hr/>
 
  	<%
  		if(loginId == null) {
  	%>
  	<input type="button" value="플레이리스트삭제" class="btn btn-default pull-right" onclick="alert('권한이 없습니다.');">
  	<%
  		}else {
  	%>
  	<input type="button" value="플레이리스트삭제" class="btn btn-default pull-right" onclick="deleteSelectedItems();">
  	<%
  		}
  	%>
  	
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
  
  
  
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script>

$('.player').on('click', function() {
	<% if(loginId == null || loginId.isEmpty()) { %>
		alert("로그인이 필요합니다.");
	<% } else { %>
		var src = $(this).attr('src');
	    window.location.href = src;
	<% } %>
	});
	
function deleteSelectedItems() {
	  var selectedItems = []; // 선택된 mCd 값을 저장할 배열
		let mCdStr = '';
	  
	  $('.check-item').each(function(i, item) {
		 // console.log(item, i);
	    if ($(this).is(':checked')) {
	      if(i == 0){
	    	mCdStr = $(this).val();
	    	  
	      }else{
	    	  
	    	mCdStr = mCdStr + '@' +  $(this).val();
	      }
	    	
	    	
	    /* 	var mCd = $(this).val();
	      console.log('mCd : ', mCd);
	      selectedItems.push('aaa'); */
	      
	    }
	  });
console.log(selectedItems);

	  // AJAX 요청 보내기
	  $.ajax({
	    url: './PlayListDeleteController', // 삭제를 처리할 서블릿의 URL
	    method: 'POST',
	    data: { mCds: mCdStr }, // 선택된 mCd 값 전달
	    dataType: 'json',
	    success: function(response) {
	      // 요청이 성공적으로 처리된 후 실행될 로직
	      if(response.rst == 'OK'){
		      alert('삭제에 성공했습니다.');
	      }
	      
	      // 필요한 경우 추가적인 동작을 수행하거나 페이지를 새로고침할 수 있습니다.
	    },
	    error: function(xhr, status, error) {
	      // 요청이 실패한 경우 실행될 로직
	      alert('삭제에 실패했습니다.');
	    }
	  });
	}
</script>
</body>
</html>
