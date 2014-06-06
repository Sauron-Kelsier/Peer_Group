<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Configure Student Details</h1>
	<input type="button" value="Add a student" onclick="javascript:window.location='http://localhost:9000/addStudent.jsp'">
	<input type="button" value="View details of a student" onclick="javascript:window.location='http://localhost:9000/viewOneStudent.jsp'">
	
	<%-- Redirect to a jsp file that will query all the records and display them --%>
	<input type="button" value="View details of all students">
	<p id="bottom" align="right">
	<input type="button" value="Back" onclick="javascript:window.location='http://localhost:9000/teacherOptions.jsp'">
	</p>
</body>
</html>