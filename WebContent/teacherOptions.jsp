<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Teacher Options</h1>
	<input type="button" value="Configure student details" onclick="javascript:window.location='http://localhost:9000/configureStudent.jsp'"><br>
	<input type="button" value="Start a quiz" onclick="javascript:window.location='http://localhost:9000/startQuiz.jsp'"><br>
	<input type="button" value="View performance" onclick="javascript:window.location='http://localhost:9000/viewPerformance.jsp'"><br>
	<input type="button" value="View questions" onclick="javascript:window.location='http://localhost:9000/viewQuestions.jsp'"><br>
	<input type="button" value="Upload a document" onclick="javascript:window.location='http://localhost:9000/fileUpload.jsp'"><br>
	<p id="bottom" align="right">
	<input type="button" value="Logout" onclick="javascript:window.location='http://localhost:9000/login.jsp'">
	</p>
</body>
</html>