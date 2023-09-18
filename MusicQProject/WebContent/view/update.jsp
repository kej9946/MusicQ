<%@page import="musicq.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.101.0">
    <title>회원정보 수정폼</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.6/examples/checkout/">

    

    <!-- Bootstrap core CSS -->
<link href="./resources/css/bootstrap.min.css" rel="stylesheet">



    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
   

    
    <!-- Custom styles for this template -->
    <link href="form-validation.css" rel="stylesheet">
    <script>
    function sendProc(){
    	vpass1 = document.getElementById("mem_pw").value;
    	vpass2 = document.getElementById("mem_pww").value;
    	
    	
    	if(vpass1 != vpass2){
    		alert("비밀번호가 일치하지 않습니다. 다시 입력해주세요.")
    		return false;
    	}
    	
    	//일치하면 마이페이지로 돌아감
    	alert("회원정보 수정에 성공하였습니다.")

    	document.ff.submit();
    }
    </script>
  </head>
  <body class="bg-light">
  <% MemberVO vo = (MemberVO)request.getAttribute("update"); %>
  
    
<div class="container">
  <div class="py-5 text-center">
    <h2>개인정보 수정</h2>
    <p class="lead"></div>
    <div class="col-md-8 order-md-1">
      <h4 class="mb-3">수정하길 원하시는 정보를 입력해주세요</h4>
      
      <form method="post" class="needs-validation" name="ff" novalidate action="/MusicQProject/updateMem">
       
       
        <div class="row">
          <div class="col-md-6 mb-3">
            <label for="memId">아이디</label>
            <input readonly type="text" name="memId" class="form-control" id="mem_id"  value="<%=vo.getMemId()%>" required>
            <div class="invalid-feedback">
            </div>
          </div>
        </div>
        
        <div class="mb-3">
          <label for="memPw">비밀번호</label>
          <input type="password" name="memPw"class="form-control" id="mem_pw"  value="<%=vo.getMemPw()%>">
          <div class="invalid-feedback">
          </div>
        </div>

        <div class="mb-3">
          <label for="memPww">비밀번호확인</label>
          <input type="password" name="memPww" class="form-control" id="mem_pww" value="">
        </div>
        
         <div class="mb-3">
          <label for="memName">이름</label>
          <input type="text" name="memName" class="form-control" id="mem_name"  value="<%=vo.getMemName()%>"required>
          <div class="invalid-feedback">
          </div>
        </div>
        
         <div class="mb-3">
          <label for="memGender">성별</label>
          <input type="text" name="memGender" class="form-control" id="mem_gender"  value="<%=vo.getMemGender()%>"required>
          <div class="invalid-feedback">
          </div>
        </div>
        
         <div class="mb-3">
          <label for="memBirth">생년월일</label>
          <input type="text" name="memBirth" class="form-control" id="mem_birth"  value="<%=vo.getMemBirth()%>"required>
          <div class="invalid-feedback">
          </div>
          </div>
         
         <div class="mb-3">
          <label for="memTel">휴대폰 번호</label>
          <input type="text"  name="memTel" class="form-control" id="mem_tel"  value="<%=vo.getMemTel()%>"required>
          <div class="invalid-feedback">
          </div>
        </div>
        
          <div class="mb-3">
          <label for="memEmail">이메일</label>
          <input type="text"  name="memEmail" class="form-control" id="mem_email"  value="<%=vo.getMemEmail()%>"required>
          <div class="invalid-feedback">
          </div>
        </div>
        
         <div class="mb-3">
          <label for="memAddr">주소</label>
          <input type="text" name="memAddr1" class="form-control" id="mem_addr1" placeholder="" value="<%=vo.getMemAddr1()%>"required>
          <div class="invalid-feedback">
          </div>
        </div>
        
        
       
      
        <button  class="btn btn-primary btn-lg btn-block" type="button" onclick="sendProc()">Continue to update</button>
     </form>
    </div>
 
</div>



    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="../assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

      
        <script src="form-validation.js"></script>
  </body>
</html>
