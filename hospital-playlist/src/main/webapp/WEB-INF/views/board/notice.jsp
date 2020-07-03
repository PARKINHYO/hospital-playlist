<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>공지사항</title>
</head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/notice.css"
	type="text/css"></link>
<script>
	$(document)
			.ready(
					function() {

						var navListItems = $('div.setup-panel div a'), allWells = $('.setup-content'), allNextBtn = $('.nextBtn');

						allWells.hide();

						navListItems
								.click(function(e) {
									e.preventDefault();
									var $target = $($(this).attr('href')), $item = $(this);

									if (!$item.hasClass('disabled')) {
										navListItems.removeClass('btn-success')
												.addClass('btn-default');
										$item.addClass('btn-success');
										allWells.hide();
										$target.show();
										$target.find('input:eq(0)').focus();
									}
								});

						allNextBtn
								.click(function() {
									var curStep = $(this).closest(
											".setup-content"), curStepBtn = curStep
											.attr("id"), nextStepWizard = $(
											'div.setup-panel div a[href="#'
													+ curStepBtn + '"]')
											.parent().next().children("a"), curInputs = curStep
											.find("input[type='text'],input[type='url']"), isValid = true;

									$(".form-group").removeClass("has-error");
									for (var i = 0; i < curInputs.length; i++) {
										if (!curInputs[i].validity.valid) {
											isValid = false;
											$(curInputs[i]).closest(
													".form-group").addClass(
													"has-error");
										}
									}

									if (isValid)
										nextStepWizard.removeAttr('disabled')
												.trigger('click');
								});

						$('div.setup-panel div a.btn-success').trigger('click');
					});
</script>
<body>
	<div align="center">
		<a href="http://localhost:8080/ihpweb/homeRedirect"><img
			src="../resources/img/main.jpg" width="1100" height="auto" alt=""
			class="rounded mx-auto d-block img-fluid"></a>
	</div>
	<br>
	<div class="container">
		<div class="stepwizard">
			<div class="stepwizard-row setup-panel">
				<div class="stepwizard-step col-xs-3">
					<a href="#step-1" type="button" class="btn btn-success btn-circle"><b>1</b></a>
					<p>
						<small><b>공지사항1</b></small>
					</p>
				</div>
				<div class="stepwizard-step col-xs-3">
					<a href="#step-2" type="button" class="btn btn-default btn-circle">2</a>
					<p>
						<small><b>공지사항2</b></small>
					</p>
				</div>
				<div class="stepwizard-step col-xs-3">
					<a href="#step-3" type="button" class="btn btn-default btn-circle">3</a>
					<p>
						<small><b>공지사항3</b></small>
					</p>
				</div>
			</div>
		</div>

		<form role="form">
			<div class="panel panel-primary setup-content" id="step-1">
				<div class="panel-heading">
					<h3 class="panel-title">팬페이지 개설 이벤트!</h3>
				</div>
				<div class="panel-body">
					<div class="form-group">
						<label class="control-label">회원가입시 포인트 10점을 드려요!! </label> <img
							src="../resources/img/notice1.jpg" width="auto" height="auto"
							alt="" class="rounded mx-auto d-block img-fluid">
					</div>
				</div>
			</div>

			<div class="panel panel-primary setup-content" id="step-2">
				<div class="panel-heading">
					<h3 class="panel-title">회원 가입을 축하합니다~~~!</h3>
				</div>
				<div class="panel-body">
					<div class="form-group">
						<label class="control-label">게시판을 작성하면 포인트 10점을 상시적으로 드리고
							있어요!! </label> <img src="../resources/img/notice2.jpg" width="500"
							height="500" alt="" class="rounded mx-auto d-block img-fluid">
					</div>
				</div>
			</div>

			<div class="panel panel-primary setup-content" id="step-3">
				<div class="panel-heading">
					<h3 class="panel-title">안녕하세요 ㅠㅡㅠ</h3>
				</div>
				<div class="panel-body">
					<div class="form-group">
						<label class="control-label">현재 서버 접속량이 많아 페이지 오류가 나고 있어요ㅠㅠ 조금만 기다려주세요 죄송해요 ㅠ </label> <img src="../resources/img/notice3.jpg" width="auto"
							height="auto" alt="" class="rounded mx-auto d-block img-fluid">
					</div>
				</div>
			</div>

		</form>
	</div>
</body>
</html>