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
<link href="/static/css/login.css" rel="stylesheet" />
</head>
<body>
	<!-- 공통 nav  -->
	<jsp:include page="/WEB-INF/views/include/nav.jsp"/>
	<!-- Section-->
	<section class="py-5">
			<div class="container px-4 px-lg-5 my-5">
		<main class="form-signin" id="login-top">
		<form action="login" method="post">
			<h1 class="h3 mb-3 fw-normal text-center">로그인</h1>

			<div class="form-floating">
				<input type="text" class="form-control" name="usrId" id="usrId" placeholder="아이디 입력">
				<label for="usrId">아이디</label>
			</div>
			<div class="form-floating">
				<input type="password" class="form-control" name="usrPw" id="usrPw" placeholder="아이디 입력">
				<label for="usrPw">비밀번호</label>
			</div>

			<div class="idpw mb-3">
				<a href="">아이디 찾기</a>
				<span class="vertical-line"></span>
				<a href="">비밀번호 찾기</a>
			</div>
			<button class="w-100 btn btn-lg btn-primary" type="submit">로그인</button>
		</form>
	</main>
 </div>
</section>
	
	<!-- 공통 nav  -->
	<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
	
	<!-- Bootstrap core JS-->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
</body>
</html>
