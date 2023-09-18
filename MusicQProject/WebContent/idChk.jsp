<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%
	String userId = request.getParameter("id");

	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@112.220.114.130:1521:xe";
	Connection conn = DriverManager.getConnection(url, "team4_202302M", "java");
	Statement stmt = conn.createStatement();
	
	String sql = "select mem_id from member where mem_id = '" + userId + "'";
	ResultSet rs = stmt.executeQuery(sql);

	if (userId.length() <= 3) {
%>
	{
		"code": "fail",
		"msg": "아이디는 4자 이상이어야 합니다."
	}
<%
	} else if (rs.next()) {
%>
	{
		"code": "fail",
		"msg": "사용불가"
	}
<%	
	} else {
%>
	{
		"code": "ok",
		"msg": "사용가능"
	}
<%
	}
	
	rs.close();
	stmt.close();
	conn.close();
%>
