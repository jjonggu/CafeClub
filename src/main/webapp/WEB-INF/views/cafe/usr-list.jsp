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
<!-- usr-list.css -->
<link href="/static/css/usr-list.css" rel="stylesheet" />
</head>
<body>
	<!-- 공통 nav  -->
	<jsp:include page="/WEB-INF/views/include/nav.jsp" />
	<!-- Header-->
	<header class="bg-dark py-5" id="bg-navy">
		<div class="container px-4 px-lg-5 my-5">
			<div class="text-center text-white">
				<h1 class="display-4 fw-bolder">사용자 관리 페이지</h1>
				<p class="lead fw-normal text-white-50 mb-0">Cafe Club</p>
			</div>
		</div>
	</header>
	<div class="table-wrapper">
		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col">사용자 이메일</th>
					<th scope="col">사용자 닉네임</th>
					<th scope="col">사용자 전화번호</th>
					<th scope="col">상세보기</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="list" items="${usrList}">
					<tr>
						<td>${list.usrNo}</td>
						<td>${list.usrEmail}</td>
						<td>${list.usrName}</td>
						<td>${list.usrPhone}</td>
						<!-- 여기 수정 -->
						<td>
							<!-- onclick 이벤트 추가 -->
							<a class="icon detail" data-bs-toggle="modal" href="#exampleModalToggle" role="button" onclick="openModal('${list.usrEmail}', '${list.usrName}', '${list.usrPhone}')">
								<i class="fas fa-search"></i>
							</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	
	<!-- 모달 -->
	<div class="modal fade" id="exampleModalToggle" aria-hidden="true"
		aria-labelledby="exampleModalToggleLabel" tabindex="-1">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalToggleLabel">사용자 상세보기</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form action="/usr-detail" method="GET">
						<label for="usrEmail">이메일</label>
						<input type="text" class="form-control" name="usrEmail" id="usrEmail" value="">
						<label for="usrName">사용자 닉네임</label>
						<input type="text" class="form-control" name="usrName" id="usrName" value="">
						<label for="usrPhone">사용자 전화번호</label>
						<input type="text" class="form-control" name="usrPhone" id="usrPhone" value="">
					</form>  
				</div>
				<div class="modal-footer">
					<button class="btn btn-primary modify_m" onclick="mod()">수정</button>
					<button class="btn btn-primary modify_m" onclick="mod()">취소</button>
					<button class="btn btn-primary modify_t" onclick="mod()">등록</button>
					<button class="btn btn-primary modify_y" onclick="mod()">취소</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 공통 footer -->
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />

	<!-- Bootstrap core JS-->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

	<!-- Core theme JS-->
	<!-- <script src="js/scripts.js"></script> -->
</body>
<script>
// 사용자 이메일, 닉네임, 전화번호를 모달에 표시하는 함수
function openModal(email, name, phone) {
    $("#usrEmail").val(email);
    $("#usrName").val(name);
    $("#usrPhone").val(phone);
}

// 저장된 데이터
$('document').ready(function() {
    $('tbody tr td i').click(function() {
        // 클릭한 행에서 사용자 이메일 가져오기
        const usrEmail = $(this).closest('tr').find('td:eq(1)').text();
        const usrName = $(this).closest('tr').find('td:eq(2)').text();
        const usrPhone = $(this).closest('tr').find('td:eq(3)').text();
        
        $.ajax({
            type: "GET",
            url: "/cafe/usr-detail?usrEmail=" + usrEmail,
            contentType: "application/json",
            dataType: "json", 
            success: function(data) {
                alert("성공");
                // 모달에 데이터 표시
                openModal(data.usrEmail, data.usrName, data.usrPhone);
            },
            error: function(XMLHttpRequest, errorThrown, textStatus) {
                console.log("XMLHttpRequest" + XMLHttpRequest + errorThrown + textStatus);
            }
        });
    });
});

function mod() {
    // 수정 버튼 클릭 시
    if (usrEmail != null) {
        $(".modify_m").hide();
        $(".modify_y").show();
    }
    // 취소 버튼 클릭 시
    else {
        $(".modify-m").show();
        $(".modify_y").hide();
    }
}
</script>
</html>
