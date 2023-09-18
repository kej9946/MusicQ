
<%@page import="java.awt.color.CMMException"%>
<%@page import="java.util.Comparator"%>
<%@page import="java.util.Collections"%>
<%@page import="musicq.dj.service.IDjCommentService"%>
<%@page import="musicq.dj.service.DjCommentServiceImpl"%>
<%@page import="musicq.dj.service.IDjPageService"%>
<%@page import="musicq.vo.DjpCmntVO"%>
<%@page import="board.dao.QnaDaoImpl"%>
<%@page import="musicq.vo.QnaVO"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
String loginId = (String) session.getAttribute("loginCode");
String djId = (String) request.getAttribute("djId");

String deleteMsg = (String) request.getAttribute("deleteMsg");
String failMsg = (String) request.getAttribute("failMsg");
DjpCmntVO cmntv =(DjpCmntVO) request.getAttribute("cmntv");
String cmntCn = (String) request.getAttribute("cmntCn");
List<DjpCmntVO> cmntList = (List<DjpCmntVO>) request.getAttribute("cmntList");

%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
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

<style>
.container {
	word-wrap: break-word;
	background-color: white
}

.text-large {
	font-size: 15px;
}

button{

margin-left: 20px;
}

</style>
</head>
<body>

	<div class="container">
	 <form action="${pageContext.request.contextPath}/cmntdelete.do" method="post">
		<table class="table table-hover">

			<%
				
				for (DjpCmntVO cmntvo : cmntList) {
			%>

			<!-- 테이블의 행 생성 -->
			<tr class="success text-large">
				<td><input class="form-check-input" type="checkbox"
					name="selectedItems" value="<%=cmntvo.getCmntNo()%>"></td>
				<td><%=cmntvo.getCmntDt()%></td>
				<td><%=cmntvo.getCmntCn()%></td>
				<td>작성자: <%=cmntvo.getMemId()%></td>
				<td>뮤직큐DJ: <%=cmntvo.getDjId()%></td>
			</tr>
			 <td><input type="hidden" name="cmntDt" value="<%=cmntvo.getCmntDt()%>"></td>
            <td><input type="hidden" name="cmntCn" value="<%=cmntvo.getCmntCn()%>"></td>
            <td><input type="hidden" name="memId" value="<%=cmntvo.getMemId()%>"></td>
            <td><input type="hidden" name="djId" value="<%=cmntvo.getDjId()%>"></td>

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
  <input type="button" value="문의글쓰기" class="btn btn-sm btn-success text-large" onclick="alert('글쓰기 권한이 없습니다.');">
  <%
  } else {
  %>
  <input type="button" value="댓글작성" class="btn btn-sm btn-success text-large" onclick="location.href='cmntinsert.do?djId=<%=djId%>'">
  <%  }  %>
<button type="submit" class="btn btn-sm btn-danger text-large" id="btnDelete" onclick="return confirm('삭제하시겠습니까?');">삭제하기</button>


<%
if (deleteMsg != null && !deleteMsg.isEmpty()) {
%>
<div class="alert alert-success" role="alert">
  <%= deleteMsg %>
</div>
<%
}
if (failMsg != null && !failMsg.isEmpty()) {
%>
<div class="alert alert-danger" role="alert">
  <%= failMsg %>
</div>
<%
}
%>

  
</div>
  </form>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</body>
</html>
