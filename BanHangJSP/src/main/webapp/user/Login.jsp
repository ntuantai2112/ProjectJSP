<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<style>


.form_group {
	margin-bottom: 10px;
}

label {
	font-weight: bold;
	padding: 5px;
}

input{
	width: 200px;
	padding: 8px;
	border: 1px solid #ccc;
	border-radius: 3px;
}

button[type="submit"] {
	padding: 10px 20px;
	background-color: #4CAF50;
	color: white;
	border: none;
	border-radius: 3px;
	cursor: pointer;
}

button[type="submit"]:hover {
	background-color: #45a049;
}

h1 {
	text-align: center;
}
</style>
</head>
<body>
	<h1>Login</h1>
	<form action="addUserPost.jsp" method="post" id="form_1">
		<div class="form_group">
			<label>UserName:</label> </br> <input type="text" name="userName"
				placeholder="UserName" class="name"> </br>
			<!-- <span class="error"></span> -->
		</div>
		<div class="form_group">
			<label>Password:</label> </br> <input type="password" name="password"
				placeholder="Password" class="name"> </br>
			<!-- <span class="error"></span> -->
		</div>
		<button type="submit">Login</button>
	</form>
</body>
</html>