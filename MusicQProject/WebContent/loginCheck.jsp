<%@page import="musicq.vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//이 곳에 자바코드를 쓸 수 있음
	
	//리턴 타입 : List<MemberVO> 으로 (캐스팅) 해줌
	//request의 getAttributte 속성으로 가져옴
	List<MemberVO> memList = (List<MemberVO>) request.getAttribute("memList");
	
	String msg = (String) session.getAttribute("msg");
	session.removeAttribute("msg");
	
%>

<%
	int size = memList.size();
	
	//자료가 없으면
	if(size == 0) { 
%>		
	<tr>
		<td colspan="5">회원정보가 존재하지 않습니다</td>
	</tr>
<%
	}else {
	
		for(MemberVO mv : memList){
%>
	<tr>

		<td><a href="./Login?memId=<%=mv.getMemId() %>"><%=mv.getMemId() %></a></td>
		<td><%=mv.getMemPw() %></td>
	</tr>
<%
		}
	}
%>
	</table>
	
<% if(msg != null && msg.equals("성공")){ %>
<script>
	
	alert('정상적으로 처리되었습니다');

</script>
<% } %>

</body>
</html>