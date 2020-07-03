
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>

<html>
<head>
<title>슬기로운 의사생활 시즌2 팬까페</title>

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!--Autor: Gabriel Ramirez | Diseñador Web
    Tema:Login Class="Gabriel".
    Fecha:11/01/2019.
    pagina Web: https://www.tonygabriel.ga/
    -->

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
	crossorigin="anonymous">

<!-- <meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1"> -->
<!--====================================================================================================================================-->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<!--====================================================================================================================================-->
<!-- <link rel="stylesheet" href="css/style.css"> -->
<!--====================================================================================================================================-->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/login.css"
	type="text/css"></link>

</head>

<script type="text/javascript">
	$(document).ready(function() {
		$("#logoutBtn").on("click", function() {
			location.href = "cafe/logout";
		})

	})

	$(document).ready(function() {
		$("#memberRegisterBtn").on("click", function() {
			location.href = "cafe/register";
		})

	})
	$(document).ready(function() {
		$("#memberUpdateBtn").on("click", function() {
			location.href = "cafe/memberUpdateView";
		})
	})
	$(document).ready(function() {
		$("#memberDeleteBtn").on("click", function() {
			location.href = "cafe/memberDeleteView";
		})
	})
	$(document).ready(function() {
		$("#boardBtn").on("click", function() {
			location.href = "board/list.do";
		})
	})
	$(document).ready(function() {
		$("#noticeBtn").on("click", function() {
			location.href = "board/notice.do";
		})
	})
</script>

<body>
	<div align="center">
		<a href="http://localhost:8080/ihpweb/homeRedirect"><img
			src="resources/img/main.jpg" width="1100" height="auto" alt=""
			class="rounded mx-auto d-block img-fluid"></a>
	</div>
	<div class="container">
		<br>
		<div class="row">
			<div class="col">
				<img src="resources/img/loginform.jpg" width="550" height="408"
					class="Avatar">
			</div>
			<div class="col">
				<form class="login100-form validate-form" method=post
					action="http://localhost:8080/ihpweb/cafe/login/">
					<br> <br>
					<c:if test="${member == null}">
						<h3 align="center">슬기로운 의사생활 시즌2!!</h3>
						<br>
						<div class="container">
							<i class="fa fa-users"></i> <label for="">ID</label> <input
								type="text" id="id" name="id" class="form-control"
								placeholder="아이디를 입력해주세요."> <br> <i
								class="fa fa-key"></i> <label for="">PASSWORD</label> <input
								type="password" id="passwd" name="passwd" class="form-control"
								placeholder="패스워드를 입력해주세요.">
						</div>
						<br>
						<div class="col">
							<button type="submit" class="btn btn-success btn-lg btn-block"
								type="button">
								<!--<i class="fas fa-share-square"></i>-->
								로그인
							</button>
							<button id="memberRegisterBtn"
								class="btn btn-success btn-lg btn-block" type="button">
								<!--<i class="fas fa-share-square"></i>-->
								회원가입
							</button>
						</div>
					</c:if>
					<c:if test="${member != null }">
						<h4 align="center">${member.id}님환영합니다!<br>남은 포인트 :
							${point.mpoint}
						</h4>
						<br>
						<div class="col">
							<button id="boardBtn" class="btn btn-success btn-lg btn-block"
								type="button">
								<!--<i class="fas fa-share-square"></i>-->
								게시판
							</button>
							<button id="noticeBtn" class="btn btn-success btn-lg btn-block"
								type="button">
								<!--<i class="fas fa-share-square"></i>-->
								공지사항
							</button>
							<button id="memberUpdateBtn" type="button"
								class="btn btn-success btn-lg btn-block">
								<!--<i class="fas fa-share-square"></i>-->
								개인정보 수정
							</button>
							<button id="memberDeleteBtn" type="button"
								class="btn btn-success btn-lg btn-block">
								<!--<i class="fas fa-share-square"></i>-->
								회원탈퇴
							</button>
							<button id="logoutBtn" class="btn btn-success btn-lg btn-block"
								type="button">
								<!--<i class="fas fa-share-square"></i>-->
								로그아웃
							</button>
						</div>
					</c:if>
					<c:if test="${msg == false}">
						<p class="container" style="color: red;">로그인 실패! 아이디와 비밀번호
							확인해주세요.</p>
					</c:if>
				</form>
			</div>
		</div>

		<br>
	</div>
	<br>
	<br>
	<br>
	<br>
	<!--====================================FOOOOOOOOTER==============================================-->
	<footer class="page-footer font-small green">
		<!-- <a href="https://www.tonygabriel.ga/" class="btn btn-info btn-sm"
			target="_blank">Soporte</a> -->
		<!-- Copyright -->
		<div class="footer-copyright text-center py-3">
			© 2020 Copyright: <a href="https://github.com/PARKINHYO"
				target="_blank">Inhyo Park</a>
			<footer>
				Contact: <a href="mailto:inhyopark122@gmail.com" target="_blank">Inhyo
					Park</a>
			</footer>
		</div>
		<!-- Fin de Copyright -->
	</footer>
	<!--==============================FINDE FOOOTER==============================================-->


	<!--====================================================================================================================================-->
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
		integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
		crossorigin="anonymous"></script>
	<!--====================================================================================================================================-->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<!--====================================================================================================================================-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
		integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
		crossorigin="anonymous"></script>
</body>
</html>