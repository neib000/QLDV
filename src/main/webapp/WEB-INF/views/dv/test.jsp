<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<body>

		<div class="main">
	<!-- 				<table class="table table-striped"> -->
	<!-- 					<thead> -->
	<!-- 						<tr> -->
	<!-- 							<th scope="col">Mã điểm</th> -->
	<!-- 							<th scope="col">Tên điểm</th> -->
	<!-- 							<th scope="col">Sửa</th> -->
	<!-- 							<th scope="col">Xóa</th> -->
	<!-- 						</tr> -->
	<!-- 					</thead> -->
	<!-- 					<tbody> -->
	<%-- 						<c:forEach items="${ld }" var="ld"> --%>
	<!-- 							<tr> -->
	<%-- 								<th scope="row">${ld.maloaidiem }</th> --%>
	<%-- 								<td>${ld.tengoi }</td> --%>
	<!-- 								<td> -->
	<!-- 										<form action="update-test" method="post"> -->
	<%-- 											<input type="hidden" name="ma" value="${ld.maloaidiem }"> --%>
	<!-- 											<input type="text" name="t2" placeholder="sửa tên điểm"> -->
	<!-- 											<input class="btn btn-warning" type="submit" value="Sửa"> -->
	<!-- 										</form> -->
	<!-- 								</td> -->
	<!-- 								<td>		 -->
	<!-- 										<form action="delete-test" method="post"> -->
	<%-- 											<input type="hidden" name="ma" value="${ld.maloaidiem }"> --%>
	<!-- 											<input class="btn btn-danger" type="submit" value="xóa"> -->
	<!-- 										</form> -->
	<!-- 								</td> -->
	<!-- 							</tr>	 -->

	<%-- 						</c:forEach> --%>
	<!-- 					</tbody> -->
	<!-- 				</table> -->


	<!-- 				<form action="create-test" method="post" style="float: right;"> -->
	<!-- 					<input type="text" name="t1" placeholder="ma"> <input -->
	<!-- 						type="text" name="t2" placeholder="ten"> <input -->
	<!-- 						type="submit" class="btn btn-success" value="Thêm"> -->
	<!-- 				</form> -->
	<!-- 	<form action=""> -->
	<!-- 		<input type="password" name="oldPassword"> -->
	<!-- 		<br><br> -->
	<!-- 		<input type="password" name="newPassword"> -->
	<!-- 		<br><br> -->
	<!-- 		<input type="password" name="rePassword"> -->
	<!-- 		<br><br> -->
	<!-- 		<input type="submit" value="Đổi Mật Khẩu"> -->
	<!-- 	</form> -->
	<c:forEach items="${ld}" var="ld">
		${ld.maloaidiem}
		${ld.tengoi}
		<br>
	</c:forEach>
	</div>
</body>

