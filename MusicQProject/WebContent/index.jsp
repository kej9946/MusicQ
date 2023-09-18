<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    String joinCd = (String)request.getAttribute("joinCode");
%>
<!-- 조인코드[<%=joinCd %>] -->

<%
    if("yes".equals(joinCd)){
        //회원가입 페이지 보여주기
%>
        <%@include file="./join.jsp" %>
<%
    }else{
        //기존 메인페이지 보여주기
%>
        <%@include file="./main.jsp" %>  
<%
    } //else end
%>

</body>
</html>
