<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<title>개인정보수정</title>
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

</head>
<script type="text/javascript">
	$(document).ready(function() {
		// 취소
		$("#cancelBtn").on("click", function() {

			location.href = "http://localhost:8080/ihpweb/homeRedirect";

		})

		$("#submit").on("click", function() {
			if ($("#passwd").val() == "") {
				alert("비밀번호를 입력해주세요.");
				$("#passwd").focus();
				return false;
			}
			if ($("#username").val() == "") {
				alert("성명을 입력해주세요.");
				$("#username").focus();
				return false;
			}
			if ($("#email").val() == "") {
				alert("이메일을 입력해주세요.");
				$("#email").focus();
				return false;
			}
		});

	})
</script>
<body>
	<div class="container">
		<br> <br>
		<div class="row">
			<div class="col">
				<img src="../resources/img/update.jpg" width="550" height="620"
					class="Avatar">
			</div>
			<div class="col">

				<form class="login100-form validate-form" method=post
					action="http://localhost:8080/ihpweb/cafe/memberUpdate/">
					<br> <br> <br>
					<h3 align="center">정보가 바뀌셨다면 업데이트 해주세요!</h3>
					<br>

					<div class="container">
						<i class="fa fa-users"></i> <label for="">ID</label> <input
							type="text" id="id" name="id" class="form-control"
							value="${member.id}" readonly="readonly"> <br> <i
							class="fa fa-key"></i> <label for="">PASSWORD</label> <input
							type="password" id="passwd" name="passwd" class="form-control"
							placeholder="공백없이 입력해주세요"><br>  <i class="fa fa-users"></i> <label
							for="">NAME</label> <input type="text" id="username"
							name="username" class="form-control" value="${member.username}">
						<br> <i class="fa fa-users"></i> <label for="">E-MAIL</label>
						<input type="text" id="email" name="email" class="form-control"
							value="${member.email}">
					</div>
					<br>
					<div class="col">
						<button type="submit" class="btn btn-success btn-lg btn-block"
							type="button">
							<!--<i class="fas fa-share-square"></i>-->
							확인
						</button>
						<button id="cancelBtn" class="btn btn-success btn-lg btn-block"
							type="button">
							<!--<i class="fas fa-share-square"></i>-->
							취소
						</button>
					</div>

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
				Contact: <a href="mailto:inhyopark122@gmail.com">Inhyo Park</a>
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


	<%-- <section id="container">
		<form action="http://localhost:8080/ihpweb/cafe/memberUpdate/"
			method="post">
			<div class="form-group has-feedback">
				<label class="control-label" for="id">아이디</label> <input
					class="form-control" type="text" id="id" name="id"
					value="${member.id}" readonly="readonly" />
			</div>
			<div class="form-group has-feedback">
				<label class="control-label" for="passwd">패스워드</label> <input
					class="form-control" type="password" id="passwd" name="passwd" />
			</div>
			<div class="form-group has-feedback">
				<label class="control-label" for="username">성명</label> <input
					class="form-control" type="text" id="username" name="username"
					value="${member.username}" />
			</div>
			<div class="form-group has-feedback">
				<button class="btn btn-success" type="submit" id="submit">회원정보수정</button>
				<button class="cencle btn btn-danger" type="button">취소</button>
			</div>
		</form>
	</section> --%>

</body>

</html>