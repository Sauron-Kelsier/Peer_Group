<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- Heading: Configure Student Details -->
	<h1>छात्र विवरण का विन्यास</h1>
	
<!-- Adding a student record -->
	<input type="button" value="रिकॉर्ड जोड़्ना" onclick="javascript:window.location='http://localhost:9000/hindiAddStudent.jsp'">
	
<!-- Viewing the student records -->
	<input type="button" value="छात्र विवरण" onclick="javascript:window.location='http://localhost:9000/hindiViewOneStudent.jsp'">

<%-- Redirect to a jsp file that will query all the records and display them --%>
<!-- View details of all the students -->
	<input type="button" value="सभी छात्र विवरण" onclick="javascript:window.location='http://localhost:9000/viewAllStudentQuery.jsp'" >
	<p id="bottom" align="right">
	
<!-- Back button: Click to go the previous interface -->
	<input type="button" value="वापस" onclick="javascript:window.location='http://localhost:9000/hindiTeacherOptions.jsp'">
	</p>
</body>
</html>