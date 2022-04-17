<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<body>

	<div class="main">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-3 col-md-12 col-sm-12">
					<div class="account__pic">
						<img class="img-responsive img-rounded"
							style="width: 100%; border-radius: 8px;"
							src="https://sinhvien.hutech.edu.vn/assets/images/noimage.jpg"
							alt="User picture">
					</div>
					<div class="account__note green">Cập nhật gần nhất:</div>
					<div class="account__note blue">
						Yêu cầu chỉnh sửa các thông tin khác xin liên hệ:
						<ul>
							<li>PHÒNG ĐÀO TẠO - KHẢO THÍ</li>
							<li>Trụ sở: <b>475A (số cũ:144/24) Điện Biên Phủ, P.25,
									Q.Bình Thạnh, TP.HCM</b>
							</li>
							<li>ĐT: <b>(028) 3 5120782</b></li>
							<li>Fax: (028) 3 5120784</li>
							<li>Email: <b>daotao@hutech.edu.vn</b></li>
						</ul>
					</div>
					<div class="account__note yellow">
						Lưu ý: <span class="red">(*)</span> Dữ liệu không được phép thay
						đổi
					</div>
				</div>
				<div class="col-lg-9 col-md-12 col-sm-12">
					<div class="account__info">
						<div class="account__inro_top">
							<div class="row">
								<div class="col-lg-6 col-md-6 col-sm-12">
									<ul>
										<li>Mã số sinh viên: <b>${tk.username}</b></li>
										<li>Lớp: <b>${tk.chidoan.tenchidoan}</b>
										</li>
										<li>Khoa: <b>${tk.chidoan.khoa.tenKhoa}</b>
										</li>
										<li>Niên khóa: 2018 - 2022</li>
									</ul>
								</div>
								<div class="col-lg-6 col-md-6 col-sm-12">
									<ul>
										<li>Họ tên: <b>${tk.hoten}</b></li>
										<li>Ngày sinh: ${tk.ngaysinh}</li>
										<li>Chuyên ngành: <b>chưa có</b>
										</li>
										<li>
											<button type="button" class="btn btn-success"
												style="font-size: 15px; margin-top: 8px;"
												data-toggle="modal" data-target="#exampleModal"
												data-whatever="@mdo">
												<i class="fas fa-plus-circle"></i> Đổi mật khẩu
											</button>
										</li>

									</ul>
								</div>
							</div>
						</div>
						<div class="account__inro_bottom">
							<h3>THÔNG TIN TÀI KHOẢN</h3>
							<div class="padding"></div>
							<form action="cap-nhat-thong-tin-tai-khoan" method="post">
								<div class="row">
									<div class="col-lg-6 col-md-6 col-sm-12">
										<p>
											Mã đăng nhập <span class="red">(*)</span>:
										</p>
										<input type="text" name="ma" value="${tk.username}"
											disabled="disabled">
										<div class="margin"></div>
										<div class="margin"></div>
										<p>
											Họ tên <span class="red">(*)</span>:
										</p>
										<input type="text" name="ten" value="${tk.hoten}"
											disabled="disabled">
										<div class="margin"></div>
										<p>
											Thẻ đoàn <span class="red">(*)</span>:
										</p>
										<input type="text" name="the" value="${tk.theDoan}"
											disabled="disabled">
										<div class="margin"></div>
										<p>Điện thoại:</p>
										<input type="text" name="sdt" value="${tk.sdt}">
										<div class="margin"></div>
										<p>
											Dân tộc <span class="red">(*)</span>:
										</p>
										<input type="text" name="dan" value="${tk.dantoc}"
											disabled="disabled">
										<div class="margin"></div>
										<p>Địa chỉ:</p>
										<input type="text" name="dc" value="${tk.diachi}">
									</div>
									<div class="col-lg-6 col-md-6 col-sm-12">
										<p>
											Chi đoàn <span class="red">(*)</span>:
										</p>
										<select name="cd" disabled="disabled">
											<option value="1">18DTHA1</option>
											<option value="2">18DTHA2</option>
											<option value="3">19DATA3</option>
											<option value="4">19DDLA4</option>
											<option value="5">17DKSA5</option>
											<option value="6">17DTPA6</option>
											<option value="7">Chi đoàn khoa</option>
											<option value="8">Chi đoàn trường</option>
										</select>
										<div class="margin"></div>
										<p>
											Giới tính <span class="red">(*)</span>:
										</p>
										<select name="gt" disabled="disabled">
											<option value="1">Nam</option>
											<option value="0">Nữ</option>
										</select>
										<div class="margin"></div>
										<p>
											Ngày sinh <span class="red">(*)</span>:
										</p>
										<input type="text" value="${tk.ngaysinh}" disabled="disabled">

										<input type="hidden" name="maTK" value="${tk.username}">
										<input type="submit" value="Lưu thông tin">
									</div>
								</div>
						</div>
						</form>
						<div class="modal fade" id="exampleModal" tabindex="-1"
							role="dialog" aria-labelledby="exampleModalLabel"
							aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header" style="color: #000;">
										<h5>Đổi mật khẩu</h5>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body" style="color: #000;">
										<form action="doi-mat-khau">
											<div class="form-group">
												<label>Mật khẩu cũ:</label> <input type="password"
													class="form-control" name="oldPassword" required>
											</div>
											<div class="form-group">
												<label>Mật khẩu mới:</label> <input class="form-control"
													type="password" name="newPassword" required>
											</div>
											<div class="form-group">
												<label>Nhập lại mật khẩu:</label> <input
													class="form-control" type="password" name="rePassword" required>
											</div>
											<div class="mt-4" style="float: right;">
												<button type="button" class="btn btn-secondary"
													data-dismiss="modal">Thoát</button>
												<button type="submit" class="btn btn-primary">Đổi
													Mật Khẩu</button>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<c:if test="${param.wrongpassword != null}">
		<script type="text/javascript">
		alert("Sai mật khẩu!");
		</script>
	</c:if>
	<c:if test="${param.passwordnotmatch != null}">
		<script type="text/javascript">
		alert("Mật khẩu không trùng khớp!");
		</script>
	</c:if>
		<c:if test="${param.changesuccess != null}">
		<script type="text/javascript">
		alert("Cập nhật thông tin thành công!");
		</script>
	</c:if>


</body>
