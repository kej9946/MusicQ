<%@page import="musicq.vo.MusicVO"%>
<%@page import="java.util.List"%>
<%@page import="musicq.music.service.MusicServiceIpml"%>
<%@page import="musicq.music.service.IMusicService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@include file="/header.jsp" %>


<html>

<%
   IMusicService mus = MusicServiceIpml.getInstance();
List<MusicVO> mNoKor = mus.selectNoKorMusic();
%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>뮤직큐 해외차트</title>
    <style>
        .img_box {
         /*    background: red; */
            margin-right: 10px;
            margin-bottom: 5px;
            width: calc(33.33% - 10px);
            margin-bottom: 5px;  
            height: 300px;
            text-align: center;
        }

        .all_wrap {
            display: flex;
            width: 1000px;
           margin: 0 auto;
           padding-top:45px;
           padding-bottom:30px;
           
        }

        .img_wrap {
            display: flex;
            flex-wrap: wrap;
            flex: 7;
            relative
           
        }

 
        .side_bar {
            flex: 1;
            font-size: 16px;
        }
        
        #music_img{
        width:225px;
        height: 225px;
        }
        
        .music_title{
        text-align : center;
        height: 50px;
        }
        
        h3{
           font-size: 16px;
           font-family: initial;
           height: 50px;
           line-height: 50px;
           padding-top:30px;
           padding-bottom:30px;
        }
        
        .side_bar>ul>li{
        font-family: initial;
        font-weight: bold;
        }
    </style>
</head>

<body>

<div class="music_title"><h3>뮤직큐 해외차트 종합</h3></div>
    <div class="all_wrap">
        <div class="side_bar">
            <ul>
                <li><a href="./musicQChart.jsp">모든 곡 종합</a></li>
                <br>
                <li><a href="./musicQChartKor.jsp">국내 종합</a></li>
                <br>
                <li><a href="./musicQChartNoKor.jsp">해외 종합</a></li>
            </ul>
        </div>
        <div class="img_wrap">
<%for(int i=0; i<9;i++){ %>
            <div class="img_box">
            <a href=../ListeningMusicController?mCd=<%=mNoKor.get(i).getmCd()%>>
            <img id="music_img" src=".<%=mus.selectImgPath(mNoKor.get(i).getmCd())%>"/>
            <div><span><%=mNoKor.get(i).getmNm()%></span></div>
            </a>
            </div>
            <%} %>
        </div>
    </div>

</body>

</html>