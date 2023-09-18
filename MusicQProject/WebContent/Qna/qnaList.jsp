<%@page import="musicq.vo.QnaVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.Comparator"%>
<!-- 헤더영역 -->
<%@include file="../header.jsp" %>
<%
	String loginId = (String)session.getAttribute("loginCode");
	List<QnaVO> qnaList = (List<QnaVO>) request.getAttribute("qnaList");
	int currentPage = (int)request.getAttribute("cPage");
	int startPage = (int)request.getAttribute("sPage");
	int endPage = (int)request.getAttribute("ePage");
	int totalPage = (int)request.getAttribute("tPage");
	
	
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <style>
  
  .container {
    word-wrap: break-word;
    padding-top:50px;
  }

  .pagination {
   	margin: auto;
    display: block;
    text-align: center
  }

  .pagination a, .pagination .current-page {
    display: inline-block;
    padding: 5px 10px;
    border: 1px solid #ddd;
    border-radius: 3px;
    margin-right: 5px;
    color: #000;
    text-decoration: none;
  }

  .pagination a:hover {
    background-color: #2ecc71;
    color: #fff;
  }

  .pagination .current-page {
    background-color: #2ecc71;
    color: #fff;
  }
  
  h2 {
    text-align: center;
  }
  
  #footer {
  margin-top: 50px;
  }
  </style>
</head>
<body>

<br>
<h2>문의사항</h2>
<%
// qnaNo를 기준으로 qnaList를 내림차순으로 정렬합니다.
Collections.sort(qnaList, new Comparator<QnaVO>() {
    @Override
    public int compare(QnaVO vo1, QnaVO vo2) {
        return Integer.compare(Integer.parseInt(vo2.getQnaNo()), Integer.parseInt(vo1.getQnaNo()));
    }
});
%>

<div class="container">
  <table class="table table-hover">
    <tr>
      <th>번호</th>
      <th>제목</th>
      <th>작성자ID</th>
      <th>날짜</th>
    </tr>

    <%
    for(QnaVO vo : qnaList){
    %>

    <tr class="success">
      <td><%=vo.getQnaNo()%></td>
      <td><a href="./detail.do?memId=<%=vo.getMemId()%>&qnaTitle=<%=vo.getQnaTitle()%>"><%=vo.getQnaTitle()%></a></td>
      <td><%=vo.getMemId()%></td>
      <td><%=vo.getQnaDt()%></td>
    </tr>

    <%
    }
    %>

  </table>
  <hr/>
</div>

<div class="container">
  <%
  if(loginId == null) {
  %>
  <input type="button" value="문의글쓰기" class="btn btn-default pull-right" onclick="alert('글쓰기 권한이 없습니다.');">
  <%
  } else {
  %>
  <input type="button" value="문의글쓰기" class="btn btn-default pull-right" onclick="location.href='/MusicQProject/Qna/qnaInsert.jsp'">
  <%
  }
  %>
</div>

<div class="pagination">
  <%-- 이전 페이지 링크 --%>
  <% if (currentPage > 1) { %>
    <a href="?page=<%=currentPage - 1%>">&laquo; 이전</a>
  <% } %>

  <%-- 페이지 번호 링크 --%>
  <% for (int i = startPage; i <= endPage; i++) { %>
    <% if (i == currentPage) { %>
      <span class="current-page"><%=i%></span>
    <% } else { %>
      <a href="?page=<%=i%>"><%=i%></a>
    <% } %>
  <% } %>

  <%-- 다음 페이지 링크 --%>
  <% if (currentPage < totalPage) { %>
    <a href="?page=<%=currentPage + 1%>">다음 &raquo;</a>
  <% } %>
</div>

</body>

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

</html>
