<%@page import="com.trungtamjava.model.KhachHang"%>
<%@page import="java.util.List"%>
<%@page import="com.trungtamjava.service.KhachHangService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List User</title>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style type="text/css">
h1 {
	text-align: center;
	margin-bottom: 50px;
	margin-top: 10px;
}

table {
	margin-bottom: 100px;
}

.right-align {
	text-align: right;
}
a{
	color: white;
}
</style>
</head>
<body>
	<h1>Danh sách khách hàng</h1>

	<%
	int count = 1;
	KhachHangService service = new KhachHangService();
	List<KhachHang> list = service.getAllKhachHang();
	%>

	<%-- Bảng khách hàng --%>
	<table class="table">
		<thead>
			<tr>
				<th scope="col">ID khách hàng</th>
				<th scope="col">Mã khách hàng</th>
				<th scope="col">Tên khách hàng</th>
				<th scope="col">Ngày sinh</th>
				<th scope="col">Số điện thoại</th>
				<th scope="col">Địa chỉ</th>
				<th scope="col">Chọn</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="<%=list%>" var="kh">


				<tr>

					<td>${kh.idKH }</td>
					<td>${kh.maKH }</td>
					<td>${kh.tenKH }</td>
					<td>${kh.ngaySinh }</td>
					<td>${kh.soDienThoai }</td>
					<td>${kh.diaChi }</td>
					<td>
						<button type="button" class="btn btn-success">
							<a href="editUser.jsp?id=${kh.idKH }">Sửa  </a>
						</button>
						<button type="button" class="btn btn-danger">
							<a href="deleteUser.jsp?id=${kh.idKH }">Xóa</a>
						</button> 

					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<div class="right-align">
		<button class="btn btn-primary">
			<a href="addUser.jsp" style="color: white; text-decoration: none;">Thêm
				Khách Hàng</a>
		</button>
	</div>



</body>
</html>