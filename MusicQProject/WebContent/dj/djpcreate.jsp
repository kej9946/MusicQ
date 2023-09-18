<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뮤직큐DJ 신청하기</title>


<!-- 제이쿼리 스크립트  -->
<script type="text/javascript" src="/resource/script/web/common/jquery-1.9.1.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- 구글폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Fira+Sans&family=Noto+Sans+KR:wght@500;700;900&display=swap"
	rel="stylesheet">


<!--글자수 입력 제한  -->
<script type="text/javascript" src="charcount.js"></script>


<!--프로필사진, 대표사진 미리보기  -->
<script type="text/javascript" src="imgpreview.js"></script>

</head>

<style>
<%@ include file="djcreate.css" %>

</style>


</head>
<body>
	<form action="${pageContext.request.contextPath}/dj/djpcreate.do" method="post" enctype="multipart/form-data">
		<span id="text1"><svg xmlns="http://www.w3.org/2000/svg"
				width="20" height="20" fill="currentColor"
				class="bi bi-music-player" viewBox="0 0 16 16">
  <path
					d="M4 3a1 1 0 0 1 1-1h6a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1V3zm1 0v3h6V3H5zm3 9a1 1 0 1 0 0-2 1 1 0 0 0 0 2z" />
  <path
					d="M11 11a3 3 0 1 1-6 0 3 3 0 0 1 6 0zm-3 2a2 2 0 1 0 0-4 2 2 0 0 0 0 4z" />
  <path
					d="M2 2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V2zm2-1a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H4z" />
</svg> 뮤직큐DJ 신청하기</span> <br> <span id="text2" style="margin-left: 5px;">멜론DJ
			신청을 하기 위해 DJ플레이리스트를 아래의 항목에 맞춰 만들어야 합니다.</span><br> <span id="text3">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
				fill="currentColor" class="bi bi-dot" viewBox="0 0 16 16">
  <path d="M8 9.5a1.5 1.5 0 1 0 0-3 1.5 1.5 0 0 0 0 3z" />
</svg>최소 4곡 이상의 수록곡<br> <svg xmlns="http://www.w3.org/2000/svg"
				width="16" height="16" fill="currentColor" class="bi bi-dot"
				viewBox="0 0 16 16">
  <path d="M8 9.5a1.5 1.5 0 1 0 0-3 1.5 1.5 0 0 0 0 3z" />
</svg>선곡의 주제/테마/장르를 표현할 수 있는 제목<br> <svg
				xmlns="http://www.w3.org/2000/svg" width="16" height="16"
				fill="currentColor" class="bi bi-dot" viewBox="0 0 16 16">
  <path d="M8 9.5a1.5 1.5 0 1 0 0-3 1.5 1.5 0 0 0 0 3z" />
</svg>DJ페이지 주제 등 간단한 소개 글 기입<br> <br>
		</span>


		<table class="profile">
			<tr>
				<th class="th" scope="row">닉네임</th>
				<td><input type="text" title="닉네임" class="wid53"
					name="djNm" placeholder="10자 이내로 작성" onkeyup="nickcount(this)" required /> <span
					id="nickCount"></span> <span id="nickWarning"
					style="color: red; display: none;" required>(필수)닉네임은 10자 이내로 작성해주세요.</span></td>
			</tr>

			<tr>
				<th class="th" scope="row">SNS</th>
				<td><select lass="wid10" title="SNS" name="djpSnsCorp">
						<option value="">선택</option>
						<option value="유튜브">유튜브</option>
						<option value="인스타그램">인스타그램</option>
						<option value="블로그">블로그</option>
						<option value="트위터">트위터</option>
						<option value="기타">기타</option>
				</select><input type="text" title="SNS" placeholder="SNS 주소 입력" class="wid72" name="djpSns" />
			</tr>
		</table>

		<table class="pageInfo">
			<tr>
				<th class="th" scope="row">제목</th>
				<td><input type="text" title="제목" class="wid60" name="djpNm"
					placeholder="40자 이내로 작성" onkeyup="titlecount(this)" /> <span
					id="titleCount" required></span> <span id="titleWarning"
					style="color: red; display: none;">(필수)제목은 40자 이내로 작성해주세요.</span></td>
				</td>

			</tr>


			<tr>
				<th class="th" scope="row">장르</th>
				<td><select class="wid30" name="djpGenre" title="카테고리 선택" required>
						<option value="">대표장르</option>
						<option value="발라드">발라드</option>
						<option value="댄스">댄스</option>
						<option value="랩/힙합">랩/힙합</option>
						<option value="인디음악">인디음악</option>
						<option value="POP">POP</option>
						<option value="R&B/Soul">R&B/Soul</option>
				</select>
			</tr>

			<tr>
				<th class="th" scope="row">테마</th>
				<td><select class="wid30" name="djpKeywd" title="카테고리 선택" required>
						<option value="">대표테마</option>
						<option value="계절">계절</option>
						<option value="신나는">신나는</option>
						<option value="이별">이별</option>
						<option value="힐림">힐링</option>
						<option value="드라이브">드라이브</option>
						<option value="여행">여행</option>
						<option value="MBTI">MBTI</option>
						<option value="사랑">사랑</option>
						<option value="트렌디">트렌디</option>
				</select>
			</tr>

			<tr>
				<th class="th" scope="row">페이지 소개</th>
				<td><textarea title="소개" name ="djpIntro" placeholder="200자 이내(400byte)"
						onkeyup="introcount(this)" required></textarea><span id="introCount"></span>
					<span id="introWarning" style="color: red; display: none;">(필수)소개글은
						200자 이내로 작성해주세요.</span></td>

				</td>
			</tr>
		</table>
		
		<table class="attachfile">
  <tr>
    <th class="th" scope="row">
      <img src="https://cdnimg.melon.co.kr/resource/image/web/default/noArtist_300_160727.jpg/melon/resize/120"
        alt="error" class="profile-preview" style="width:120px;height:120px; margin-top: 10px;"><br>
      프로필사진
    </th>
    <td><input type="file" name="djpDjimgCd" title="프로필사진" class="wid60" /> <span></span></td>
  </tr>

  <tr>
    <th class="th" scope="row">
      <img src="https://cdnimg.melon.co.kr/resource/image/web/default/noAlbum_500_160727.jpg/melon/resize/104"
        alt="error" class="djp-preview" style="width:120px; height:120px; "><br>페이지대표사진
    </th>
    <td><input type="file" name="djpImgCd" title="DJ Page대표사진" class="wid60" /> <span><br></span></td>
  </tr>
</table>
		
	</form>
	

	<div class="button-container">
		<div class="btnsubmit">
			<a href="#" class="Btn">신청하기</a>
		</div>
		<div class="btnreset">
			<a href="#" class="Btn">취소하기</a>
		</div>
	</div>
	

	
	<script>
	const applyBtn = document.querySelector('.btnsubmit .Btn');
	const cancelBtn = document.querySelector('.btnreset .Btn');
	const form = document.querySelector('form');

	applyBtn.addEventListener('click', () => {
		if (form.reportValidity()) { // 모든 입력란이 유효한 경우에만 form을 제출
			window.alert('DJ신청이 완료되었습니다. 나의 DJ페이지로 이동합니다.');
			form.submit();
			//window.location.href = "${pageContext.request.contextPath}/djpcreate.do";
		} else { // 입력 필드 검증에 실패한 경우
			window.alert('작성하지 않은 내용이 있습니다.'); // 오류 메시지 보여주기
		}
	});
	

	cancelBtn.addEventListener('click', () => {
	  form.reset();
	});
	

	
	</script>	
	
</body>
</html>

