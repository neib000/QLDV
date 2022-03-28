<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<body>
	<%@ include file="dashboard.jsp" %>
	<div class="main">

		<div class="action_now">
			<h4 class="main_title">
				<i class="fa fa-chart-line"></i> CÁC HOẠT ĐỘNG
			</h4>
			<!-- 			<h5> -->
			<!-- 			<i class="fas fa-arrow-right"></i> -->
			<!-- 			Các hoạt động hiện tại</h5> -->
			<ul>
				<c:forEach items="${listHD}" var="HD">
					<li>Hoạt Động: ${HD.tenHd} năm 2021 <a href=""><i
							class="fas fa-angle-double-right"></i>Tham gia ngay</a></li>
				</c:forEach>
			</ul>
			<img alt="" style="width: 100px"
				src="<c:url value='/resources/assets/img/small-logo.png'/>">
		</div>
		<div class="new_now">
			<h4 class="main_title">
				<i class="far fa-newspaper"></i> TIN TỨC
			</h4>
			<div class="container-fluid">
				<div class="row">
					<c:forEach items="${listTT}" var="TT">
						<a
							href="https://www.hutech.edu.vn/homepage/tin-tuc/hoat-dong-sinh-vien/14591449-sinh-vien-vien-khoa-hoc-xa-hoi-nhan-van-tim-hieu-nghe-thuat-ngoai-giao-dai-viet-tai-bao-tang-lich-su"
							style="color: #000;" target="blank"
							class="new__hold col-lg-4 col-md-6 col-sm-12">
							<div class="new__pic"
								style="background-image: url('<c:url value='/resources/assets/img/${TT.hinhanh}'/>');">
							</div>
							<div class="new__content">
								<h3>${TT.tenNd}</h3>
							</div>
						</a>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</body>

