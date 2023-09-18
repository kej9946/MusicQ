<%@page import="musicq.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    MemberVO mv = (MemberVO) request.getAttribute("mv");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Member</title>
</head>

<style>
    body {
        background-color: #f5f5f5;
        font-family: Arial, sans-serif;
    }

    h1 {
        color: #4CAF50;
    }

    .popup {
        position: fixed;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        width: 300px;
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
    }

    label {
        display: block;
        margin-bottom: 10px;
    }

    input[type="text"],
    input[type="email"] {
        width: 100%;
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    input[type="submit"] {
        background-color: #4CAF50;
        color: #fff;
        border: none;
        padding: 10px 20px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 14px;
        border-radius: 4px;
        cursor: pointer;
    }
</style>

<body>
    <div class="popup">
        <form action="/MusicQProject/edit_member" method="POST">
            <h1>멤버 수정</h1>
         
            <input type="hidden" id="memId" name="memId" value="<%=mv.getMemId()%>" required>
            <label for="memPw">비밀번호</label>
            <input type="text" id="memPw" name="memPw" value="<%=mv.getMemPw()%>" required><br>
            <label for="memTel">전화번호</label>
            <input type="text" id="memTel" name="memTel" value="<%=mv.getMemTel()%>" required><br>
            <label for="memEmail">이메일</label>
            <input type="email" id="memEmail" name="memEmail" value="<%=mv.getMemEmail()%>" required><br>
            <label for="memName">이름</label>
            <input type="text" id="memName" name="memName" value="<%=mv.getMemName()%>" required><br>
            <input type="submit" value="Edit">
        </form>
    </div>
</body>
</html>
