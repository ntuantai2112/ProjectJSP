<%@ page language="java" contentType="text/html;  charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View User</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
</head>
<body>
	<h1>View User</h1>


	<%
	String username = request.getParameter("name");
	String password = request.getParameter("password");
	String phone = request.getParameter("phone");
	String about = request.getParameter("about");
	String role = request.getParameter("role");
	String favorite1 = request.getParameter("favorite1");
	String favorite2 = request.getParameter("favorite2");
	String fav = "";

	if (favorite1 != null) {
		fav += favorite1;
	}

	if (favorite2 != null) {
		fav += favorite2;
	}

	if (role.equalsIgnoreCase("ADMIN")) {
		role = "Admin";
	} else {
		role = "User";
	}
	%>

	<table border="1">
		<tr>
			<td>UserName</td>
			<td><%=username%></td>
		</tr>
		<tr>
			<td>Password</td>
			<td><%=password%></td>
		</tr>
		<tr>
			<td>Phone</td>
			<td><%=phone%></td>
		</tr>
		<tr>
			<td>About</td>
			<td><%=about%></td>
		</tr>
		<tr>
			<td>Role</td>
			<td><%=role%></td>
		</tr>

		</tr>
		<tr>
			<td>Favourite</td>
			<td><%=fav%></td>
		</tr>
	</table>


	
</body>
</html>