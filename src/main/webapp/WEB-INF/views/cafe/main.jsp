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
</head>
<body>
	<!-- 공통 nav  -->
	<jsp:include page="/WEB-INF/views/include/nav.jsp"/>
	<!-- Header-->
	<header class="bg-dark py-5" id="bg-navy">
		<div class="container px-4 px-lg-5 my-5">
			<div class="text-center text-white">
				<h1 class="display-4 fw-bolder">CAFE CLUB</h1>
				<p class="lead fw-normal text-white-50 mb-0">카페 방문을 환영합니다.</p>
			</div>
		</div>
	</header>
	<!-- Section-->
	<section class="py-5">
		<div class="container px-4 px-lg-5 mt-5">
		    <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-5 justify-content-center">
				<div class="col mb-5">
					<div class="card h-100">
						<div class="badge bg-ice text-white position-absolute" style="top: 0.5rem; right: 0.5rem">ICE</div> 
						<!-- Product image-->
							<img class="card-img-top" src="/static/images/ice/아메리카노.png" alt="..." />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">아메리카노</h5>
							</div>
						</div>
					</div>
				</div>
				<div class="col mb-5">
					<div class="card h-100">
					
						<div class="badge bg-hot text-white position-absolute" style="top: 0.5rem; right: 0.5rem">HOT</div> 
							
						<!-- Product image-->
						
						<img class="card-img-top" src="/static/images/hot/아메리카노.png" alt="..." />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">아메리카노</h5>
								
								<!-- 별점 -->
<!-- 								<div class="d-flex justify-content-center small text-warning mb-2">
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
								</div> -->
								
							</div>
						</div>
					</div>
				</div>
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Product image-->
						<div class="badge bg-ice text-white position-absolute" style="top: 0.5rem; right: 0.5rem">ICE</div> 
						<img class="card-img-top" src="/static/images/ice/원조커피.png" alt="..." />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">원조커피</h5>
								<!-- Product price-->
							</div>
						</div>
					</div>
				</div>
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Product image-->
						<div class="badge bg-ice text-white position-absolute" style="top: 0.5rem; right: 0.5rem">ICE</div> 
						<img class="card-img-top" src="/static/images/ice/카페모카.png" alt="..." />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">카페모카</h5>
								<!-- Product reviews-->
<!-- 								<div class="d-flex justify-content-center small text-warning mb-2">
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
								</div> -->
							</div>
						</div>
					</div>
				</div>
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Product image-->
						<div class="badge bg-hot text-white position-absolute" style="top: 0.5rem; right: 0.5rem">HOT</div> 
						<img class="card-img-top" src="/static/images/hot/카라멜마끼아또.png" alt="..." />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">카라멜마끼아또</h5>
							</div>
						</div>
					</div>
				</div>
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Product image-->
						<div class="badge bg-ice text-white position-absolute" style="top: 0.5rem; right: 0.5rem">ICE</div> 
						<img class="card-img-top" src="/static/images/ice/콜드브루.png" alt="..." />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">콜드브루</h5>
							</div>
						</div>
					</div>
				</div>
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Product image-->
						<div class="badge bg-ice text-white position-absolute" style="top: 0.5rem; right: 0.5rem">ICE</div> 
						<img class="card-img-top" src="/static/images/ice/BIG아메리카노.png" alt="..." />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">BIG 아메리카노</h5>
							</div>
						</div>
					</div>
				</div>
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Product image-->
						<div class="badge bg-ice text-white position-absolute" style="top: 0.5rem; right: 0.5rem">ICE</div> 
						<img class="card-img-top" src="/static/images/ice/바나나카페라떼.png" alt="..." />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">바나나카페라떼</h5>
							</div>
						</div>
					</div>
				</div>
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Product image-->
						<div class="badge bg-hot text-white position-absolute" style="top: 0.5rem; right: 0.5rem;">HOT</div>
						<img class="card-img-top" src="/static/images/hot/초코라떼.png" alt="..." />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<h5 class="fw-bolder">초코라떼</h5>
							</div>
						</div>
					</div>
				</div>
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Product image-->
						<div class="badge bg-ice text-white position-absolute" style="top: 0.5rem; right: 0.5rem">ICE</div>
						<img class="card-img-top" src="/static/images/ice/고구마라떼.png" alt="..." />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">고구마라떼</h5>
							</div>
						</div>
						<!-- 정보보기 -->
<!-- 						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
							<div class="text-center">
								<a class="btn btn-outline-dark mt-auto" href="#">정보보기</a>
							</div>
						</div> -->
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<div class="info">
	<h3>hello</h3>
	</div>
	
	<!-- 공통 footer Main만 공통으로 안씀 그지가틈 -->
	<footer class="py-5 bg-dark" id="bg-navy">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				CafeClub 2024</p>
		</div>
	</footer>
	
	<!-- Bootstrap core JS-->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	
	<!-- Core theme JS-->
	<!-- 	<script src="js/scripts.js"></script> -->
</body>
</html>
