<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<body>

	<div class="main">
		<div class="head__mannage">
			<h4>
				Quản lý <b> Hoạt động</b>
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
							<h5>Thêm hoạt động</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body" style="color: #000;">
							<form action="them-hoat-dong" method="post">
								<div class="form-group">
									<label>Tiêu đề:</label> <input type="text" class="form-control"
										name="tieude" required>
								</div>

								<div class="form-group">
									<label>Trạng thái:</label> <select
										class="form-select form-control" name="trangthai"
										aria-label="Default select example">
										<option value="true" selected>Trạng thái</option>
										<option value="true">Đang diễn ra</option>
										<option value="false">Đã kết thúc</option>

									</select>
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
					<th class="text-center" scope="col">Trạng thái</th>
					<th class="text-center" scope="col">Tác vụ</th>
				</tr>


			</thead>
			<tbody>
				<c:set var="count1" value="0" />
				<c:forEach items="${hd }" var="hd">
					<c:set var="count1" value="${count1 + 1}" />
					<tr>
						<th class="text-center" scope="row">${hd.maHd }</th>
						<td class="text-center" scope="col">${hd.tenHd }</td>
						<td class="text-center" scope="col">${hd.ngaytao }</td>
						<td class="text-center" scope="col"><c:if
								test="${hd.trangthai == true }">
								<p class="status">đang diễn ra</p>
							</c:if> <c:if test="${hd.trangthai == false }">
								<p class="status bg-danger">đã kết thúc</p>
							</c:if></td>
						<td class="text-center" scope="col">
							<button type="submit" data-toggle="modal" class="my_edit"
								data-target="#exampleModal${count1 }"
								style="cursor: pointer; color: #FFC107; border: unset; background-color: transparent; font-size: 16px;">
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
											<form action="sua-hoat-dong" method="post">
												<div class="form-group">
													<label style="float: left;">Tiêu đề:</label> <input
														type="text" class="form-control" value="${hd.tenHd }"
														name="tieude" required>
												</div>
												<label style="float: left;">Trạng thái:</label> <select
													class="form-select form-control" name="trangthai"
													aria-label="Default select example">
													<option value="true" selected>Trạng thái</option>
													<option value="true">Đang diễn ra</option>
													<option value="false">Đã kết thúc</option>

												</select>
											
												<input type="hidden" value="${hd.maHd }" name="ma">


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
							<form action="xoa-hoat-dong" method="post"
								style="display: inline-block;">
								<input type="hidden" name="ma" value="${hd.maHd }">
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
