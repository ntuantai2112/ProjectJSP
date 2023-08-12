<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.trungtamjava.model.KhachHang"%>
<%@page import="com.trungtamjava.service.KhachHangService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String maKH = request.getParameter("maKhachHang");
	String tenKH = request.getParameter("name");
	String ngaySinhString = request.getParameter("ngaySinh");

	SimpleDateFormat format = new SimpleDateFormat("dd-MM-YYYY");
	Date ngaySinh = format.parse(ngaySinhString);

	String soDienThoai = request.getParameter("phone");
	String diaChi = request.getParameter("address");

	KhachHangService service = new KhachHangService();
	KhachHang kh = new KhachHang();
	kh.setMaKH(maKH);
	kh.setTenKH(tenKH);
	kh.setNgaySinh(ngaySinh);
	kh.setSoDienThoai(soDienThoai);
	kh.setDiaChi(diaChi);

	service.insertKhachHang(kh);

	response.sendRedirect("/BanHangJSP/user/listUser.jsp");
	%>


</body>
</html>