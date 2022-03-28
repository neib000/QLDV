<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
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
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
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
	href="<c:url value="/resources/assets/css/account.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/assets/css/main_dashboard.css"/>">

<link rel="stylesheet"
	href="<c:url value="/resources/assets/css/mark.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/assets/css/medical.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/assets/css/mark-detail.css"/>">
</head>

<body>
	<div class="page-wrapper chiller-theme toggled">
		<a id="show-sidebar" class="btn btn-sm btn-dark" href="#"> <i
			class="fas fa-bars"></i>
		</a>
		<nav id="sidebar" class="sidebar-wrapper">
			<div class="sidebar-content">
				<div class="sidebar-brand">
					<a href="https://www.hutech.edu.vn/" target="blank"> <img
						alt="" style="width: 28px"
						src="<c:url value='/resources/assets/img/small-logo.png'/>">
						Hutech
					</a>
					<!-- 					<div id="close-sidebar"> -->
					<!-- 						<i class="fas fa-times"></i> -->
					<!-- 					</div> -->
				</div>
				<div class="sidebar-header">
					<div class="user-pic">
						<img class="img-responsive img-rounded"
							src="https://sinhvien.hutech.edu.vn/assets/images/noimage.jpg"
							alt="User picture">
					</div>
					<div class="user-info">
						<span class="user-name">${tk.hoten } </span> <span
							class="user-role"> <c:if test="${tk.chucvu.machucvu == 4}">
								<%-- 							<c:out value = "Đoàn viên"/> --%>
								Đoàn viên
						</c:if>
						</span> <span class="user-status"> <i class="fa fa-circle"></i> <span>Online</span>
						</span>
					</div>
				</div>
				<!-- sidebar-header  -->
				<div class="sidebar-search">
					<div>
						<div class="input-group">
							<input type="text" class="form-control search-menu"
								placeholder="Search...">
							<div class="input-group-append">
								<span class="input-group-text"> <i class="fa fa-search"
									aria-hidden="true"></i>
								</span>
							</div>
						</div>
					</div>
				</div>
				<!-- sidebar-search  -->
				<div class="sidebar-menu">
					<ul>

						<li><a href="/QLDVSpringMVC/dv/trang-chu"> <i
								class="fas fa-home"></i> <span>Trang chủ</span>
						</a></li>
						<li><a href="/QLDVSpringMVC/dv/thong-tin-tai-khoan"> <i
								class="fas fa-info-circle"></i> <span>Thông tin sinh viên</span>
						</a> <!-- 							<div class="sidebar-submenu"> --> <!-- 								<ul> -->
							<!-- 									<li><a href="#">Products </a></li> --> <!-- 									<li><a href="#">Orders</a></li> -->
							<!-- 									<li><a href="#">Credit cart</a></li> --> <!-- 								</ul> -->
							<!-- 							</div> --></li>
						<li class="sidebar-dropdown"><a href="#"><i
								class="fas fa-pencil-alt"></i> <span>Đánh giá điểm đoàn
									viên</span> </a>
							<div class="sidebar-submenu">
								<ul>
									<li><a href="/QLDVSpringMVC/dv/diem-ca-nhan">Điểm cá
											nhân</a></li>

								</ul>
							</div></li>
						<li class="sidebar-dropdown"><a href="#"> <i
								class="fa fa-chart-line"></i> <span>Hoạt động đoàn</span>
						</a>
							<div class="sidebar-submenu">
								<ul>
									<li><a href="/QLDVSpringMVC/dv/lich-su-hoat-dong">Ghi
											nhận tham gia hoạt động</a></li>

								</ul>
							</div></li>
						<li><a href="/QLDVSpringMVC/dv/khai-bao-y-te"><i
								class="fas fa-medkit"></i> <span>Khai báo y tế</span> </a></li>
						<li><a href="/QLDVSpringMVC/dv/ho-tro"><i
								class="fas fa-phone"></i><span>Hỗ trợ</span> </a></li>
						<!-- 						<li class="header-menu"><span>Extra</span></li> -->
						<!-- 						<li><a href="#"> <i class="fa fa-book"></i> <span>Documentation</span> -->
						<!-- 								<span class="badge badge-pill badge-primary">Beta</span> -->
						<!-- 						</a></li> -->
						<!-- 						<li><a href="#"> <i class="fa fa-calendar"></i> <span>Calendar</span> -->
						<!-- 						</a></li> -->
						<!-- 						<li><a href="#"> <i class="fa fa-folder"></i> <span>Examples</span> -->
						<!-- 						</a></li> -->
					</ul>
				</div>
				<!-- sidebar-menu  -->
			</div>
			<!-- sidebar-content  -->
			<div class="sidebar-footer">
				<a href="#"> <i class="fa fa-bell"></i>
				</a> <a href="#"> <i class="fa fa-envelope"></i>
				</a> <a href="#"> <i class="fa fa-cog"></i>
				</a> <a href="<c:url value="/Logout"/>"> <i class="fa fa-power-off"></i>
				</a>
			</div>
		</nav>
	</div>
	<decorator:body />

	<!-- sidebar-wrapper  -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<script src="<c:url value="/resources/assets/js/dashboard.js"/>"></script>



	<c:if test="${param.wrongpassword != null}">
		<script type="text/javascript">
			alert("Sai mật khẩu!");
		</script>
	</c:if>
	<c:if test="${param.passwordnotmatch != null}">
		<script type="text/javascript">
			alert("Mật khẩu không trùng khớp!");
		</script>
	</c:if>
	<c:if test="${param.changesuccess != null}">
		<script type="text/javascript">
			alert("Cập nhật thông tin thành công!");
		</script>
	</c:if>
	</div>

</body>
</html>

