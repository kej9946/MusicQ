<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 부트스트랩 사용을 위한 외부파일 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- 부트스트랩 사용을 위한 외부파일 -->
<!-- <form class="form-horizontal" method="post" onsubmit="valid()"> -->

<div class="col-sm-8 text-left">
	<h4>회원가입</h4>
	<hr>
	<!-- 	  <form class="form-horizontal" action="test.jsp" method="post"> -->
	<form class="form-horizontal" method="post"
		onsubmit="checkSubmit(event)">
		<div class="form-group">
			<label for="id" class="control-label col-sm-2">아이디<span
				class="rq"> *</span></label> <span class="sp"></span>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="id" name="memId"
					placeholder="아이디 입력 4~10자 " required maxlength="10" minlength="4">

			</div>


			<div class="col-sm-6" style="text-align: left;">
				<button type="button" class="btn btn-success btn-sm" id="idChk">중복검사</button>
				<span id="disp"></span>
			</div>
		</div>

		<div class="form-group">
			<label for="pw" class="control-label col-sm-2">비밀번호<span
				class="rq"> *</span></label>
			<div class="col-sm-4">
				<input type="password" class="form-control" id="pw" name="memPw"
					placeholder="특문,숫자,영소문자,대문자1씩,8자리 이상" required
					pattern="(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#$%^&*()_+|]).{8,}">
				<!-- 임의의문자(.)를 대상으로 최소갯수(*?)의 패턴을 찾음(?=,전방탐색) => 범위내 문자가 최소 1개씩 포함되야 함 -->
			</div>
		</div>

		<div class="form-group">
			<label for="pw" class="control-label col-sm-2">비밀번호 확인<span
				class="rq"> *</span></label>
			<div class="col-sm-4">
				<input type="password" class="form-control" id="pw-check"
					placeholder="비밀번호 확인" name="mem_pw_check" required
					pattern="(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#$%^&*()_+|]).{8,}">
				<!-- 임의의문자(.)를 대상으로 최소갯수(*?)의 패턴을 찾음(?=,전방탐색) => 범위내 문자가 최소 1개씩 포함되야 함 -->
			</div>
		</div>

		<div class="form-group">
			<label for="name" class="control-label col-sm-2">이름<span
				class="rq"> *</span></label> <span class="sp"></span>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="name" placeholder="홍길동"
					name="memName" pattern="[가-힣]{2,5}" required>
			</div>
		</div>

		<div class="form-group">
			<label for="birth" class="control-label col-sm-2">생년월일<span
				class="rq"> *</span></label> <span class="sp"></span>
			<div class="col-sm-4">
				<input type="date" class="form-control" id="birth" name="memBirth"
					required>
			</div>
		</div>

		<div class="form-group">
			<label for="gender" class="control-label col-sm-2">성별<span
				class="rq"> </span></label>
			<div class="col-sm-6">
				<select class="form-control" id="gender" name="memGender" required>
					<option value="">성별 선택</option>
					<option value="남자">남성</option>
					<option value="여자">여성</option>
					<option value="기타">기타</option>
				</select>

			</div>
		</div>





		<div class="form-group">
			<label for="mbti" class="control-label col-sm-2">MBTI<span
				class="rq"> </span></label>
			<div class="col-sm-6">
				<select id="mbti" class="form-control" name="memMbti" required>
					<option value="">선택해주세요</option>
					<option value="없음">없음</option>
					<option value="ISTJ">ISTJ</option>
					<option value="ISFJ">ISFJ</option>
					<option value="INFJ">INFJ</option>
					<option value="INTJ">INTJ</option>
					<option value="ISTP">ISTP</option>
					<option value="ISFP">ISFP</option>
					<option value="INFP">INFP</option>
					<option value="INTP">INTP</option>
					<option value="ESTP">ESTP</option>
					<option value="ESFP">ESFP</option>
					<option value="ENFP">ENFP</option>
					<option value="ENTP">ENTP</option>
					<option value="ESTJ">ESTJ</option>
					<option value="ESFJ">ESFJ</option>
					<option value="ENFJ">ENFJ</option>
					<option value="ENTJ">ENTJ</option>
				</select>
			</div>
		</div>


		<div class="form-group">
			<label for="genre" class="control-label col-sm-2">좋아하는 음악 장르<span
				class="rq"> </span></label>
			<div class="col-sm-6">
				<select id="genre" name="memGenre" class="form-control" required>
					<option value="">선택해주세요</option>
					<option value="없음">없음</option>
					<option value="pop">팝</option>
					<option value="rap/hib">랩/힙합</option>
					<option value="hiphop">인디음악</option>
					<option value="r&b">알앤비</option>
					<option value="dance">댄스</option>
				</select>
			</div>
		</div>

		<div class="form-group">
			<label for="keywd" class="control-label col-sm-2"> 키워드<span
				class="rq"> </span>
			</label>
			<div class="col-sm-6">
				<select id="keywd" name="memKeywd" class="form-control" required>
					<option value="">선택해주세요</option>
					<option value="see">없음</option>
					<option value="see">바다</option>
					<option value="mount">산</option>
					<option value="cafe">카페</option>
					<option value="picnic">피크닉</option>
					<option value="house">집</option>
					<option value="health">운동</option>
					<option value="drive">드라이브</option>
				</select>
			</div>
		</div>


		<div class="form-group">
			<label for="tel" class="control-label col-sm-2">연락처<span
				class="rq">*</span></label>
			<div class="col-sm-4">
				<input type="text" class="form-control" required id="tel"
					name="memTel" placeholder="-없이 작성 하세요">
			</div>
			<div class="col-sm-6" style="text-align: left;">
				<button type="button" class="btn btn-success btn-sm" id="msgpwsand">인증번호전송</button>
				<span id="disp"></span>
			</div>
		</div>
		<div class="form-group">
			<label for="authno" class="control-label col-sm-2">인증번호<span
				class="rq">*</span></label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="authno" name="authNo"
					required>
			</div>
			<div class="col-sm-6" style="text-align: left;">
				<button type="button" class="btn btn-success btn-sm"
					id="authnocheck">인증번호확인</button>
				<span id="disp2"></span>
			</div>
		</div>


		<div class="form-group">
			<label for="add1" class="control-label col-sm-2">우편번호<span
				class="rq"> </span></label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="postAddr"
					placeholder="00000" name="memZip" required>
			</div>
			<div class="col-sm-2">
				<button type="button" id="addrBtn" class="btn btn-info btn-sm">주소검색</button>
			</div>
		</div>

		<div class="form-group">
			<label for="add1" class="control-label col-sm-2">주소<span
				class="rq"> </span></label>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="addr1"
					placeholder="대전광역시 유성구" name="memAddr1" required>
			</div>
		</div>

		<div class="form-group">
			<label for="add2" class="control-label col-sm-2">상세주소<span
				class="rq"> </span></label>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="addr2"
					placeholder="대덕인재3층 " name="memAddr2" required>
			</div>
		</div>


		<div class="form-group">
			<label for="email" class="control-label col-sm-2">이메일</label>
			<div class="col-sm-4">
				<input type="email" class="form-control" required id="email"
					placeholder="aaa1@naver.com" name="memEmail"
					pattern="[0-9a-zA-Z]+@[0-9a-zA-Z]+(\.[a-z]+){1,2}">
			</div>
			<!-- 영문숫자조합이 최소 1회이상 반복 @발생 문자최소1회반복 dot(.)으로 시작하는 영문자 1~2회 발생 -->
		</div>


		<div class="form-group">
			<label for="agreementCheckbox" class="control-label col-sm-2"></label>
			<div class="col-sm-6">
				<div class="checkbox">
					<label> <input type="checkbox" id="agreementCheckbox"
						required> (필수)[개인정보 보호법] 제15조 및 제17조에 따라 위의 내용으로 개인정보를 수집,
						이용 및 제공하는데 동의합니다.
					</label>
				</div>
				<div class="checkbox">
					<label> <input type="checkbox" id="agreementCheckbox">
						(선택)고유식별정보 수집에 동의합니다.
						<button type="button" class="btn btn-primary"
							onclick="showAgreement()">원문보기</button>
					</label>
				</div>

			</div>
		</div>



		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-6">
				<button class="btn btn-default">가입하기</button>
				<span id="joinspan"></span>
			</div>
		</div>
	</form>
</div>

<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	$('#idChk').on('click', function() {
		// $('#id').on('keyup',function(){});

		//영역초기화
		$('#disp').text("");

		//id정보 가져오기
		let idVal = $('#id').val();

		//입력된 id정보가 없는 경우(null체크)
		if (idVal.trim().length == 0)
			return;

		//jqueryAJAX
		$.ajax({
			url : 'idChk.jsp',
			type : 'post',
			// 		data:'key=value',
			//javascript의 경우 Object형태의 데이터를 json형태로 변환시킨 후 전송 필요 
			// 이때 setRequestHeader설정(urlencoded형식변환)도 필요
			//jQuery ajax사용시 객체 데이터를 urlencoded(key=value)형식으로 자동변환해서 넘겨줌
			data : {
				'id' : idVal
			},
			success : function(data) {
				console.log(data);
				if (data.code == "ok") {
					$('#disp').text(data.msg).css('color', 'green');
				} else {
					$('#disp').text(data.msg).css('color', 'red');
				}
			},
			error : function(xhr) {
				alert("상태>>" + xhr.status);
			},
			dataType : 'json'
		});
	});

	//주소찾기
	$('#addrBtn')
			.on(
					'click',
					function() {

						//daum 주소 api로 검색하여 긁어온 코드
						new daum.Postcode(
								{
									oncomplete : function(data) {
										// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

										// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
										// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
										var roadAddr = data.roadAddress; // 도로명 주소 변수
										var extraRoadAddr = ''; // 참고 항목 변수

										// 법정동명이 있을 경우 추가한다. (법정리는 제외)
										// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
										if (data.bname !== ''
												&& /[동|로|가]$/g.test(data.bname)) {
											extraRoadAddr += data.bname;
										}
										// 건물명이 있고, 공동주택일 경우 추가한다.
										if (data.buildingName !== ''
												&& data.apartment === 'Y') {
											extraRoadAddr += (extraRoadAddr !== '' ? ', '
													+ data.buildingName
													: data.buildingName);
										}
										// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
										if (extraRoadAddr !== '') {
											extraRoadAddr = ' ('
													+ extraRoadAddr + ')';
										}

										// 우편번호와 주소 정보를 해당 필드에 넣는다.
										document.getElementById('postAddr').value = data.zonecode;
										document.getElementById("addr1").value = roadAddr;
										//document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
									}
								}).open();
					});

	//비동기 처리를 위해 서브밋(제출) 이벤트 발생시 함수로 연결시킴
	function valid() {
		// submit 이벤트가 실행되면서 화면 전환되는 현상을 막기
		event.preventDefault();
		console.log("데이터직렬화>>", $('form').serializeArray());
		let data = $('form').serializeArray();

		if (document.getElementsByName("memPw")[0].value !== document
				.getElementsByName("mem_pw_check")[0].value) {

			return; // 가입 처리를 중단합니다.
		}

		if (document.getElementsByName("memPw")[0].value !== document.getElementsByName("mem_pw_check")[0].value) {
		    // 사용자에게 알림 창을 띄웁니다.
		    alert("비밀번호와 비밀번호 확인 값이 일치하지 않습니다.");
		    location.href = "/MusicQProject/Join"; // join.jsp로 재연결합니다.
		    return; // 가입 처리를 중단합니다.
		}

		// 인증번호 확인
		var authno = $("#authno").val();
		if (authno === '') {
			alert("인증번호를 입력해주세요.");
			return; // 가입 처리를 중단합니다.
		} else {
			$
					.ajax({
						type : "POST",
						url : "/MusicQProject/authcheck",
						data : {
							"authno" : authno
						},
						success : function(result) {
							if (result === "success") {
								// 인증이 완료되었을 때 가입 처리를 수행합니다.
								$
										.ajax({
											type : 'post',
											url : 'serializeArr.jsp',
											data : JSON.stringify(data), // 문자열 처리 후 서버 전송
											dataType : "json",
											success : function(result) {
												console.log('result', result);
												if (result.rst == "1") {
													let conf = confirm("가입 성공 ! 신규가입 쿠폰이 발급되었습니다. \n 로그인 페이지로 이동할까요?");
													if (conf)
														location.href = "./login.jsp";
													// 출력 위치에 가입 상태를 표시합니다.
													$('#joinspan').text(
															"가입 성공!").css(
															'color', 'green');
												} else {
													$('#joinspan').text(
															"가입 실패..").css(
															'color', 'gray');
												}
											},
											error : function(xhr) {
												alert("상태: " + xhr.status);
											}
										});
							} else {
								alert("인증번호가 일치하지 않습니다.");
							}
						},
						error : function(e) {
							console.log(e);
							alert("인증번호 확인에 실패하였습니다.");
						}
					});
		}
	}

	//비밀번호 확인
	function checkSubmit(event) {
		// 비밀번호와 비밀번호 확인 값이 다를 경우
		if (document.getElementsByName("memPw")[0].value !== document
				.getElementsByName("mem_pw_check")[0].value) {
			// 기본 이벤트 처리를 막습니다.
			//event.preventDefault();
			// 사용자에게 알림 창을 띄웁니다.
			alert("비밀번호와 비밀번호 확인 값이 일치하지 않습니다.");

		} else {
			valid();
		}
	}

	$(document).ready(function() {
		$("#msgpwsand").click(function() {
			var tel = $("#tel").val();
			if (tel === '') {
				alert("전화번호를 입력해주세요.");
				return false;
			} else {
				$.ajax({
					type : "POST",
					url : "/MusicQProject/sendmessage",
					data : {
						"tel" : tel
					},
					success : function(result) {
						if (result === "success") {
							alert("인증번호가 전송되었습니다. 확인해주세요.");
						} else {
							alert("인증번호 전송에 실패하였습니다.");
						}
					},
					error : function(e) {
						console.log(e);
						alert("인증번호 전송에 실패하였습니다.");
					}
				});
			}
		});
	});

	$("#authnocheck").click(function() {
		var authno = $("#authno").val();
		if (authno === '') {
			alert("인증번호를 입력해주세요.");
			return false;
		} else {
			$.ajax({
				type : "POST",
				url : "/MusicQProject/authcheck",
				data : {
					"authno" : authno
				},
				success : function(result) {
					if (result === "success") {
						alert("인증이 완료되었습니다.");
					} else {
						alert("인증번호가 일치하지 않습니다.");
					}
				},
				error : function(e) {
					console.log(e);
					alert("인증번호 확인에 실패하였습니다.");
				}
			});
		}
	});
	
	
	function showAgreement() {
		  var agreementText = `개인정보 수집 ‧ 이용 ‧ 제공 동의서

		회원가입을 함에 따라 [개인정보 보호법] 제15조 및 제17조에 따라 아래의 내용으로 개인정보를 수집, 이용 및 제공하는데 동의합니다.

		- 개인정보의 수집 및 이용에 관한 사항
		- 수집하는 개인정보 항목 (이력서 양식 내용 일체) : 성명, 주민등록번호, 전화번호, 주소, 이메일, 가족관계, 학력사항, 경력사항, 자격사항 등과 그 외 이력서 기재 내용 일체
		- 개인정보의 이용 목적 : 수집된 개인정보를 사업장 신규 채용 서류 심사 및 인사서류로 활용하며, 목적 외의 용도로는 사용하지 않습니다.

		- 개인정보의 보관 및 이용 기간
		- 귀하의 개인정보를 다음과 같이 보관하며, 수집, 이용 및 제공목적이 달성된 경우 [개인정보 보호법] 제21조에 따라 처리합니다.

		고유식별정보 수집 동의서

		- 수집항목 : 주민등록번호
		- 수집목적 : 업무 용도
		- 폐기시기 : 근로기준법 제41조 및 제42조에 따라 해당일로부터 3년간 보관`;

		  alert(agreementText);
		}
	
	
</script>