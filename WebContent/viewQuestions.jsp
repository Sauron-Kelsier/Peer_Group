<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>View Questions</h1>
	<input type="button" value="Search a question by keyword" onclick="javascript:window.location='http://localhost:9000/viewQuestionKeyword.jsp'"><br>
	<input type="button" value="Search a question by date" onclick="javascript:window.location='http://localhost:9000/viewQuestionDate.jsp'"><br>
	<input type="button" value="Search a question by subject" onclick="javascript:window.location='http://localhost:9000/viewQuestionSubject.jsp'"><br>

	<p id="bottom" align="right">
	<input type="button" value="Back" onclick="javascript:window.location='http://localhost:9000/teacherOptions.jsp'">
</body>
</html>