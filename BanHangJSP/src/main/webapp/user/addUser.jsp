<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add User</title>

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

.name, .phone, .password, .username, .address {
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

button {
	background: green;
	text-align: right;
	color: white;
	padding: 10px;
	border: none;
	border-radius: 5px;
}
</style>
</head>
<body>
	<h1>Form Add User</h1>
	<form action="addUserPost.jsp" method="post" id="form_1">
		<div class="form_group">
			<label>Mã Khách Hàng:</label> </br> <input type="text" name="maKhachHang"
				placeholder="Mã Khách Hàng" class="name"> </br>
			<!-- <span class="error"></span> -->
		</div>
		<div class="form_group">
			<label>Name:</label> </br> <input type="text" name="name"
				placeholder="Tên Khách Hàng" class="name"> </br>
			<!-- <span class="error"></span> -->
		</div>
		<div class="form_group">
			<label>Ngày Sinh:</label> </br> <input type="text" name="ngaySinh"
				placeholder="Ngày Sinh Khách Hàng" class="password"> </br>
			<!-- <span class="error"></span> -->

		</div>
		<div class="form_group">
			<label>Phone:</label> </br> <input type="text" name="phone"
				placeholder="Số Điện Thoại Khách Hàng" class="phone"> </br>
			<!-- <span class="error"></span> -->

		</div>
		<div class="form_group">
			<label>Địa Chỉ:</label> </br> <input type="text" name="address"
				placeholder="Số Điện Thoại Khách Hàng" class="address"> </br>
			<!-- <span class="error"></span> -->

		</div>

		<button class="btn btn-primary" type="submit">Thêm khách hàng
		</button>

	</form>
</body>
</html>