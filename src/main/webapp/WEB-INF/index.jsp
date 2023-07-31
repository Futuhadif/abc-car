<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>ABC Car</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
	<!-- Font Awesome CSS -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
	<!-- Custom CSS -->
	<link rel="stylesheet" href="css/style.css">
	<style>
		.footer-text {
			font-size: 24px;
			display: block;
			text-align: center;
		}
	</style>
</head>
<body>
	<!-- Header -->
	<%@ include file="header.jsp"%>

	<!-- Masthead -->
<div class="masthead" style="background-image: url('./images/image1.jpg'); background-size: cover; background-position: center;">
		<div class="text">
			<h4>WELCOME TO ABC CAR</h4>
			<h1 class="text-warning">Find Your Dream Car</h1>
				<hr>
				<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odio, distinctio? Excepturi aliquam, quas saepe voluptas maiores praesentium esse odio laboriosam maxime dignissimos, quaerat distinctio impedit minus illum! Minus, laborum voluptatum.</p>
				<div class="d-grid gap-2 d-md-flex justify-content-md-start mt-4">
					<a href="register" class="btn btn-outline-warning me-md-2" type="button">Sign Up</a>
					<a href="login" class="btn btn-outline-warning me-md-2" type="button">Sign In</a>
				</div>
		</div>
	</div>


	<!-- Footer -->
	<footer id="footer">
		<div class="container-fluid py-5" style="background: #0e153a; color: white; position: relative;">
			<div class="footer-text">
				<i class="fas fa-copyright">
					ABC Car
				</i>
			</div>
		</div>
	</footer>

	<!-- Bootstrap JS -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
