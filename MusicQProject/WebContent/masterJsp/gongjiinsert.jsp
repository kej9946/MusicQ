<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Write Gongji</title>
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
    <h2>공지 작성</h2>

    <%-- 공지사항 작성 폼 --%>
    <form action="/MusicQProject/insert_gongji" method="post">
        <table>
            <tr>
                <th>G_TITLE</th>
                <td><input type="text" name="g_Title"></td>
            </tr>
            <tr>
                <th>G_CONTENT</th>
                <td><textarea name="g_Content"></textarea></td>
            </tr>
        </table>
        <div class="button-container">
            <button type="submit">작성</button>
            <button onclick="goBack()">뒤로가기</button>
        </div>
    </form>
    
    <script>
        function goBack() {
            window.history.back();
        }
    </script>
</body>
</html>
