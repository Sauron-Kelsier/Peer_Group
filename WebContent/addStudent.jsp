<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Add a new student</h1>
	
	<%-- send the data to the file that will store the record in the student table --%>
	<%-- and then redirect back to the configureStudent.jsp page --%>
	<form id="addStudent" name="addStudent" method="post" action="addStudentQuery.jsp">
	Roll Number: <input type="text" id="rollNumber" name="rollNumber"><br>
	Name: <input type="text" id="name" name="name">	<br>
	<input type="submit" value="Add">
	<input type="button" value="Clear">
	<%-- On click clear the value. Check how that can be done --%>
	</form>
</body>
</html>