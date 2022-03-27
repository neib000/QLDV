<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.QLDVSpringMVC.util.SecurityUtils"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Quản Lý Đoàn Viên | Login</title>
<link rel="shortcut icon"
	href="<c:url value='/resources/assets/img/small-logo.png'/>"
	type="image/x-icon">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
<!-- font library -->
<!--     <link rel="stylesheet" href="./assets/font/fontawesome-free-5.15.1-web/css/all.min.css"> -->
<link rel="stylesheet"
	href="<c:url value='/resources/assets/font/fontawesome-free-5.15.1-web/css/all.min.css'/>">
<!-- icon library -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
<!-- css reset -->
<!--     <link rel="stylesheet" href="./assets/css/grid.css"> -->
<link rel="stylesheet"
	href="<c:url value='/resources/assets/css/grid.css'/>">
<!-- grid library -->
<!--     <link rel="stylesheet" href="./assets/css/base.css"> -->
<link rel="stylesheet"
	href="<c:url value='/resources/assets/css/base.css'/>">
<!-- base css -->
<!--     <link rel="stylesheet" href="./assets/css/animation.css"> -->
<link rel="stylesheet"
	href="<c:url value='/resources/assets/css/animation.css'/>">
<!-- animation library -->
<!--     <link rel="stylesheet" href="./assets/css/main.css"> -->
<link rel="stylesheet"
	href="<c:url value='/resources/assets/css/main.css'/>">
<!-- main css -->
<!--     <link rel="stylesheet" href="./assets/css/reponsive.css"> -->
<link rel="stylesheet"
	href="<c:url value='/resources/assets/css/reponsive.css'/>">
<!-- reponsive for device -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>
	<div class="app">
		<header class="header">
			<img src="<c:url value="/resources/assets/img/logo.png"/>"
				alt="ERROR" class="logo">
		</header>
		<!-- end header -->
		<div class="container">
			<div class="grid wide">
				<div class="row">
					<div class="col l-8 m-0 c-0">
						<div class="school__info">
							<div class="school__info-left">
								<h1 class="school__info-title">Cổng thông tin đoàn viên</h1>
								<p class="school__info-note">Kênh thông tin dành cho tất cả
									đoàn viên.</p>
								<div class="school__link-hold">
									<a href="https://www.hutech.edu.vn/" class="school__link"
										target="blank">Trang chủ HUTECH</a> <a
										href="http://qlcntt.hutech.edu.vn/" class="school__link"
										target="blank">TT. QLCNTT</a>
								</div>
							</div>
							<div class="school__info-right">
								<img src="<c:url value='/resources/assets/img/iphoneview.png'/>"
									alt="" class="phone">
							</div>
						</div>
						<div class="download">
							<a
								href="https://apps.apple.com/us/app/e-hutech/id1237567424?ls=1"
								class="download__link"> <img
								src="<c:url value='/resources/assets/img/ios.png'/>" alt=""
								class="download__pic">
							</a> <a
								href="https://play.google.com/store/apps/details?id=hutech.edu.vn714799&hl=vi"
								class="download__link"> <img
								src="<c:url value='/resources/assets/img/android.png'/>" alt=""
								class="download__pic">
							</a>
						</div>
					</div>
					<div class="col l-4 m-12 c-12 padding">
						<div class="login__form">
							<h3 class="login__tilte">Đăng nhập</h3>
							<form action="j_spring_security_check" class="login__form-hold" method="post">
								<!-- Wrong user or pass Alert -->
								<c:if test="${param.incorrectAccount != null}">
									<div class="alert alert-danger">
									<strong>Tên đăng nhập hoặc mật khẩu không đúng!</strong>
								</div>
								</c:if>
								<!-- Sesion timeout -->
								<c:if test="${param.sessionTimeout!= null}">
									<div class="alert alert-warning">
									<strong>Phiên đăng nhập đã kết thúc!</strong>
								</div>
								</c:if>
								<!-- Wrong user or pass Alert -->
								<c:if test="${param.accessDenied != null}">
									<div class="alert alert-danger">
									<strong>Bạn không có quyền truy cập trang này!</strong>
								</div>
								</c:if>
								<p class="label__login">
									Tài khoản <i class="fas fa-user"></i>
								</p>
								<input type="text" class="login__input" name="j_username">
								<p class="label__login">
									Mật mã <i class="fas fa-lock"></i>
								</p>
								<input type="password" class="login__input" name="j_password">
								<p class="login__form-info">
									Đăng nhập không được? <a
										href="http://qlcntt.hutech.edu.vn/ho-tro?tieu_de=tai%20khoan">Xem
										hướng dẫn tại đây</a>
								</p>
								<div class="btn__hold">
									<button class="btn__login">Đăng nhập</button>
								</div>
							</form>
						</div>
						<div class="copyright">
							<h5 class="copyright__ver">Version 1.0</h5>
							<h5 class="copyright__info">Bản quyền của Nhóm JAVA – Phát
								triển bởi MLBB © 2020 - 2021</h5>
							<div class="social__link">
								<a href="https://www.facebook.com/" target="blank"
									class="social__link-btn"> <i class="fab fa-facebook"></i>

								</a> <a href="https://www.youtube.com/" target="blank"
									class="social__link-btn"> <i class="fab fa-youtube"></i>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- end main -->
		<footer class="footer"> </footer>
		<!-- end footer -->
	</div>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<!-- end all -->
</body>
</html>