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

		<table class="table table-striped table-bordered text-center ">
			<thead>
				<tr>
					<th scope="col">STT</th>
					<th scope="col">MSSV</th>
					<th scope="col">Họ và tên</th>
					<th scope="col">Điểm cá nhân</th>
					<th scope="col">Điểm lớp</th>
					<th scope="col">Điểm khoa</th>
					<th scope="col">Điểm trường</th>
					<th scope="col">Xếp Loại</th>
					<th scope="col">Tác vụ</th>
				</tr>
			</thead>
			<tbody>

				<c:set var="count" value="0" />
				<c:forEach items="${listTK}" var="TK">
					<c:set var="countdv1" value="0" />
					<c:forEach items="${listDiemdv }" var="ddv">
						<c:if
							test="${ddv.tieuchiDiemrenluyen.phieuDrl.maphieu == 'dv02' && ddv.id.machucvu == 1  && ddv.taikhoan.username == TK.username}">
							<c:set var="countdv1" value="${countdv1 + ddv.sodiem}" />
						</c:if>
					</c:forEach>
					<c:set var="countdv2" value="0" />
					<c:forEach items="${listDiemdv }" var="ddv">
						<c:if
							test="${ddv.tieuchiDiemrenluyen.phieuDrl.maphieu == 'dv02' && ddv.id.machucvu == 2  && ddv.taikhoan.username == TK.username}">
							<c:set var="countdv2" value="${countdv2 + ddv.sodiem}" />
						</c:if>
					</c:forEach>
					<c:set var="countdv3" value="0" />
					<c:forEach items="${listDiemdv }" var="ddv">
						<c:if
							test="${ddv.tieuchiDiemrenluyen.phieuDrl.maphieu == 'dv02' && ddv.id.machucvu == 3  && ddv.taikhoan.username == TK.username}">
							<c:set var="countdv3" value="${countdv3 + ddv.sodiem}" />
						</c:if>
					</c:forEach>
					<c:set var="countdv4" value="0" />
					<c:forEach items="${listDiemdv }" var="ddv">
						<c:if
							test="${ddv.tieuchiDiemrenluyen.phieuDrl.maphieu == 'dv02' && ddv.id.machucvu == 4  && ddv.taikhoan.username == TK.username}">
							<c:set var="countdv4" value="${countdv4 + ddv.sodiem}" />
						</c:if>
					</c:forEach>
					<c:set var="xeploai" value="" />
					<c:forEach items="${ld}" var="ld">
						<c:if test="${countdv1 >= ld.maloaidiem}">
							<c:set var="xeploai" value="${ld.tengoi}" />
						</c:if>
					</c:forEach>
					<c:set var="count" value="${count + 1}" />
					<tr>

						<th class="align-middle" scope="row">${count}</th>
						<td class="align-middle">${TK.username}</td>
						<td class="align-middle">${TK.hoten}</td>
						<td class="align-middle"><c:if test="${countdv4 != 0}">
							${countdv4 }
						</c:if> <c:if test="${countdv4 == 0}">
							...
						</c:if></td>
						<td class="align-middle"><c:if test="${countdv3 != 0}">
							${countdv3 }
						</c:if> <c:if test="${countdv3 == 0}">
							...
						</c:if></td>
						<td class="align-middle"><c:if test="${countdv2 != 0}">
							${countdv2 }
						</c:if> <c:if test="${countdv2 == 0}">
							...
						</c:if></td>
						<td class="align-middle"><c:if test="${countdv1 != 0}">
							${countdv1 }
						</c:if> <c:if test="${countdv1 == 0}">
							...
						</c:if></td>
						<td class="align-middle">${xeploai}</td>
						<td class="align-middle"><form
								action="chi-tiet-diem-bay-gio">
								<input type="hidden" name="username" value="${TK.username}">
								<button class="btn btn-outline-primary btn-sm" type="submit">
									<i class="fas fa-eye "></i>
								</button>
							</form></td>

						<!-- <a style="font-size: 16px;" href="chi-tiet-diem"></a> -->
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>

	</script>
</body>

</html>