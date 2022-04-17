<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<body>

	<div class="main">
		<div class="head__mannage">
			<h4>
				Quản lý <b> Tin tức</b>
			</h4>
			<button type="button" class="btn btn-success"
				style="font-size: 15px;" data-toggle="modal"
				data-target="#exampleModal" data-whatever="@mdo">
				<i class="fas fa-plus-circle"></i> Thêm tin tức
			</button>
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header" style="color: #000;">
							<h5>Thêm tin tức</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body" style="color: #000;">
							<form action="them-tin-tuc" method="post">
								<div class="form-group">
									<label>Tiêu đề:</label> <input type="text" class="form-control"
										name="tieude" required>
								</div>
								<div class="form-group">
									<label>Nội dung:</label>
									<textarea class="form-control" name="noidung"></textarea>
								</div>
								<div class="form-group">
									<label>Hình ảnh:</label> <input type="file"
										class="form-control" name="hinhanh" required>
								</div>
								<input type="hidden" value="${count + 1 }" name="ma">


								<div class="mt-4" style="float: right;">
									<button type="button" class="btn btn-secondary"
										data-dismiss="modal">Thoát</button>
									<button type="submit" class="btn btn-primary">Tạo</button>
								</div>
							</form>
						</div>



					</div>
				</div>
			</div>
		</div>

		<table id="datatableinit"  class="table table-striped">
			<thead>
				<tr>
					<th class="text-center" scope="col">STT</th>
					<th class="text-center" scope="col">Tiêu đề</th>
					<th class="text-center" scope="col">Ngày tạo</th>
					<th class="text-center" scope="col">Hình ảnh</th>
					<th class="text-center" scope="col">Tác vụ</th>
				</tr>


			</thead>
			<tbody>
			<c:set var="count1" value="0" />
				<c:forEach items="${tt }" var="tt">
				<c:set var="count1" value="${count1 + 1}"/>
					<tr>
						<th class="text-center" scope="row">${tt.matin }</th>
						<td class="text-center" scope="col">${tt.tenNd }</td>
						<td class="text-center" scope="col">${tt.ngaytao }</td>
						<td class="text-center" scope="col"><img class="cover" alt=""
							style="width: 50px; height: 33px; border: 2px solid black;"
							src="<c:url value='/resources/assets/img/${tt.hinhanh }'/>">
						</td>
						<td class="text-center" scope="col">
							<button type="submit" data-toggle="modal" class="my_edit"
								data-target="#exampleModal${count1 }" 
								style="cursor:pointer; color: #FFC107; border: unset; background-color: transparent; font-size: 16px;">
								<i class="fas fa-pencil-alt"></i>
							</button>
							<div class="modal fade" id="exampleModal${count1 }" tabindex="-1"
								role="dialog" aria-labelledby="exampleModalLabel${count1 }"
								aria-hidden="true">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header" style="color: #000;">
											<h5>Sửa tin tức</h5>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
										<div class="modal-body" style="color: #000;">
											<form action="sua-tin-tuc" method="post">
												<div class="form-group">
													<label style="float: left;">Tiêu đề:</label> <input type="text"
														class="form-control" value="${tt.tenNd }" name="tieude" required>
												</div>
												<div class="form-group">
													<label style="float: left;">Nội dung:</label>
													<textarea class="form-control" required name="noidung" rows="4" cols="50">
														${tt.tenNd }
													</textarea>
												</div>
												<input type="hidden" value="${tt.hinhanh }" name="hinhanh2">
												<div class="form-group">
													<label style="float: left;">Hình ảnh:</label> <input type="file"
														class="form-control"  name="hinhanh">
												</div>
												<input type="hidden" value="${tt.matin }" name="ma">
												

												<div class="mt-4" style="float: right;">
													<button type="button" class="btn btn-secondary"
														data-dismiss="modal">Thoát</button>
													<button type="submit" class="btn btn-primary">Sửa</button>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
							<form action="xoa-tin-tuc" method="post"
								style="display: inline-block;">
								<input type="hidden" name="ma" value="${tt.matin }">
								<button onclick="handleClick()" type="submit" class="my_delete"
									style="cursor: pointer; color: #F44336; border: unset; background-color: transparent; font-size: 16px;">
									<i class="fas fa-trash"></i>
								</button>
							</form>
						</td>
					</tr>
				
				</c:forEach>


			</tbody>
		</table>
	</div>
	<script type="text/javascript">
		n = new Date();
		y = n.getFullYear();
		m = n.getMonth() + 1;
		d = n.getDate();
		document.getElementById("date").innerHTML = d + "/" + m + "/" + y;
		
		function handleClick() {
			 alert("Bạn đã xóa thành công");	
			}
	</script>
</body>
