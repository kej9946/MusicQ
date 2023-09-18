<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="ko">
<meta charset="UTF-8">
<title>6개월 스트리밍권 결제페이지</title>

<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            padding: 20px;
        }

        .btn {
            text-align: center;
            margin-top: 30px;
        }

        h3 {
            font-size: 18px;
            margin-bottom: 10px;
        }

        button {
            width: 180px;
            height: 30px;
            margin-top: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }

        #kakaopay {
            display: block;
            margin: 20px auto;
        }
   
        
     
    </style>


<head>
    <!-- jQuery -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <!-- iamport.payment.js -->
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>

   <script>
	function couponPay(){
       alert("쿠폰이 적용되었습니다.결제페이지로 넘어갑니다.")
       location.href="/MusicQProject/Ticket/kakaopay27000.jsp";
       }
       </script>
   
   
   
   
    <script>

    
        VAR IMP = WINDOW.IMP;
        IMP.init("IMP80850047");

        function requestPay(){
            IMP.request_pay({
                pg: 'kakaopay.TC0ONETIME',
                pay_method: 'card',
                merchant_uid: 'merchant_' + new Date().getTime(),
                name: '6개월 스트리밍 권',
                amount: 30000,
                buyer_email: 'kej9946@gmail.com',
                buyer_name: '대덕인재개발원',
                buyer_tel: '010-1234-5678',
                buyer_addr: '서울특별시 강남구 삼성동',
                buyer_postcode: '123-456'
                     }, function (rsp) {
                if (rsp.success) {  // 결제가 성공했을 떄
                    // 결제가 완료되었을 떄 결제 정보를 뜨게 만듬
                    var msg = '결제가 완료되었습니다.';
                    msg += '결제 금액 : ' + rsp.paid_amount;
                    alert(msg);
                } else {    // 결제가 실패했을 때
                    // 결제에 실패했을떄 실패메세지와 실패사유를 출력
                    var msg = '결제에 실패하였습니다.';
                    msg += '실패 사유 : ' + rsp.error_msg;
                    alert(msg);
                }
                

                
            });
        }
    </script>

</head>
<img id="kakaopay" src="../img/kakao.png" alt="kakao" width="100" height="100" >
<body>
<div class="btn">

<h3>선택하신 이용권</h3>
<h3> ▶ 6개월 스트리밍 이용권</h3>
<h3>이용권 가격  </h3>
<h3> ▶  30000원</h3>

    <button onclick="requestPay()"style="width:180px; height:30px;" >카카오페이 결제하기</button> <!-- 결제하기 버튼 생성 -->
    <br>
    <h3>보유하신 쿠폰내역</h3>
    <h3> ▶회원가입 축하쿠폰 3000원권</h3>
       <button onclick="couponPay()"style="width:180px; height:30px;">쿠폰 사용하기</button>
         </div>
         
          <h1 align="center">
					<a href="/MusicQProject/WeatherMusicController" title="로고 - 홈으로 이동" class="mlog" ><img
						width="120" height=100" src="../img/logo.png" alt="뮤직큐" /></a>
				</h1>
         
</body>

</html>