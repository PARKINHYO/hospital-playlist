<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<html>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시글 목록</title>
<script type="text/javascript">
	$(document).ready(function() {
		$("#btnWrite").click(function() {
			location.href = "http://localhost:8080/ihpweb/board/write.do";
		});
	});
	$(document).ready(function() {
		$("#btnHome").click(function() {
			location.href = "http://localhost:8080/ihpweb/homeRedirect";
		});
	});
</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<a href="http://localhost:8080/ihpweb/homeRedirect"><img
					src="../resources/img/boardlist.jpg" width="1140" height="100"
					alt="" class="rounded mx-auto d-block img-fluid"></a> 
				<br>
				<table class="table table-list-search">
					<thead>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>아이디</th>
							<th>작성일</th>
							<th>조회수</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="row" items="${list}">
							<tr>
								<td>${row.b_id}</td>
								<td><a
									href="http://localhost:8080/ihpweb/board/view.do?b_id=${row.b_id}">${row.b_title}</a></td>
								<td>${row.writer_id}</td>
								<td><fmt:formatDate value="${row.date}"
										pattern="yyyy-MM-dd HH:mm:ss" /></td>
								<td>${row.b_viewcnt}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>
		</div>
		<div class="col-md-2">
			<button class="btn btn-success btn-lg btn-block" type="button"
				id="btnHome">홈으로</button>
		</div>
		<div class="col-md-2">
			<c:if test="${sessionScope.id != null}">
				<button class="btn btn-success btn-lg btn-block" type="button"
					id="btnWrite">글쓰기</button>
			</c:if>

		</div>
		<br> <br> <br>
	</div>


</body>
</html>