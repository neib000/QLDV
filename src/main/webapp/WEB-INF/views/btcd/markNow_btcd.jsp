<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<body>
	<%@ include file="dashboard.jsp"%>
	<div class="main">
		<!-- hien diem doan vien-->
		<c:forEach items="${ddv }" var="ddv">
			<c:if test="${ddv.id.idPhieuTc == 11 && ddv.id.machucvu == 4 }">
				<c:set var="dv1" value="${ddv.sodiem }"></c:set>
			</c:if>
		</c:forEach>
		<c:forEach items="${ddv }" var="ddv">
			<c:if test="${ddv.id.idPhieuTc == 12 && ddv.id.machucvu == 4 }">
				<c:set var="dv2" value="${ddv.sodiem }"></c:set>
			</c:if>
		</c:forEach>
		<c:forEach items="${ddv }" var="ddv">
			<c:if test="${ddv.id.idPhieuTc == 13 && ddv.id.machucvu == 4 }">
				<c:set var="dv3" value="${ddv.sodiem }"></c:set>
			</c:if>
		</c:forEach>
		<c:forEach items="${ddv }" var="ddv">
			<c:if test="${ddv.id.idPhieuTc == 14 && ddv.id.machucvu == 4 }">
				<c:set var="dv4" value="${ddv.sodiem }"></c:set>
			</c:if>
		</c:forEach>
		<c:forEach items="${ddv }" var="ddv">
			<c:if test="${ddv.id.idPhieuTc == 15 && ddv.id.machucvu == 4 }">
				<c:set var="dv5" value="${ddv.sodiem }"></c:set>
			</c:if>
		</c:forEach>
		<c:forEach items="${ddv }" var="ddv">
			<c:if test="${ddv.id.idPhieuTc == 16 && ddv.id.machucvu == 4 }">
				<c:set var="dv6" value="${ddv.sodiem }"></c:set>
			</c:if>
		</c:forEach>
		<c:forEach items="${ddv }" var="ddv">
			<c:if test="${ddv.id.idPhieuTc == 17 && ddv.id.machucvu == 4 }">
				<c:set var="dv7" value="${ddv.sodiem }"></c:set>
			</c:if>
		</c:forEach>
		<c:forEach items="${ddv }" var="ddv">
			<c:if test="${ddv.id.idPhieuTc == 18 && ddv.id.machucvu == 4 }">
				<c:set var="dv8" value="${ddv.sodiem }"></c:set>
			</c:if>
		</c:forEach>
		<c:forEach items="${ddv }" var="ddv">
			<c:if test="${ddv.id.idPhieuTc == 19 && ddv.id.machucvu == 4 }">
				<c:set var="dv9" value="${ddv.sodiem }"></c:set>
			</c:if>
		</c:forEach>
		<c:forEach items="${ddv }" var="ddv">
			<c:if test="${ddv.id.idPhieuTc == 20 && ddv.id.machucvu == 4 }">
				<c:set var="dv10" value="${ddv.sodiem }"></c:set>
			</c:if>
		</c:forEach>


		<!-- hien diem bi thu chi doan -->
		<c:forEach items="${ddv }" var="ddv">
			<c:if test="${ddv.id.idPhieuTc == 11 && ddv.id.machucvu == 3 }">
				<c:set var="btcd1" value="${ddv.sodiem }"></c:set>
			</c:if>
		</c:forEach>
		<c:forEach items="${ddv }" var="ddv">
			<c:if test="${ddv.id.idPhieuTc == 12 && ddv.id.machucvu == 3 }">
				<c:set var="btcd2" value="${ddv.sodiem }"></c:set>
			</c:if>
		</c:forEach>
		<c:forEach items="${ddv }" var="ddv">
			<c:if test="${ddv.id.idPhieuTc == 13 && ddv.id.machucvu == 3 }">
				<c:set var="btcd3" value="${ddv.sodiem }"></c:set>
			</c:if>
		</c:forEach>
		<c:forEach items="${ddv }" var="ddv">
			<c:if test="${ddv.id.idPhieuTc == 14 && ddv.id.machucvu == 3 }">
				<c:set var="btcd4" value="${ddv.sodiem }"></c:set>
			</c:if>
		</c:forEach>
		<c:forEach items="${ddv }" var="ddv">
			<c:if test="${ddv.id.idPhieuTc == 15 && ddv.id.machucvu == 3 }">
				<c:set var="btcd5" value="${ddv.sodiem }"></c:set>
			</c:if>
		</c:forEach>
		<c:forEach items="${ddv }" var="ddv">
			<c:if test="${ddv.id.idPhieuTc == 16 && ddv.id.machucvu == 3 }">
				<c:set var="btcd6" value="${ddv.sodiem }"></c:set>
			</c:if>
		</c:forEach>
		<c:forEach items="${ddv }" var="ddv">
			<c:if test="${ddv.id.idPhieuTc == 17 && ddv.id.machucvu == 3 }">
				<c:set var="btcd7" value="${ddv.sodiem }"></c:set>
			</c:if>
		</c:forEach>
		<c:forEach items="${ddv }" var="ddv">
			<c:if test="${ddv.id.idPhieuTc == 18 && ddv.id.machucvu == 3 }">
				<c:set var="btcd8" value="${ddv.sodiem }"></c:set>
			</c:if>
		</c:forEach>
		<c:forEach items="${ddv }" var="ddv">
			<c:if test="${ddv.id.idPhieuTc == 19 && ddv.id.machucvu == 3 }">
				<c:set var="btcd9" value="${ddv.sodiem }"></c:set>
			</c:if>
		</c:forEach>
		<c:forEach items="${ddv }" var="ddv">
			<c:if test="${ddv.id.idPhieuTc == 20 && ddv.id.machucvu == 3 }">
				<c:set var="btcd10" value="${ddv.sodiem }"></c:set>
			</c:if>
		</c:forEach>

		<!-- hien diem bi doan khoa -->
		<c:forEach items="${ddv }" var="ddv">
			<c:if test="${ddv.id.idPhieuTc == 11 && ddv.id.machucvu == 2 }">
				<c:set var="btdk1" value="${ddv.sodiem }"></c:set>
			</c:if>
		</c:forEach>
		<c:forEach items="${ddv }" var="ddv">
			<c:if test="${ddv.id.idPhieuTc == 12 && ddv.id.machucvu == 2 }">
				<c:set var="btdk2" value="${ddv.sodiem }"></c:set>
			</c:if>
		</c:forEach>
		<c:forEach items="${ddv }" var="ddv">
			<c:if test="${ddv.id.idPhieuTc == 13 && ddv.id.machucvu == 2 }">
				<c:set var="btdk3" value="${ddv.sodiem }"></c:set>
			</c:if>
		</c:forEach>
		<c:forEach items="${ddv }" var="ddv">
			<c:if test="${ddv.id.idPhieuTc == 14 && ddv.id.machucvu == 2 }">
				<c:set var="btdk4" value="${ddv.sodiem }"></c:set>
			</c:if>
		</c:forEach>
		<c:forEach items="${ddv }" var="ddv">
			<c:if test="${ddv.id.idPhieuTc == 15 && ddv.id.machucvu == 2 }">
				<c:set var="btdk5" value="${ddv.sodiem }"></c:set>
			</c:if>
		</c:forEach>
		<c:forEach items="${ddv }" var="ddv">
			<c:if test="${ddv.id.idPhieuTc == 16 && ddv.id.machucvu == 2 }">
				<c:set var="btdk6" value="${ddv.sodiem }"></c:set>
			</c:if>
		</c:forEach>
		<c:forEach items="${ddv }" var="ddv">
			<c:if test="${ddv.id.idPhieuTc == 17 && ddv.id.machucvu == 2 }">
				<c:set var="btdk7" value="${ddv.sodiem }"></c:set>
			</c:if>
		</c:forEach>
		<c:forEach items="${ddv }" var="ddv">
			<c:if test="${ddv.id.idPhieuTc == 18 && ddv.id.machucvu == 2 }">
				<c:set var="btdk8" value="${ddv.sodiem }"></c:set>
			</c:if>
		</c:forEach>
		<c:forEach items="${ddv }" var="ddv">
			<c:if test="${ddv.id.idPhieuTc == 19 && ddv.id.machucvu == 2 }">
				<c:set var="btdk9" value="${ddv.sodiem }"></c:set>
			</c:if>
		</c:forEach>
		<c:forEach items="${ddv }" var="ddv">
			<c:if test="${ddv.id.idPhieuTc == 20 && ddv.id.machucvu == 2 }">
				<c:set var="btdk10" value="${ddv.sodiem }"></c:set>
			</c:if>
		</c:forEach>

		<!-- hien diem bi doan truong -->
		<c:forEach items="${ddv }" var="ddv">
			<c:if test="${ddv.id.idPhieuTc == 11 && ddv.id.machucvu == 1 }">
				<c:set var="btdt1" value="${ddv.sodiem }"></c:set>
			</c:if>
		</c:forEach>
		<c:forEach items="${ddv }" var="ddv">
			<c:if test="${ddv.id.idPhieuTc == 12 && ddv.id.machucvu == 1 }">
				<c:set var="btdt2" value="${ddv.sodiem }"></c:set>
			</c:if>
		</c:forEach>
		<c:forEach items="${ddv }" var="ddv">
			<c:if test="${ddv.id.idPhieuTc == 13 && ddv.id.machucvu == 1 }">
				<c:set var="btdt3" value="${ddv.sodiem }"></c:set>
			</c:if>
		</c:forEach>
		<c:forEach items="${ddv }" var="ddv">
			<c:if test="${ddv.id.idPhieuTc == 14 && ddv.id.machucvu == 1 }">
				<c:set var="btdt4" value="${ddv.sodiem }"></c:set>
			</c:if>
		</c:forEach>
		<c:forEach items="${ddv }" var="ddv">
			<c:if test="${ddv.id.idPhieuTc == 15 && ddv.id.machucvu == 1 }">
				<c:set var="btdt5" value="${ddv.sodiem }"></c:set>
			</c:if>
		</c:forEach>
		<c:forEach items="${ddv }" var="ddv">
			<c:if test="${ddv.id.idPhieuTc == 16 && ddv.id.machucvu == 1 }">
				<c:set var="btdt6" value="${ddv.sodiem }"></c:set>
			</c:if>
		</c:forEach>
		<c:forEach items="${ddv }" var="ddv">
			<c:if test="${ddv.id.idPhieuTc == 17 && ddv.id.machucvu == 1 }">
				<c:set var="btdt7" value="${ddv.sodiem }"></c:set>
			</c:if>
		</c:forEach>
		<c:forEach items="${ddv }" var="ddv">
			<c:if test="${ddv.id.idPhieuTc == 18 && ddv.id.machucvu == 1 }">
				<c:set var="btdt8" value="${ddv.sodiem }"></c:set>
			</c:if>
		</c:forEach>
		<c:forEach items="${ddv }" var="ddv">
			<c:if test="${ddv.id.idPhieuTc == 19 && ddv.id.machucvu == 1 }">
				<c:set var="btdt9" value="${ddv.sodiem }"></c:set>
			</c:if>
		</c:forEach>
		<c:forEach items="${ddv }" var="ddv">
			<c:if test="${ddv.id.idPhieuTc == 20 && ddv.id.machucvu == 1 }">
				<c:set var="btdt10" value="${ddv.sodiem }"></c:set>
			</c:if>
		</c:forEach>
		<form action="cap-nhat-diem-thanh-vien-lop" onsubmit = "return validateForm()" method="POST">
			<table class="table-mark table table-striped table-bordered">
				<thead>
					<tr>
						<th scope="col">STT</th>
						<th scope="col">Nội dung</th>
						<th width="80" class="text-center" scope="col">Cá nhân</th>
						<th width="80" class="text-center" scope="col">Lớp</th>
						<th width="80" class="text-center" scope="col">Khoa</th>
						<th width="80" class="text-center" scope="col">Trường</th>
					</tr>
				</thead>
				<tbody>
					<c:set var="count1" value="0" />
					<c:forEach items="${tc }" var="tc">
						<c:set var="count1" value="${count1 + 1}" />
						<tr>
							<th scope="row">${count1 }</th>
							<td>${tc.nd }(0--10đ)</td>
							<c:if test="${count1 == 1 }">
								<td class="align-middle text-center">${dv1}</td>
								<td class="align-middle text-center"><input id="diem1" name="diem1"
									style="width: 50px; padding: 0; text-align: center; height: 22px;"
									type="number" value="${btcd1}" min="0" max="10"></td>
								<td class="align-middle text-center">${btdk1}</td>
								<td class="align-middle text-center">${btdt1}</td>

							</c:if>
							<c:if test="${count1 == 2 }">
								<td class="align-middle text-center">${dv2}</td>
								<td class="align-middle text-center"><input id="diem2" name="diem2"
									style="width: 50px; padding: 0; text-align: center; height: 22px;"
									type="number" value="${btcd2}" min="0" max="10"></td>
								<td class="align-middle text-center">${btdk2}</td>
								<td class="align-middle text-center">${btdt2}</td>

							</c:if>
							<c:if test="${count1 == 3 }">
								<td class="align-middle text-center">${dv3}</td>
								<td class="align-middle text-center"><input id="diem3" name="diem3"
									style="width: 50px; padding: 0; text-align: center; height: 22px;"
									type="number" value="${btcd3}" min="0" max="10"></td>
								<td class="align-middle text-center">${btdk3}</td>
								<td class="align-middle text-center">${btdt3}</td>

							</c:if>
							<c:if test="${count1 == 4 }">
								<td class="align-middle text-center">${dv4}</td>
								<td class="align-middle text-center"><input id="diem4" name="diem4"
									style="width: 50px; padding: 0; text-align: center; height: 22px;"
									type="number" value="${btcd4}" min="0" max="10"></td>
								<td class="align-middle text-center">${btdk4}</td>
								<td class="align-middle text-center">${btdt4}</td>

							</c:if>
							<c:if test="${count1 == 5 }">
								<td class="align-middle text-center">${dv5}</td>
								<td class="align-middle text-center"><input id="diem5" name="diem5"
									style="width: 50px; padding: 0; text-align: center; height: 22px;"
									type="number" value="${btcd5}" min="0" max="10"></td>
								<td class="align-middle text-center">${btdk5}</td>
								<td class="align-middle text-center">${btdt5}</td>

							</c:if>
							<c:if test="${count1 == 6 }">
								<td class="align-middle text-center">${dv6}</td>
								<td class="align-middle text-center"><input id="diem6" name="diem6"
									style="width: 50px; padding: 0; text-align: center; height: 22px;"
									type="number" value="${btcd6}" min="0" max="10"></td>
								<td class="align-middle text-center">${btdk6}</td>
								<td class="align-middle text-center">${btdt6}</td>

							</c:if>
							<c:if test="${count1 == 7 }">
								<td class="align-middle text-center">${dv7}</td>
								<td class="align-middle text-center"><input id="diem7" name="diem7"
									style="width: 50px; padding: 0; text-align: center; height: 22px;"
									type="number" value="${btcd7}" min="0" max="10"></td>
								<td class="align-middle text-center">${btdk7}</td>
								<td class="align-middle text-center">${btdt7}</td>

							</c:if>
							<c:if test="${count1 == 8 }">
								<td class="align-middle text-center">${dv8}</td>
								<td class="align-middle text-center"><input id="diem8" name="diem8"
									style="width: 50px; padding: 0; text-align: center; height: 22px;"
									type="number" value="${btcd8}" min="0" max="10"></td>
								<td class="align-middle text-center">${btdk8}</td>
								<td class="align-middle text-center">${btdt8}</td>

							</c:if>
							<c:if test="${count1 == 9 }">
								<td class="align-middle text-center">${dv9}</td>
								<td class="align-middle text-center"><input id="diem9" name="diem9"
									style="width: 50px; padding: 0; text-align: center; height: 22px;"
									type="number" value="${btcd9}" min="0" max="10"></td>
								<td class="align-middle text-center">${btdk9}</td>
								<td class="align-middle text-center">${btdt9}</td>

							</c:if>
							<c:if test="${count1 == 10 }">

								<td class="align-middle text-center">${dv10}</td>
								<td class="align-middle text-center"><input id="diem10" class="w2e" name="diem10"
									style="width: 50px; padding: 0; text-align: center; height: 22px;"
									type="number" value="${btcd10}" min="0" max="10"></td>
								<td class="align-middle text-center">${btdk10}</td>
								<td class="align-middle text-center">${btdt10}</td>
							</c:if>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<input type="hidden" name="username" value="${dtk.username}">
			<input type="submit" class="btn btn-primary" style="float: right"
				value="Gửi thông tin">
		</form>
		 <script type = "text/javascript">
         function validateForm()  {
             var d1 = document.getElementById("diem1").value;
             var d2 = document.getElementById("diem2").value;
             var d3 = document.getElementById("diem3").value;
             var d4 = document.getElementById("diem4").value;
             var d5 = document.getElementById("diem5").value;
             var d6 = document.getElementById("diem6").value;
             var d7 = document.getElementById("diem7").value;
             var d8 = document.getElementById("diem8").value;
             var d9 = document.getElementById("diem9").value;
             var d10 = document.getElementById("diem10").value;
         		
             if( d1 == "" && d2 == "" && d3 == "" && d4 == "" && d5 == "" && d6 == "" && d7 == "" && d8 == "" && d9 == "" && d10 == ""  ){
            	 alert("Vui lòng nhập đầy đủ điểm");
            	 return false;
             }
             if( d1 == "" || d2 == "" || d3 == "" || d4 == "" || d5 == "" || d6 == "" || d7 == "" || d8 == "" || d9 == "" || d10 == ""  ){
            	 var report = 'Vui lòng nhập điểm tiêu chí: ';
            	
            	 if(d1 == "") {
            		 report += ' 1';
                 }
                 if(d2 == "") {
                	 report += ' 2';
                 }
     
                 if(d3 == "") {
                	 report += ' 3';
                 }
     
                 if(d4 == "") {
                	 report += ' 4';
                 }
     
                 if(d5 == "") {
                	 report += ' 5';
                 }
     
                 if(d6 == "") {
                	 report += ' 6';
        
                 }
     
                 if(d7 == "") {
                	 report += ' 7';
                 }
     
                 if(d8 == "") {
                	 report += ' 8';
                  
                 }
     
                 if(d9 == "") {
                	 report += ' 9';
                
                 }
     
                 if(d10 == "") {
                	 report += ' 10';
                  
                 }
                 report +='.';
                	 alert(report);
                 return false;
             }
             alert("Đã cập nhật điểm thành công");
             return true;
         }
      </script>
	</div>
</body>

