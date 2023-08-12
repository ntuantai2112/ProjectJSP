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
	String idKH = request.getParameter("id");
	KhachHangService service = new KhachHangService();
	service.deleteKhachHang(idKH);

	response.sendRedirect("/BanHangJSP/user/listUser.jsp");
	%>
</body>
</html>