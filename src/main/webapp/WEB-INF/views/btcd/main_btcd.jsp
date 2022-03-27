<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Responsive sidebar template with sliding effect and dropdown menu based on bootstrap 3">
<title>Hutech</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="shortcut icon"
	href="<c:url value='/resources/assets/img/small-logo.png'/>"
	type="image/x-icon">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="<c:url value="/resources/assets/css/dashboard.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/assets/css/main_dashboard.css"/>">

</head>

<body>
	<%@ include file="dashboard.jsp" %>
	<div class="main">
		
		<div class="action_now">
		<h4 class="main_title"><i class="fa fa-chart-line"></i>  CÁC HOẠT ĐỘNG</h4>
<!-- 			<h5> -->
<!-- 			<i class="fas fa-arrow-right"></i> -->
<!-- 			Các hoạt động hiện tại</h5> -->
			<ul>
				<c:forEach items="${listHD}" var="HD">
					<li>Hoạt Động: ${HD.tenHd} năm 2021 <a href=""><i class="fas fa-angle-double-right"></i>Tham gia ngay</a></li>
				</c:forEach>
			</ul>
			<img
						alt="" style="width:100px"
						src="<c:url value='/resources/assets/img/small-logo.png'/>">
		</div>
		<div class="new_now">
		<h4 class="main_title"><i class="far fa-newspaper"></i>  TIN TỨC</h4>
		<div class="container-fluid">
			<div class="row">
			<c:forEach items="${listTT}" var="TT">
					<a href="https://www.hutech.edu.vn/homepage/tin-tuc/hoat-dong-sinh-vien/14591449-sinh-vien-vien-khoa-hoc-xa-hoi-nhan-van-tim-hieu-nghe-thuat-ngoai-giao-dai-viet-tai-bao-tang-lich-su" style="color: #000;" target="blank" class="new__hold col-lg-4 col-md-6 col-sm-12">
				 	<div class="new__pic" style="background-image: url('<c:url value='/resources/assets/img/${TT.hinhanh}'/>');">
				 	</div>
					<div class="new__content">
						<h3 >${TT.tenNd}</h3>			 		
					</div>
				</a>
				</c:forEach>

			</div>
			</div>

		</div>
			
		</div>
</body>

</html>