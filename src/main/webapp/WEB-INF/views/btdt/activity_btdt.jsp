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
	href="<c:url value="/resources/assets/css/medical.css"/>">
</head>

<body>
	<%@ include file="dashboard.jsp"%>
	<div class="main">

		<table class="table table-striped text-center">
			<thead>
				<tr>
					<th scope="col">STT</th>
					<th scope="col">Mã hoạt động</th>
					<th scope="col">Tên hoạt động</th>
					<th scope="col">Ngày tham gia</th>
					<th scope="col">Ngày kết thúc</th>
				</tr>
			</thead>
			<tbody>
				<c:set var="count"  value="0"/> 
				<c:forEach items="${listHD}" var="HD">
					
						<c:set var="count" value="${count + 1}"/>
						<tr>
							<th scope="row">${count}</th>
							<td>${HD.hoatdong.maHd }</td>
							<td>${HD.hoatdong.tenHd }</td>
							<td>${HD.ngayThamgia }</td>
							<td>${HD.ngayKetThuc }</td>
						</tr>
					

				</c:forEach>
<!-- 				<tr> -->
<!-- 					<th scope="row">2</th> -->
<!-- 					<td>8</td> -->
<!-- 					<td>Mua Cá Koi</td> -->
<!-- 					<td>17/06/2020</td> -->
<!-- 					<td>01/07/2020</td> -->
<!-- 				</tr> -->
<!-- 				<tr> -->
<!-- 					<th scope="row">3</th> -->
<!-- 					<td>9</td> -->
<!-- 					<td>Tặng Sách Cho Thư Viện</td> -->
<!-- 					<td>17/06/2020</td> -->
<!-- 					<td>01/07/2020</td> -->
<!-- 				</tr> -->
			</tbody>
		</table>

	</div>
</body>

</html>