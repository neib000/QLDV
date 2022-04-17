<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<body>

	<div class="main">
		<form action="<c:url value = "/dv/doi-mat-khau"/>" method="post">
			<p>Mật khẩu cũ:</p>
			<input type="password" name="oldPassword"> 
			<p>Mật khẩu mới:</p>
			<input type="password" name="newPassword"> 
			<p>Nhập lại mật khẩu:</p>
			<input type="password" name="rePassword"> 
			<input type="submit" value="Đổi Mật Khẩu">
		</form>
		${tk.password }
	</div>
</body>
