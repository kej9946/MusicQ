<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Gongji Detail</title>
   <style>
        /* CSS 스타일을 추가하여 디자인을 변경할 수 있습니다. */
        /* 예시: 테이블 스타일 변경 */
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        h2 {
            color: #444;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #E6F4E6;
            border: 1px solid #99CC99;
        }

        th, td {
            padding: 10px;
            border-bottom: 1px solid #99CC99;
        }

        th {
            background-color: #A2C48D;
            color: #FFF;
        }

        textarea {
            width: 100%;
            height: 200px;
        }

        .button-container {
            display: flex;
            justify-content: left;
            margin-top: 10px;
        }

        .button-container button {
            margin: 0 5px;
            padding: 8px 16px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 4px;
        }

        .button-container button:hover {
            background-color: #45a049;
        }
    </style>
</head>

<body>
    <h2>Gongji Detail</h2>

    <%-- 공지사항 정보를 가져옴 --%>
    <%@ page import="musicq.vo.GongjiVO"%>
    <%
        GongjiVO gongji = (GongjiVO) request.getAttribute("gongji");
    %>

    <%-- 수정 폼을 표시하는 부분 --%>
    <form action="/MusicQProject/update_gongji" method="post">
        <input type="hidden" name="g_No" value="<%=gongji.getgNo()%>">
        <table>
            <tr>
                <th>G_NO</th>
                <td><%=gongji.getgNo()%></td>
            </tr>
            <tr>
                <th>G_TITLE</th>
                <td><input type="text" name="g_Title" value="<%=gongji.getgTitle()%>"></td>
            </tr>
            <tr>
                <th>G_CONTENT</th>
                <td><textarea name="g_Content"><%=gongji.getgContent()%></textarea></td>
            </tr>
            <tr>
                <th>G_DT</th>
                <td><%=gongji.getgDt()%></td>
            </tr>
        </table>
        <div class="button-container">
            <button type="submit">수정</button>
            <button onclick="goBack()">뒤로가기</button>
        </div>
    </form>
    
    <script>
        function goBack() {
            window.history.back();
        }
    </script>

    <%-- 기타 내용 추가 --%>

</body>
</html>
