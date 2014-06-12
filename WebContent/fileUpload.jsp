<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>File Uploading Form</title>
</head>
<body>

<h1>File Upload:</h1>
Select a file to upload: <br />
<form id="uploadFile" name="uploadFile" action="UploadServlet" method="post"
                        enctype="multipart/form-data">
<input type="file" name="file" size="50" />
<br />
<input type="submit" value="Upload File" />
<p id="botton" align="right">
<input type="button" value="Back" onclick="javascript:window.location='http://localhost:9000/teacherOptions.jsp'">
</p>
</form>
</body>
</html>

