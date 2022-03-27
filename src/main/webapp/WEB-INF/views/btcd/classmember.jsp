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
	href="<c:url value="/resources/assets/css/account.css"/>">
</head>

<body>
	<%@ include file="dashboard.jsp"%>
	<div class="main">
		<table class="table table-striped table-bordered text-center">
			<thead>
				<tr>
					<th scope="col">STT</th>
					<th scope="col">MSSV</th>
					<th scope="col-2">Họ và tên</th>
					<th scope="col">Ngày sinh</th>
					<th scope="col">Giới tính</th>
					<th scope="col">Đoàn phí</th>
				</tr>
			</thead>
			<tbody>
				<c:set var="count" value="0" />
				<c:forEach items="${listTK}" var="TK">
					<c:set var="count" value="${count + 1}" />
					<tr>

						<th scope="row">${count}</th>
						<td>${TK.username}</td>
						<td>${TK.hoten}</td>
						<td>${TK.ngaysinh}</td>
						<td><c:if test="${TK.gioitinh == true}">Nam</c:if> <c:if
								test="${TK.gioitinh == false}">Nữ</c:if></td>
						<td>
							<c:forEach items="${listDP}" var="DP">
								<c:if test="${TK.username == DP.taikhoan.username}">
									<c:if test="${DP.trangthai == true}">
										Đã Nộp
									</c:if>
									<c:if test="${DP.trangthai == false}">
										Chưa Nộp
									</c:if>
								</c:if>
							</c:forEach>
						</td>
					</tr>
				</c:forEach>


			</tbody>
		</table>
	</div>
	
</script>
</body>

</html>