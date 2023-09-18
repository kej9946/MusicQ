<%@page import="musicq.vo.DjPageVO"%>
<%@page import="musicq.dj.service.DjPageServiceImpl"%>
<%@page import="musicq.dj.service.IDjPageService"%>
<%@page import="musicq.vo.MusicVO"%>
<%@page import="java.util.List"%>
<%@page import="musicq.music.service.IMusicService"%>
<%@page import="musicq.music.service.MusicServiceIpml"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
String uId = (String) request.getAttribute("uId");
IDjPageService djps = DjPageServiceImpl.getInstance();
IMusicService mus = MusicServiceIpml.getInstance();

List<MusicVO> musicList = (List<MusicVO>) request.getAttribute("musicList");
List<MusicVO> mKor = mus.selectKorMusic();
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<title>DJ 플레이리스트 선곡하기</title>
<!-- 제이쿼리 스크립트  -->
<script type="text/javascript"
	src="/resource/script/web/common/jquery-1.9.1.min.js"></script>

<!-- 부트스트랩 앨범 디자인 스크립트  -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">

<style>
table {
	width: 100%;
}

th, td {
	padding: 8px;
	text-align: left;
	border-bottom: 1px solid #ddd;
}
</style>


</head>
<body>
	<h1>
		뮤직큐DJ<%=djps.getDjNm(uId)%>님의 Playlist
	</h1>

	 <!-- 통합검색 영역 -->
    <fieldset>
        <legend>통합검색영역</legend>
        <form action="/djsearch.do" method="post" id="searchForm">
            <input type="text" title="검색 입력 편집창" placeholder="검색어를 입력하세요." name="DjPlayList" id="top_search" style="width: 249px" />
            <button type="submit" class="btn_icon search_m" title="검색">
                <span class="odd_span">검색</span>
            </button>
        </form>
    </fieldset>
    <!-- //통합검색 영역 -->

	<script>
		$(document).on('click', '#search', function(e) {
			$("#searchForm").submit();
		});
		
	</script>

<!-- 검색결과영역-->
<h2>플레이리스트</h2>
<table class="table" id="playlistTable">
  <thead>
    <tr>
      <th>노래제목</th>
      <th>가수명</th>
      <th>장르</th>
      <th>국가</th>
      <th>담기</th>
    </tr>
  </thead>
  <tbody>
    <!-- 검색한 음악이 여기에 추가될 행 -->
       <tr class="success">
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td><button onclick="addToPlaylist(this)">담기</button></td>
    </tr>
    <!-- 담겨진 음악이 여기에 추가될 행 -->
    <tr>
      <td>담긴 음악 제목</td>
      <td>담긴 음악 가수</td>
      <td>담긴 음악 앨범</td>
      <td><button onclick="removeFromPlaylist(this)">삭제</button></td>
    </tr>
    <!-- 담겨진 음악이 여기에 추가될 행 -->
  </tbody>
</table>
<script>
function addToPlaylist(button) {
  // 클릭된 버튼이 위치한 행에 대한 정보 추출
  var row = button.parentNode.parentNode;
  var cells = row.getElementsByTagName('td');
  var title = cells[0].innerText;
  var artist = cells[1].innerText;
  var album = cells[3].innerText;

  // 플레이리스트 테이블의 마지막 행에 새로운 행 추가
  var table = document.getElementById('playlistTable');
  var newRow = table.insertRow(-1);

  // 각 셀에 음악 정보와 삭제 버튼 추가
  var titleCell = newRow.insertCell(0);
  var artistCell = newRow.insertCell(1);
  var albumCell = newRow.insertCell(2);
  var removeCell = newRow.insertCell(3);

  titleCell.innerText = title;
  artistCell.innerText = artist;
  albumCell.innerText = album;

  var removeButton = document.createElement('button');
  removeButton.innerText = '삭제';
  removeButton.onclick = function() {
    table.deleteRow(newRow.rowIndex);
  };
  removeCell.appendChild(removeButton);
}
</script>

	<!-- 부트스트랩 스크립트  -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
		crossorigin="anonymous"></script>
</body>
</html>





