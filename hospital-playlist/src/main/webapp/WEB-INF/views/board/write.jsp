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
<title>게시글쓰기</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/boardRUD.css"
	type="text/css"></link>

<script>
	$(document).ready(function() {
		$("#btnSave").click(function() {
			var title = $("#b_title").val();
			var content = $("#b_main").val();
			// var writer = $("#writer_id").val();
			if (title == "") {
				alert("제목을 입력하세요");
				document.form1.title.focus();
				return;
			}
			if (content == "") {
				alert("내용을 입력하세요");
				document.form1.content.focus();
				return;
			}
			/* 			if (writer == "") {
			 alert("이름을 입력하세요");
			 document.form1.writer.focus();
			 return;
			 } */

			document.form1.submit();
		});
	});
	$(document).ready(function() {
		$('#characterLeft').text('0/45');
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
		$('#characterLeft2').text('0/1000');
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
	$(document).ready(function() {
		$("#btnCancel").on("click", function() {
			location.href = "../board/list.do";
		})
	})
</script>
</head>
<body>
	<div class="container">
		<br> <br>
		<div class="row">
			<div class="col">
				<img src="../resources/img/boardwrite.jpg" width="550" height="527"
					class="Avatar">
			</div>
			<div class="col">
				<div>
					<form name="form1" method="post" action="../board/insert.do">
						<div>
							<br style="clear: both">
							<div class="form-group col-md-12 ">
								<label id="messageLabel" for="message">제목</label>
								<textarea class="form-control input-sm " type="textarea"
									name="b_title" id="b_title" placeholder="Message"
									maxlength="45" rows="2"></textarea>
								<span class="help-block"><p id="characterLeft"
										class="help-block">You have reached the limit</p></span>
							</div>
							<div class="form-group col-md-12 ">
								<label id="messageLabel" for="message2">내용</label>
								<textarea class="form-control input-sm " type="textarea"
									name="b_main" id="b_main" placeholder="Message"
									maxlength="1000" rows="7"></textarea>
								<span class="help-block"><p id="characterLeft2"
										class="help-block">You have reached the limit</p></span>
							</div>
							<br style="clear: both">
							<div class="form-group col-md-13">
								<button class="btn btn-success btn-lg btn-block" id="btnSave"
									type="button">작성</button>
							</div>
							<div class="form-group col-md-13">
								<button class="btn btn-success btn-lg btn-block" id="btnCancel"
									type="button">취소</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>

		<br>
	</div>
</body>
</html>