<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>View Details of a Student</h1>
	<form id="viewOneStudent" name="viewOneStudent" method="post" action="viewOneStudentQuery.jsp">
		Roll Number: <input type="text" id="rollNumber" name="rollNumber"><br>
		<input type="submit" value="View">
		<input type="button" value="Back" onclick="javascript:window.location='http://localhost:9000/configureStudent.jsp'">
	</form>
</body>
</html>