<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Upload File</title>
</head>
<body>
	<h1> Upload File</h1>
	<form action="uploadFile.jsp" method="post" enctype="multipart/form-data">
		<input type="file" name="file" accept="image/*">
		<input type="submit" value="Submit">
	</form>
	
</body>
</html>