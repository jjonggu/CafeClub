<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>CafeClub</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="/static/css/signin.css" rel="stylesheet" />
<!-- Jquery link -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
</head>
<body>
	<!-- 공통 nav -->
	<jsp:include page="/WEB-INF/views/include/nav.jsp" />

	<main class="form-signin" id="signin-top">
		<form action="signinForm" id="signinForm" method="post">
			<div class="form-background">
				<h1 class="h3 mb-3 fw-normal text-center">회원가입</h1>
				<div class="form-floating">
					<input type="text" class="form-control" name="usrEmail" id="usrEmail" placeholder="이메일">
					<label for="usrPhone">이메일</label>
				</div>
				<div class="form-floating">
					<input type="text" class="form-control" name="usrName" id="usrName" placeholder="닉네임">
					<label for="usrName">닉네임</label>
				</div>
				<div class="form-floating">
					<input type="password" class="form-control" name="usrPw" id="usrPw" placeholder="비밀번호">
					<label for="usrPw">비밀번호</label>
				</div>
				<div class="form-floating">
					<input type="password" class="form-control" name="usrPwChk" id="usrPwChk" placeholder="비밀번호 재확인 ">
					<label for="usrPwCheck">비밀번호 확인</label>
				</div>
				<div class="form-floating">
					<input type="text" class="form-control" name="usrPhone" id="usrPhone" placeholder="전화번호">
					<label for="usrPhone">전화번호</label>
				</div>

				<button class="btn-signin w-100 btn btn-lg btn-primary mt-2" id="submitBtn" type="button" >회원가입</button>
			</div>
		</form>
	</main>

	<!-- 공통 footer Main만 공통으로 안씀 그지가틈 -->
	<jsp:include page="/WEB-INF/views/include/footer.jsp"/>

	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

	<!-- Core theme JS-->
	<!-- <script src="js/scripts.js"></script> -->

</body>

<script>

// 이메일 정규식
const emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;

$(document).ready(function(){
    $('#submitBtn').on('click', function() {
            const formData = {
            usrEmail: $('#usrEmail').val(),
            usrName: $('#usrName').val(),
            usrPw: $('#usrPw').val(),
            usrPwChk: $('#usrPwChk').val(),
            usrPhone: $('#usrPhone').val()
        	}; 
        
        $.ajax({
            type: "POST",
            url: "/cafe/signinForm",
            data: JSON.stringify(formData), 		   // JSON 문자열로 변환
            contentType: "application/json", 		   // 요청 데이터 타입 설정
            dataType: "json", 
            success: function(data) {
            	
                alert(data.message);
                window.location.href = "/cafe/login";  // 회원가입 완료 후 로그인 페이지로 이동
            },
            error: function(XMLHttpRequest, errorThrown, textStatus) {
            	console.log("XMLHttpRequest" + XMLHttpRequest + errorThrown + textStatus);
            	/* 회원가입 Validation Check */
            }
        });
    });
});
</script>

</html>