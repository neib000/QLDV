<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<body>

	<div class="main">

		<table class="table table-striped text-center">
			<thead>
				<tr>
					<th scope="col">STT</th>
					<th scope="col">MSSV</th>
					<th scope="col">Họ Tên</th>
					<th scope="col">Tên HĐ</th>
					<th scope="col">Ngày tham gia</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${listCTHD.isEmpty()==true}">
					<tr>
						<td colspan="5">Sinh viên chưa tham gia hoạt động nào!!</td>
					</tr>
				</c:if>
				<c:set var="count" value="0"/>
				<c:forEach items="${listCTHD}" var="cthd">
					<c:set var="count" value="${count + 1}" />
					<tr>
						<th scope="row">${count}</th>
						<td>${cthd.taikhoan.username}</td>
						<td>${cthd.taikhoan.hoten}</td>
						<td>${cthd.hoatdong.tenHd}</td>
						<td>${cthd.ngayThamgia}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

	</div>
</body>

