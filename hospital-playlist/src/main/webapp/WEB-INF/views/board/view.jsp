<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시글보기, 수정, 삭제</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/boardRUD.css"
	type="text/css"></link>

<script>
	$(document).ready(function() {
		$("#btnOk").click(function() {
			location.href = "http://localhost:8080/ihpweb/board/list.do";
		});
	});
	$(document).ready(function() {
		$("#btnDelete").click(function() {
			if (confirm("삭제하시겠습니까?")) {
				document.form1.action = "../board/delete.do";
				document.form1.submit();
			}
		});

		$("#btnUpdate").click(function() {
			var title = $("#b_title").val();
			var content = $("#b_main").val();
			// var writer = $("#writer_id").val();
			if (title == "") {
				alert("제목을 입력하세요");
				document.form1.b_title.focus();
				return;
			}
			if (content == "") {
				alert("내용을 입력하세요");
				document.form1.b_main.focus();
				return;
			}
			/* 			if (writer == "") {
			 alert("이름을 입력하세요");
			 document.form1.writer.focus();
			 return;
			 } */
			/* 	document.form1.action = "../board/update.do";
				document.form1.submit(); */
		});
	});
	$(document).ready(function() {
		// $('#characterLeft').text('0/45');
		$('#b_title').keyup(function() {
			var max = 45;
			var len = $(this).val().length;
			if (len >= max) {
				$('#characterLeft').text('You have reached the limit');
				$('#characterLeft').addClass('red');
				$('#btnSubmit').addClass('disabled');
			} else {
				var ch = len;
				$('#characterLeft').text(ch + '/45');
				$('#btnSubmit').removeClass('disabled');
				$('#characterLeft').removeClass('red');
			}
		});
	});
	$(document).ready(function() {
		// $('#characterLeft2').text('0/1000');
		$('#b_main').keyup(function() {
			var max = 1000;
			var len = $(this).val().length;
			if (len >= max) {
				$('#characterLeft2').text('You have reached the limit');
				$('#characterLeft2').addClass('red');
				$('#btnSubmit').addClass('disabled');
			} else {
				var ch = len;
				$('#characterLeft2').text(ch + '/1000');
				$('#btnSubmit').removeClass('disabled');
				$('#characterLeft2').removeClass('red');
			}
		});
	});
</script>
</head>
<body>
	<div class="container">
		<br> <br>
		<div class="row">
			<div class="col">
				<img src="../resources/img/boardwriteupdatedelete.jpg" width="550"
					height="680" class="Avatar">
			</div>
			<div class="col">
				<div>
					<form name="form1" method="post" action="../board/update.do">
						<div>
							<br style="clear: both">
							<div class="form-group col-md-12 ">
								<label id="messageLabel">작성 일자 : <fmt:formatDate
										value="${dto.date}" pattern="yyyy-MM-dd a HH:mm:ss" /></label>
							</div>
							<div class="form-group col-md-12 ">
								<label id="messageLabel">조회수 : ${dto.b_viewcnt }</label>
							</div>
							<div class="form-group col-md-12 ">
								<label id="messageLabel" for="message">제목</label>
								<textarea class="form-control input-sm " type="textarea"
									name="b_title" id="b_title" maxlength="45" rows="2">${dto.b_title}</textarea>
								<span class="help-block"><p id="characterLeft"
										class="help-block"></p></span>
							</div>
							<div class="form-group col-md-12 ">
								<label id="messageLabel" for="message2">내용</label>
								<textarea class="form-control input-sm " type="textarea"
									name="b_main" id="b_main" maxlength="1000" rows="7">${dto.b_main }</textarea>
								<span class="help-block"><p id="characterLeft2"
										class="help-block"></p></span>
							</div>
							<div class="form-group col-md-12 ">
								<label id="messageLabel" for="message3">아이디</label>
								<textarea class="form-control input-sm " type="textarea"
									name="writer_id" id="writer_id" rows="2" readonly>${dto.writer_id}</textarea>

							</div>
							<input type="hidden" name="b_id" value="${dto.b_id}"> <br
								style="clear: both">
							<c:if test="${sessionScope.id == dto.writer_id }">
								<div class="form-group col-md-12">
									<button class="btn btn-success btn-lg btn-block" id="btnUpdate"
										type="submit">수정 및 확인</button>
								</div>
								<div class="form-group col-md-12">
									<button class="btn btn-success btn-lg btn-block" id="btnDelete"
										type="button">삭제</button>
								</div>
							</c:if>
							<c:if test="${sessionScope.id != dto.writer_id }">
								<div class="form-group col-md-12">
									<button class="btn btn-success btn-lg btn-block" id="btnOk"
										type="button">확인</button>
								</div>
							</c:if>
						</div>
					</form>
				</div>
			</div>
		</div>

		<br>
	</div>
</body>
</html>