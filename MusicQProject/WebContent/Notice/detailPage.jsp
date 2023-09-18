<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.List"%>
<%@ page import="musicq.vo.GongjiVO"%>

<%@include file="/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<style>
    /* 스타일 추가 */
    body {
        background-color: #f0f5f9;
        font-family: Arial, sans-serif;
    }

    .notice-container {
        max-width: 500px;
        margin: 20px auto;
        background-color: #fff;
        border: 1px solid #ccc;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        padding: 20px;
    }

    .notice-container h2 {
        color: black;
        font-size: 20px;
        margin-bottom: 10px;
    }

    .notice-container table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 10px;
    }

    .notice-container table td {
        padding: 5px;
        border: 1px solid #ccc;
    }

    .notice-container table td:first-child {
        font-weight: bold;
        width: 100px;
    }

    .notice-container p {
        margin-bottom: 10px;
    }

    .notice-container a {
        color: #3182ce;
        text-decoration: none;
    }
</style>
</head>
<body>

    <div class="notice-container">
        <h2>공지사항</h2>

        <%
            // 공지사항 상세 정보를 가져옴
            GongjiVO gongji = (GongjiVO) request.getAttribute("gongji");
            if (gongji != null) {
        %>
        <table>
            <tr>
                <td>공지번호:</td>
                <td><%=gongji.getgNo()%></td>
            </tr>
            <tr>
                <td>제목:</td>
                <td><%=gongji.getgTitle()%></td>
            </tr>
            <tr>
                <td>작성일:</td>
                <td><%=gongji.getgDt()%></td>
            </tr>
            <tr>
                <td>내용:</td>
                <td><%=gongji.getgContent()%></td>
            </tr>
        </table>
        <%
            } else {
        %>
        <p>공지사항이 없습니다.</p>
        <%
            }
        %>
        <a href="notice.do">목록으로 돌아가기</a>
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
