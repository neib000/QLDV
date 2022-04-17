<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<body>
	
	<div class="main">
		<table id="classmember" class="table table-striped table-bordered text-center">
			<thead>
				<tr>
					<th scope="col">STT</th>
					<th scope="col">MSSV</th>
					<th scope="col">Họ và tên</th>
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
	

</body>

