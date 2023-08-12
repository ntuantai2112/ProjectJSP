<%@page import="com.trungtamjava.model.KhachHang"%>
<%@page import="com.trungtamjava.service.KhachHangService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UPDATE FORM</title>
<style>
form {
	margin: 0 auto;
}

.form_group {
	margin-bottom: 20px;
}

label {
	margin-bottom: 10px;
}

input {
	margin-top: 10px;
}

.name, .phone, .password, .username {
	width: 200px;
	padding: 5px;
	border-radius: 5px;
	border: 1px solid gray;
}

textarea {
	width: 300px;
	margin-top: 10px;
}

.red {
	border: 1px solid red;
}
</style>
</head>
<body>
	<%
	String idKH = request.getParameter("id");

	KhachHangService service = new KhachHangService();
	KhachHang kh = service.getKhachHangByID(idKH);

	if (kh == null) {
		return;
	}
	%>

	<h1><%= idKH %></h1>
	
	<h1>Form Edit Customer</h1>
	<form action="editUserPost.jsp" method="post" id="form_1">
		<div class="form_group">
			<input type="hidden" value="<%=kh.getIdKH()%>" name="id"> </br>
			<!-- <span class="error"></span> -->
		</div>

		<div class="form_group">
			<label>Mã Khách Hàng:</label> </br> <input type="text" name="maKhachHang"
				placeholder="Mã Khách Hàng" class="name" value="<%=kh.getMaKH()%>">
			</br>
			<!-- <span class="error"></span> -->
		</div>
		<div class="form_group">
			<label>Name:</label> </br> <input type="text" name="name"
				placeholder="Tên Khách Hàng" class="name" value="<%=kh.getTenKH()%>">
			</br>
			<!-- <span class="error"></span> -->
		</div>
		<div class="form_group">
			<label>Ngày Sinh:</label> </br> <input type="text" name="ngaySinh"
				placeholder="Ngày Sinh Khách Hàng" class="password"
				value="<%=kh.getNgaySinh()%>"> </br>
			<!-- <span class="error"></span> -->

		</div>
		<div class="form_group">
			<label>Phone:</label> </br> <input type="text" name="phone"
				placeholder="Số Điện Thoại Khách Hàng" class="phone"
				value="<%=kh.getSoDienThoai()%>"> </br>
			<!-- <span class="error"></span> -->

		</div>
		<div class="form_group">
			<label>Địa Chỉ:</label> </br> <input type="text" name="address"
				placeholder="Số Điện Thoại Khách Hàng" class="address"
				value="<%=kh.getDiaChi()%>"> </br>
			<!-- <span class="error"></span> -->

		</div>


		<button type="submit">Submit</button>
	</form>
</body>
</html>