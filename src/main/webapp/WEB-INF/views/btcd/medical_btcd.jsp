<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<body>
	<%@ include file="dashboard.jsp" %>
	<div class="main">
	<div class="medical">
	<h3 class="title">THÔNG TIN KHAI BÁO Y TẾ ĐỐI VỚI SINH VIÊN</h3>
		<h4 class="small__title">I. THÔNG TIN CÁ NHÂN</h4>
	<div class="medical__top">
		<ul>
			<li>1. Họ tên: <b>${tk.hoten }</b> </li>
			<li>2. MSSV: <b>${tk.username }</b> </li>
			<li>3. Khoa/ Viện: <b>${tk.chidoan.khoa.tenKhoa }</b> </li>
		</ul>
		<div class="margin"></div>
		<ul>
			<li>4. Số thẻ BHYT: 
				<input type="text" placeholder="Số thẻ BHYT...">
			</li>
			<li>5. Số điện thoại:
				<input type="text" placeholder="Số điện thoại...">
			</li>
			
		</ul>
		<div class="margin"></div>
		<ul>
			<li>6. Địa chỉ liên hệ: 
				<input style="transform:translateX(-8px);" type="text" placeholder="Địa chỉ liên hệ...">
			</li>
			
			
		</ul>
	</div>
	<div class="margin"></div>
	<h4 class="small__title">II. THÔNG TIN DỊCH TỄ</h4>
	<div class="medical__bottom">
	<div class="margin"></div>
	<p>	<b>1. Trong vòng 14 ngày qua Bạn có thấy xuất hiện dấu hiệu nào sau đây không?</b></p>
	 <div class="a__row">
	 	<p>Sốt</p>
	 	<div>
		 	<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="1" id="inlineRadio1" value="option1">
			  <label class="form-check-label ml-4" for="inlineRadio1">Có</label>
			</div>
			<div class="form-check form-check-inline ml-4">
			  <input class="form-check-input" type="radio" name="1" id="inlineRadio2" value="option2">
			  <label class="form-check-label ml-4" for="inlineRadio2">Không</label>
			</div>
	 	</div>	
	 </div>
	 <div class="a__row">
	 	<p>Ho</p>
	 	<div>
		 	<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="2" id="inlineRadio1" value="option1">
			  <label class="form-check-label ml-4" for="inlineRadio1">Có</label>
			</div>
			<div class="form-check form-check-inline ml-4">
			  <input class="form-check-input" type="radio" name="2" id="inlineRadio2" value="option2">
			  <label class="form-check-label ml-4" for="inlineRadio2">Không</label>
			</div>
	 	</div>	
	 </div>
	  <div class="a__row">
	 	<p>Khó thở
</p>
	 	<div>
		 	<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="3" id="inlineRadio1" value="option1">
			  <label class="form-check-label ml-4" for="inlineRadio1">Có</label>
			</div>
			<div class="form-check form-check-inline ml-4">
			  <input class="form-check-input" type="radio" name="3" id="inlineRadio2" value="option2">
			  <label class="form-check-label ml-4" for="inlineRadio2">Không</label>
			</div>
	 	</div>	
	 </div>
	  <div class="a__row">
	 	<p>Viêm phổi
</p>
	 	<div>
		 	<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="4" id="inlineRadio1" value="option1">
			  <label class="form-check-label ml-4" for="inlineRadio1">Có</label>
			</div>
			<div class="form-check form-check-inline ml-4">
			  <input class="form-check-input" type="radio" name="4" id="inlineRadio2" value="option2">
			  <label class="form-check-label ml-4" for="inlineRadio2">Không</label>
			</div>
	 	</div>	
	 </div>
	  <div class="a__row">
	 	<p>Đau họng
</p>
	 	<div>
		 	<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="5" id="inlineRadio1" value="option1">
			  <label class="form-check-label ml-4" for="inlineRadio1">Có</label>
			</div>
			<div class="form-check form-check-inline ml-4">
			  <input class="form-check-input" type="radio" name="5" id="inlineRadio2" value="option2">
			  <label class="form-check-label ml-4" for="inlineRadio2">Không</label>
			</div>
	 	</div>	
	 </div>
	  <div class="a__row">
	 	<p>Mệt mỏi
</p>
	 	<div>
		 	<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="6" id="inlineRadio1" value="option1">
			  <label class="form-check-label ml-4" for="inlineRadio1">Có</label>
			</div>
			<div class="form-check form-check-inline ml-4">
			  <input class="form-check-input" type="radio" name="6" id="inlineRadio2" value="option2">
			  <label class="form-check-label ml-4" for="inlineRadio2">Không</label>
			</div>
	 	</div>	
	 </div>	
	 <div class="margin"></div>
	 <div class="margin"></div>
<p>	<b>2. Trong vòng 14 ngày qua, Bạn có tiếp xúc với</b></p>
<div class="a__row">
	 	<p>Người bệnh hoặc nghi ngờ mắc bệnh COVID-19
</p>
	 	<div>
		 	<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="7" id="inlineRadio1" value="option1">
			  <label class="form-check-label ml-4" for="inlineRadio1">Có</label>
			</div>
			<div class="form-check form-check-inline ml-4">
			  <input class="form-check-input" type="radio" name="7" id="inlineRadio2" value="option2">
			  <label class="form-check-label ml-4" for="inlineRadio2">Không</label>
			</div>
	 	</div>	
	 </div>	
	 <div class="a__row">
	 	<p>Người từ nước có bệnh COVID-19

</p>
	 	<div>
		 	<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="8" id="inlineRadio1" value="option1">
			  <label class="form-check-label ml-4" for="inlineRadio1">Có</label>
			</div>
			<div class="form-check form-check-inline ml-4">
			  <input class="form-check-input" type="radio" name="8" id="inlineRadio2" value="option2">
			  <label class="form-check-label ml-4" for="inlineRadio2">Không</label>
			</div>
	 	</div>	
	 </div>	
	 <div class="a__row">
	 	<p>Người có biểu hiện sốt, ho, khó thở, viêm phổi
</p>
	 	<div>
		 	<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="9" id="inlineRadio1" value="option1">
			  <label class="form-check-label ml-4" for="inlineRadio1">Có</label>
			</div>
			<div class="form-check form-check-inline ml-4">
			  <input class="form-check-input" type="radio" name="9" id="inlineRadio2" value="option2">
			  <label class="form-check-label ml-4" for="inlineRadio2">Không</label>
			</div>
	 	</div>	
	 </div>	
	 	<div class="margin"></div>
	 <div class="margin"></div>
	 <div class="margin"></div>
	 <div class="margin"></div>
<p>	<b>3. Hiện tại Bạn có mắc các bệnh nào dưới đây</b></p>
<div class="a__row">
	 	<p>Bệnh gan mãn tính

</p>
	 	<div>
		 	<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="10" id="inlineRadio1" value="option1">
			  <label class="form-check-label ml-4" for="inlineRadio1">Có</label>
			</div>
			<div class="form-check form-check-inline ml-4">
			  <input class="form-check-input" type="radio" name="10" id="inlineRadio2" value="option2">
			  <label class="form-check-label ml-4" for="inlineRadio2">Không</label>
			</div>
	 	</div>	
	 </div>	
	 <div class="a__row">
	 	<p>Bệnh máu mãn tính


</p>
	 	<div>
		 	<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="11" id="inlineRadio1" value="option1">
			  <label class="form-check-label ml-4" for="inlineRadio1">Có</label>
			</div>
			<div class="form-check form-check-inline ml-4">
			  <input class="form-check-input" type="radio" name="11" id="inlineRadio2" value="option2">
			  <label class="form-check-label ml-4" for="inlineRadio2">Không</label>
			</div>
	 	</div>	
	 </div>	
	 <div class="a__row">
	 	<p>Bệnh phổi mãn tính

</p>
	 	<div>
		 	<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="12" id="inlineRadio1" value="option1">
			  <label class="form-check-label ml-4" for="inlineRadio1">Có</label>
			</div>
			<div class="form-check form-check-inline ml-4">
			  <input class="form-check-input" type="radio" name="12" id="inlineRadio2" value="option2">
			  <label class="form-check-label ml-4" for="inlineRadio2">Không</label>
			</div>
	 	</div>	
	 </div>	
	 	 <div class="a__row">
	 	<p>Bệnh thận mãn tính


</p>
	 	<div>
		 	<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="12" id="inlineRadio1" value="option1">
			  <label class="form-check-label ml-4" for="inlineRadio1">Có</label>
			</div>
			<div class="form-check form-check-inline ml-4">
			  <input class="form-check-input" type="radio" name="12" id="inlineRadio2" value="option2">
			  <label class="form-check-label ml-4" for="inlineRadio2">Không</label>
			</div>
	 	</div>	
	 </div>	
	 	 <div class="a__row">
	 	<p>Bệnh tim mạch


</p>
	 	<div>
		 	<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="13" id="inlineRadio1" value="option1">
			  <label class="form-check-label ml-4" for="inlineRadio1">Có</label>
			</div>
			<div class="form-check form-check-inline ml-4">
			  <input class="form-check-input" type="radio" name="13" id="inlineRadio2" value="option2">
			  <label class="form-check-label ml-4" for="inlineRadio2">Không</label>
			</div>
	 	</div>	
	 </div>	
	 	 <div class="a__row">
	 	<p>Huyết áp cao


</p>
	 	<div>
		 	<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="14" id="inlineRadio1" value="option1">
			  <label class="form-check-label ml-4" for="inlineRadio1">Có</label>
			</div>
			<div class="form-check form-check-inline ml-4">
			  <input class="form-check-input" type="radio" name="14" id="inlineRadio2" value="option2">
			  <label class="form-check-label ml-4" for="inlineRadio2">Không</label>
			</div>
	 	</div>	
	 </div>	
	 	 <div class="a__row">
	 	<p>Người ghép tạng, tủy xương


</p>
	 	<div>
		 	<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="15" id="inlineRadio1" value="option1">
			  <label class="form-check-label ml-4" for="inlineRadio1">Có</label>
			</div>
			<div class="form-check form-check-inline ml-4">
			  <input class="form-check-input" type="radio" name="15" id="inlineRadio2" value="option2">
			  <label class="form-check-label ml-4" for="inlineRadio2">Không</label>
			</div>
	 	</div>	
	 </div>	
	 	 <div class="a__row">
	 	<p>Tiểu đường


</p>
	 	<div>
		 	<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="16" id="inlineRadio1" value="option1">
			  <label class="form-check-label ml-4" for="inlineRadio1">Có</label>
			</div>
			<div class="form-check form-check-inline ml-4">
			  <input class="form-check-input" type="radio" name="16" id="inlineRadio2" value="option2">
			  <label class="form-check-label ml-4" for="inlineRadio2">Không</label>
			</div>
	 	</div>	
	 </div>	
	</div>
	<button onclick="handleClick()" type="button" style="margin: 26px 0 26px 500px;" class="btn btn-primary">Cập nhật thông tin</button>
	</div>
		
	</div>
	<script type="text/javascript">
	function handleClick() {
	 alert("Bạn đã khai báo y tế thành công");	
	}
	</script>
</body>
