<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="musicq.music.service.MusicServiceIpml" %>
<%@ page import="musicq.music.service.IMusicService" %>
<%@ page import="musicq.vo.MusicVO" %>
<% 

   String mCd = request.getParameter("mCd"); 
%>
<%IMusicService mus=MusicServiceIpml.getInstance(); 


List<MusicVO> mList = mus.selectRank();  

String loginId = (String)session.getAttribute("loginCode");


%> 
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   <style>
   #area {
  position: relative; /* absolute는 부모가 relative일 때 부모를 따라간다. */
  width: 100%;
  height: 100%;
  margin-bottom: 50px;
  margin-top:50px;
  margin-left: 50px;
}

#video {
  position: absolute;
  width: 60%; /* 부모에 맞게 꽉 채운다. */
  height: 60%;
  /*  position: absolute; */
  top: 30%;
  left: 50%;
  transform: translate(-50%, -50%);
      
}
#playlist {
  position: absolute;
  width: 60%;
  left: 20%;
  display: flex;
  justify-content: end;
  top: -30px;
}
   </style>
   
   
   
    <meta charset="UTF-8">
    <title>Insert title here</title>
    
    <script type="text/javascript">
    function f_move(){
    	window.location.href = "./PlayListInsertController?mCd=<%=mCd %>"
    	
    }
    function f_playlist_move(){
    	window.location.href = "./PlayListController"
    }
    </script>
</head>
<body>
<header>
    <%@include file="./header.jsp"%>
</header>
<div id="area">

	<div id="playlist">
        <%
            if (loginId == null) {
        %>
        <input type="button" value="플레이리스트에 추가"  onclick="alert('권한이 없습니다.');">
<!--         <br> -->
<!--         <br> -->
        <input type="button" value="플레이리스트로 가기"  onclick="alert('권한이 없습니다.');"> 
        <%
            } else {
        %>
        <input type="button" value="플레이리스트에 추가"  onclick= "f_move()">
<!--         <br> -->
<!--         <br> -->
        <input type="button" value="플레이리스트로 가기"  onclick= "f_playlist_move()">
        <%
            }
        %>
    </div>
    
    <iframe id= "video" src="<%= mCd %>" name="listenMusic"><p>ddd</p></iframe>
</div>



    <div class="notice">
        <dl>
            <dt class="label">
                <a href="./img/ala.jpg" title="공지사항">공지사항</a>
            </dt>
            <dd>
                <a href="./img/ala.jpg" title="0505공지" class="mlog" data="">05/05(목) 2023-05-05-14:30 공지 </a>
            </dd>
            <dd class="date">
                2023.05.05 <br>
                <br>
                <br>
            </dd>
        </dl>
    </div>

    
    
    
    
    <div id="footer" class="pr_none">
        <div id="popNotice" class="wrap_pop_notice MELONUIT-738"></div>
        <div class="footer_cont">
            <div class="footer_menu"></div>
            <p>
                <span class="first"><strong>대덕인재개발원</strong>&nbsp;&nbsp;대전 중구 오류동 846</span> <span>담임 : 배미숙</span> <span class="first">담임 전화 : 010-0000-0000</span> <span>이메일 : <a href="https://www.ddit.or.kr/room" class="btn_footer_mail">bms@naver.com</a></span>
<span>사업자 : 재단법인 대덕인재개발원</span> <span><a href="https://www.ddit.or.kr/room" class="btn_footer_mail" target="_blank">© 대덕인재Corp.</a></span>
</p>
</div>
</div>

</body>
</html>