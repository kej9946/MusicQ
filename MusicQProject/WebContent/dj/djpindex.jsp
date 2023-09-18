<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 
  
<%
	String djpCd = (String)request.getAttribute("djpCode");
	String loginCd = (String)request.getAttribute("loginCode");
%>

<!--djpCd 변수는 request 객체에서 "djpCode"라는 속성을 가져와서 저장  -->
생성코드[<%=djpCd %>]
로긴코드[<%=session.getAttribute("loginCode") %>] 



<%
	if(djpCd == "yes"){
		//step1.DJ신청 페이지 보여주기
%>
		<%@include file="./djpcreate.jsp" %>
<%
	}else{
		//step1.기존 메인페이지 보여주기
		//step2.로그인상태일때 main2 보여주기
		if(loginCd != null){
%>
			<%@include file="/main2.jsp"%>
<%		}else{
			
		//step2.로그아웃인상태일때 index.jsp보여주기
%>
		<div class="col-sm-8 text-left"> 
	      <h1>Welcome</h1>
	      <p>Main페이지</p>
	    </div>
<%
		}//loginCd분기문 end 
	} //else end
%>
    
    
    
   

</body>
</html>