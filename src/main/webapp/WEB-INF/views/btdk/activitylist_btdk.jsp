<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<body>

	<div class="main">

		<table class="table table-striped text-center">
			<thead>
				<tr>
					<th scope="col">STT</th>
					<th scope="col">Mã hoạt động</th>
					<th scope="col">Tên hoạt động</th>
					<th scope="col">Ngày tạo</th>
					
				</tr>
			</thead>
			<tbody>
				<c:set var="count"  value="0"/> 
				<c:forEach items="${listHD}" var="HD">
					
						<c:set var="count" value="${count + 1}"/>
						<tr>
							<th scope="row">${count}</th>
							<td>${HD.maHd}</td>
							<td>${HD.tenHd}</td>
							<td>${HD.ngaytao}</td>
						
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

