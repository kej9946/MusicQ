<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날씨</title>
<!-- jQuery 라이브러리 로드 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style>
  body {
    background-color: #fff;
    color: #fff;
    font-family: Arial, sans-serif;
  }

  .container {
    background-color: rgba(255, 255, 255, 0.8);
    color: #000;
    padding: 5px;
    font-size: 9pt;
    width: 95%;
    margin: 0 auto;
    border-radius: 10px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
    text-align: center;
  }

  .container .city {
    font-size: 12pt;
    font-weight: bold;
    margin-bottom: 3px;
    text-transform: uppercase;
  }

  .container .temp_min,
  .container .temp_max,
  .container .humidity,
  .container .wind,
  .container .cloud,
  .container .weather_description {

  }

  .container .weather_description {
    font-size: 15pt;
    font-weight: bold;
    color: #009f22;
    text-transform: uppercase;
    margin-bottom: 5px;
  }

  .container .current_temp {
    font-size: 13pt;
    font-weight: bold;
    margin-bottom: 5px;
  }

  .container .humidity {
    font-style: italic;
    color: #777;
  }

  .container .wind {
    font-style: italic;
    color: #777;
  }

  .container .cloud {
    font-style: italic;
    color: #777;
  }
</style>
</head>
<body>

<form action="./WeatherMusicController" method="POST" id="weatherForm">
    <input type="hidden" name="weather_description" id="weather_description">
</form>
<div class="container">
    <div class="city"></div>
    <div class="weather_description"></div>
    <div class="current_temp"></div>
    <div class="humidity"></div>
    <div class="wind"></div>
    <div class="cloud"></div>
    <div class="temp_min"></div>
    <div class="temp_max"></div>
</div>

<script type="text/javascript">
var weather_description;
// 날씨 API - 대전
var api주소 = "https://api.openweathermap.org/data/2.5/weather?q="+'Daejeon'+"&appid="+"7b2e0eda8317c7c19a930c777a1c2f9f";
$.ajax({
    url: api주소,
    dataType: "json",
    type: "GET",
    async: "false",
    success: function(resp) {
        if (resp.weather[0].main == 'Clear') {
            weather_description = '맑음';
        } else if (resp.weather[0].main == 'Rain') {
            weather_description = '비옴';
        } else if (resp.weather[0].main == 'Clouds') {
            weather_description = '구름 많음';
        }
        var 온도 = Math.floor(resp.main.temp - 273.15) + 'º';
        var 습도 = '습도 : ' + resp.main.humidity + ' %';
        var 바람 = '바람 :' + resp.wind.speed + ' m/s';
        var 도시 = '대전';
        var 구름 = '구름 :' + resp.clouds.all + "%";
        var 최저_온도 = '최저 온도 :' + Math.floor(resp.main.temp_min - 273.15) + 'º';
        var 최고_온도 = '최고 온도 :' + Math.floor(resp.main.temp_max - 273.15) + 'º';

        $('.weather_description').text(weather_description);
        $('.current_temp').text(온도);
        $('.humidity').text(습도);
        $('.wind').text(바람);
        $('.city').text(도시);
        $('.cloud').text(구름);
        $('.temp_min').text(최저_온도);
        $('.temp_max').text(최고_온도);
    }
});
</script>

</body>
</html>
