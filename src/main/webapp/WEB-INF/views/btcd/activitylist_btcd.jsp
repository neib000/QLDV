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
					<th scope="col">Lịch sử hoạt động</th>
					
				</tr>
			</thead>
			<tbody>
				<c:set var="count"  value="0"/> 
				<c:forEach items="${listTK}" var="tk">
					
						<c:set var="count" value="${count + 1}"/>
						<tr>
							<th scope="row">${count}</th>
							<td>${tk.username}</td>
							<td>${tk.hoten}</td>
							<td class="align-middle"><form action="chi-tiet-hoat-dong" method="post">
								<input type="hidden" name="username" value="${tk.username}">
								<button class="btn btn-outline-primary btn-sm" type="submit"><i class="fas fa-eye "></i></button>
							</form>
						</td>	
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

