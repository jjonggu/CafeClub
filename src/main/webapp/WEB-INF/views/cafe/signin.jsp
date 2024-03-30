<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
</head>
<body>
	<!-- 공통 nav -->
	<jsp:include page="/WEB-INF/views/include/nav.jsp" />

	<main class="form-signin" id="signin-top">
		<form action="signup" method="post">
			<div class="form-background">
				<h1 class="h3 mb-3 fw-normal text-center">회원가입</h1>
				<div class="form-floating">
					<input type="text" class="form-control" name="usrId" id="usrId" placeholder="아이디">
					<label for="usrId">아이디</label>
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
					<input type="password" class="form-control" name="usrPwCheck" id="usrPwCheck" placeholder="비밀번호 재확인 ">
					<label for="usrPwCheck">비밀번호 확인</label>
				</div>
				<div class="form-floating">
					<input type="text" class="form-control" name="usrPhone" id="usrPhone" placeholder="전화번호">
					<label for="usrPhone">전화번호</label>
				</div>

				<button class="footer w-100 btn btn-lg btn-primary mt-2" type="submit">회원가입</button>
			</div>
		</form>
	</main>

	<!-- 공통 footer Main만 공통으로 안씀 그지가틈 -->
	<jsp:include page="/WEB-INF/views/include/footer.jsp"/>

	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
</body>
</html>