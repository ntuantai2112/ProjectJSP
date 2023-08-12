<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
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
	String url = "";
	// Đường dẫn tới thư mục trên máy chủ (server) nơi mà tập tin ảnh sẽ được lưu trữ sau khi upload.
	String uploadDirectory = "E:\\WorkSpace(Wrking directory with java)\\Java Sevlet\\BanHangJSP\\src\\main\\webapp\\image";
	// Để quản lý việc lưu trữ tạm thời của các tập tin upload.
	DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();
	// Thiết lập thư mục tạm thời cho việc lưu trữ tập tin tạm thời trước khi chúng được sao chép vào thư mục đích.
	diskFileItemFactory.setRepository(new File(uploadDirectory));
	// Để xử lý việc nhận và xử lý yêu cầu upload tập tin.
	ServletFileUpload servletFileUpload = new ServletFileUpload(diskFileItemFactory);

	try {
		List<FileItem> fileItems = servletFileUpload.parseRequest(request);
		for (FileItem fileItem : fileItems) {
			if (!fileItem.isFormField()) {
		if (fileItem.getFieldName().equals("file")) {
			File file = new File(uploadDirectory + File.separator + fileItem.getName());
			fileItem.write(file);
			url = "/BanHangJSP/image/" + fileItem.getName();
		}
			}
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	%>

	<img alt="a" src="<%=url%>">

</body>
</html>