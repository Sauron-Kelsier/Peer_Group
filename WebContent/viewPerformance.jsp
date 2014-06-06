<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>View Performance</h1>
	<input type="button" value="Show all the performances roll number wise"><br>
	<input type="button" value="Show all the performances date wise"><br>
	<input type="button" value="Show all the performances subject wise"><br>
	<input type="button" value="Show all the performances of an individual" onclick="javascript:window.location='http://localhost:9000/viewPerformanceIndividual.jsp'"><br>
	<input type="button" value="Show all the performances of a date" onclick="javascript:window.location='http://localhost:9000/viewPerformanceDate.jsp'"><br>
	<input type="button" value="Show all the performances of a subject" onclick="javascript:window.location='http://localhost:9000/viewPerformanceSubject.jsp'"><br>
	<p id="bottom" align="right">
		<input type="button" value="Back" onclick="javascript:window.location='http://localhost:9000/teacherOptions.jsp'">
	</p>
	
</body>
</html>