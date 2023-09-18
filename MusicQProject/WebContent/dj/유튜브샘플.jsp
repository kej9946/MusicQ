<%@page import="musicq.vo.DjPageVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
	
	
	<% DjPageVO djpv = (DjPageVO) request.getAttribute("djpv");
	
	
	%>
	
	
	
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <title>Youtube API</title>
</head>
<body>
    <div class="container mt-5 pt-5">
        <h1 class="display-4 text-center">My DJ Page</h1>
        <div class="row my-5" id="video-channel"></div>
        <br>
        <hr>
        <br>
        <h1 class="display-4 text-center">My DJ Playlist</h1>
        <div class="row my-5" id="video-container"></div>
    </div>
    
    <script src="youtubeAPI.js"></script>
</body>
</html>