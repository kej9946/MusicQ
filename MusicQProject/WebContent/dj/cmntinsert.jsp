<%@page import="musicq.vo.DjPageVO"%>
<%@page import="musicq.dj.service.DjPageServiceImpl"%>
<%@page import="musicq.dj.service.IDjPageService"%>
<%@page import="musicq.vo.MusicVO"%>
<%@page import="java.util.List"%>
<%@page import="musicq.music.service.IMusicService"%>
<%@page import="musicq.music.service.MusicServiceIpml"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>

<%
	String djId = (String) request.getParameter("djId");
String uId = (String) session.getAttribute("loginCode");

DjPageVO djpv = new DjPageVO();
IDjPageService djps = DjPageServiceImpl.getInstance();



IMusicService mus = MusicServiceIpml.getInstance();

List<MusicVO> musicList = (List<MusicVO>) request.getAttribute("musicList");
List<MusicVO> mKor = mus.selectKorMusic();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<title>DJ Comment</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<!-- 제이쿼리 스크립트  -->
<script type="text/javascript"
	src="/resource/script/web/common/jquery-1.9.1.min.js"></script>

<!-- 부트스트랩 앨범 디자인 스크립트  -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">

<title>DJ댓글창</title>


<style>
.text-large {
	font-size: 16px;
}

#write {
	margin-top: 10px;
	margin-bottom: 20px;
	margin-left: 30px;
	margin-right: 900px;
	width: 1000px;
}

#button button {
  margin-right: 20px; /* 오른쪽 여백 */
}

#button button:first-child {
 margin-left: 30px; /* 첫 번째 버튼 왼쪽 여백 */

}

#button button:last-child {
  margin-right: 0; /* 마지막 버튼 오른쪽 여백 제거 */
}
</style>

</head>
<body>
	<article>
		<form name="form" id="form" method="post"
			action="${pageContext.request.contextPath}/cmntinsert.do">
			<section id="write">
				<div class="mb-3">
					<label for="exampleFormControlInput1" class="form-label text-large">TO.
						뮤직큐DJ</label> <input type="text" class="form-control text-large"
						id="exampleFormControlInput1" name="djId" value="<%=djId%>"
						readonly>
				</div>
				<div class="mb-3">
					<label for="exampleFormControlInput1" class="form-label text-large">FROM.</label>
					<input type="text" class="form-control text-large"
						id="exampleFormControlInput1" name="uId" value="<%=uId%>" readonly>
				</div>
				<div class="mb-3">
					<label for="exampleFormControlTextarea1"
						class="form-label text-large">comment</label>
					<textarea class="form-control text-large"
						id="exampleFormControlTextarea1" name="cmntCn" rows="3"
						placeholder="타인을 비방하거나 비속어를 사용할 경우 불이익을 받을 수 있습니다." required></textarea>
				</div>
			</section>
			<div id="button">
			<%-- <button type="button" class="btn btn-sm btn-success text-large" id="btnList"
				onclick="location.href='${pageContext.request.contextPath}/cmntList.do?djId=<%=djId%>'">댓글목록</button> --%>
				<button type="submit" class="btn btn-sm btn-success text-large"
					id="btnSave">댓글등록</button>
				<button type="reset" class="btn btn-sm btn-success text-large"
					id="btnCancel">작성취소</button>


			</div>
		</form>
	</article>

	<script>
		$(document).on('click', '#btnSave', function(e) {
			e.preventDefault();

			var cmntCn = $("#exampleFormControlTextarea1").val(); // 댓글 내용 가져오기

			if (cmntCn.trim() === '') { // 댓글 내용이 비어 있는지 확인
				alert("내용을 작성해주시기 바랍니다.");
			} else {
				$("#form").submit(); // 서버로 데이터 전송
				alert("댓글 등록이 완료되었습니다.");
			}
		});
	</script>

	<!-- 부트스트랩 스크립트  -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
		crossorigin="anonymous"></script>

</body>
</html>