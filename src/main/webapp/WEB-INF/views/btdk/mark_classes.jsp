<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<body>

	<div class="main">
		<table id="datatableinit" class="table table-striped table-bordered text-center">
			<thead>
				<tr>
					<th scope="col">STT</th>
					<th scope="col">Mã chi đoàn</th>
					<th scope="col">Mã lớp</th>
					<th scope="col">Tác vụ</th>
				</tr>
			</thead>
			<tbody>
				<c:set var="count" value="0" />
				<c:forEach items="${listCD}" var="CD">
					<c:set var="count" value="${count + 1}" />
					<tr>
						<th class="align-middle text-center" scope="row">${count}</th>
						<td class="align-middle text-center">${CD.machidoan}</td>
						<td class="align-middle text-center">${CD.tenchidoan}</td>
						<td class="align-middle text-center"><form action="/QLDVSpringMVC/getchidoandanhgia" method="POST">
								<input type="hidden" name="chidoan" value="${CD.machidoan}">
								<button class="btn btn-outline-primary btn-sm" type="submit">
									Submit
								</button>
							</form></td>
						<!-- 						<td><a style="font-size: 16px;" href="thanh-vien-lop"><i class="fas fa-eye"></i></a></td> -->
					</tr>
				</c:forEach>


			</tbody>
		</table>

	</div>
</body>

