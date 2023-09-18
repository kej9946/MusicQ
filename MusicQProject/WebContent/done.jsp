<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>기부 완료</title>
    
    
    <style>
        body {
            background: linear-gradient(to right, #4f9bff, #ee5bff);
            font-family: Arial, sans-serif;
            text-align: center;
            padding: 50px;
            color: #fff;
        }
        
        h1 {
            font-size: 48px;
            margin-bottom: 30px;
        }
        
        .container {
            display: flex;
            justify-content: center;
        }
        
        .gift-box {
            position: relative;
            width: 200px;
            height: 200px;
            background-color: #fff;
            border-radius: 50%;
            animation: rotate 4s infinite linear;
        }
        
        .gift-box:before {
            content: "";
            position: absolute;
            top: 25px;
            left: 50%;
            width: 150px;
            height: 150px;
            background-color: #f5f5f5;
            transform: translateX(-50%);
            border-radius: 50%;
        }
        
        .ribbon {
            position: absolute;
            top: 60px;
            left: 50%;
            width: 140px;
            height: 60px;
            background-color: #ee5bff;
            transform: translateX(-50%) rotate(45deg);
        }
        
        .ribbon:before,
        .ribbon:after {
            content: "";
            position: absolute;
        }
        
        .ribbon:before {
            top: -10px;
            left: 0;
            width: 100%;
            height: 10px;
            background-color: #ee5bff;
        }
        
        .ribbon:after {
            bottom: -10px;
            right: 0;
            width: 10px;
            height: 100%;
            background-color: #ee5bff;
        }
        
        .gift-icon {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 60px;
            height: 60px;
            background-color: #4f9bff;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 24px;
            color: #fff;
        }
        
        @keyframes rotate {
            0% {
                transform: rotate(0deg);
            }
            100% {
                transform: rotate(360deg);
            }
        }
        
        .message {
            margin-top: 50px;
            font-size: 24px;
        }
        
        .home-link {
            display: inline-block;
            margin-top: 30px;
            padding: 10px 20px;
            background-color: #fff;
            color: #4f9bff;
            font-size: 18px;
            text-decoration: none;
            border-radius: 5px;
        }
        
        .home-link:hover {
            background-color: #4f9bff;
            color: #fff;
        }
    </style>
</head>
<body>
    <h1>우리에게 기부!</h1>
    
    <div class="container">
        <div class="gift-box">
            <div class="ribbon"></div>
            <div class="gift-icon">
                <i class="fas fa-gift"></i>
            </div>
        </div>
    </div>
    
    <p class="message">당신이 한다면 감사!</p>
    <script>
        function confirmDonation() {
            var confirmed = confirm("정말로 우리에게 1000원을 기부하시겠습니까?");
            if (confirmed) {
                window.location.href = "Ticket/kakaopay1000.jsp";
            } else {
                window.location.href = "./WeatherMusicController";
            }
        }
    </script>
    <button class="home-link" onclick="confirmDonation()">기부하기</button><br>
    <button class="home-link" onclick="history.back()">매정하게 뒤로가기</button>
    
    <!-- Font Awesome CDN -->
    <script src="https://kit.fontawesome.com/your-font-awesome-kit.js" crossorigin="anonymous"></script>
</body>
</html>
