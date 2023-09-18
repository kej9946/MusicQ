<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="ko">
<meta charset="UTF-8">
<title>1000원 기부 결제페이지</title>

<head>
    <!-- jQuery -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <!-- iamport.payment.js -->
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>

    <style>
        body {
            background: linear-gradient(to right, #4f9bff, #ee5bff);
            font-family: Arial, sans-serif;
            text-align: center;
            padding: 50px;
            color: #fff;
        }

        h2 {
            font-size: 28px;
            margin-bottom: 20px;
        }

        .btn-container {
            display: flex;
            flex-direction: column;
            align-items: center;
 
            height: 400px;
            border-color: #008000;
            padding: 20px;
        }

        #ticket_img {
            width: 180px;
            height: 100px;
        }

        .donate-button {
            width: 180px;
            height: 50px;
            background-color: #fff;
            color: #4f9bff;
            font-size: 18px;
            border-radius: 5px;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .donate-button:hover {
            background-color: #4f9bff;
            color: #fff;
        }
    </style>

    <script>
        var IMP = window.IMP;
        IMP.init("imp80850047");

        function requestPay() {
            var donate = confirm("정말로 1,000원을 기부하시겠습니까?");
            if (donate) {
                IMP.request_pay({
                    pg: 'kakaopay.TC0ONETIME',
                    pay_method: 'card',
                    merchant_uid: 'merchant_' + new Date().getTime(),
                    name: '1000원 기부',
                    amount: 1000,
                    buyer_email: 'kej9946@gmail.com',
                    buyer_name: '대덕인재개발원',
                    buyer_tel: '010-1234-5678',
                    buyer_addr: '서울특별시 강남구 삼성동',
                    buyer_postcode: '123-456'
                }, function (rsp) {
                    if (rsp.success) {
                        var msg = '결제가 완료되었습니다 \n 우리에게 기부해 주셔서 감사합니다.';
                        alert(msg);
                        window.location.href = "../WeatherMusicController"; 
                    } else {
                        var msg = '결제에 실패하였습니다.';
                        msg += '실패 사유 : ' + rsp.error_msg;
                        alert(msg);
                    }
                });
            }
        }
    </script>

</head>

<body>
    <div class="btn-container">
        <h2>1000원 기부!</h2>
        <img id="done1_img" src="../img/done1.png" alt="done" />
        <br>
        <br>
        <br>
        <button onclick="requestPay()" class="donate-button">카카오페이 결제하기</button>
    </div>
</body>

</html>