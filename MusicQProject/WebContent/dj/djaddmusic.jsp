
<%@page import="java.util.List"%>
<%@page import="musicq.vo.DjPageVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<% List<DjPageVO> djpvList = (List<DjPageVO>) request.getAttribute("djpvList");

String msg = (String) session.getAttribute("msg");
session.removeAttribute("msg");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DJ페이지 전체 조회</title>
</head>
<%-- <body>
	<table border="1">
		<tr>
			<th>ID</th>
			<th>DJ명</th>
			<th>페이지제목</th>
			<th>장르</th>
			<th>키워드</th>
		</tr>
		<%
			int size = djpvList.size();

		if (size == 0) {
		%>

		<tr>
			<td colspan="5">회원정보가 존재하지 않습니다.</td>
		<tr>

			<%
				} else {
			for (DjPageVO djpv : djpvList) {
			%>
		
		<tr>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
			 <td><%=djpv.setMemId("gusl7617")%></td>
			<td><a href="./mydjpage.do?memId=<%=djpv.getMemId()%>"><%=djpv.getDjNm()%></td>
			<td><%=djpv.getDjpNm()%></td>
			<td><%=djpv.getdjpGenre()%></td>
			<td><%=djpv.getDjpKeywd()%></td>
		</tr>
		<%
			}
		}
		%>
		<tr align="center">
			<td colspan="5"><a href="./insert.do">[회원 등록]</a></td>
		</tr>

	</table>

	<%
		if (msg != null && msg.equals("성공")) {
	%>
	<script>
		alert('정상적으로 처리되었습니다.');
	</script>
	<%
		}
	%> --%>

</body>
</html>