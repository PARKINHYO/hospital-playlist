<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<meta charset="UTF-8">
<title>ERROR Page</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/error.css" type="text/css"></link>

</head>
<body>
	<div class="error-content">
		<div class="container">
			<div class="row">
				<div class="col-md-12 ">
					<div class="error-text">
						<h1 class="error">404 Error</h1>
						<div class="im-sheep">
							<div class="top">
								<div class="body"></div>
								<div class="head">
									<div class="im-eye one"></div>
									<div class="im-eye two"></div>
									<div class="im-ear one"></div>
									<div class="im-ear two"></div>
								</div>
							</div>
							<div class="im-legs">
								<div class="im-leg"></div>
								<div class="im-leg"></div>
								<div class="im-leg"></div>
								<div class="im-leg"></div>
							</div>
						</div>
						<h4>Oops! This page Could Not Be Found!</h4>
						<p>Sorry bit the page you are looking for does not exist, have
							been removed or name changed.</p>
						<a href="http://localhost:8080/ihpweb/"
							class="btn btn-primary btn-round">Go to homepage</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>