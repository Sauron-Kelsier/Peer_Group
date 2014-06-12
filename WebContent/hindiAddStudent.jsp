<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- Heading: Adding a new student -->
	<h1>नया छात्र</h1>
	
	<%-- send the data to the file that will store the record in the student table --%>
	<%-- and then redirect back to the configureStudent.jsp page --%>
	<form id="addStudent" name="addStudent" method="post" action="#">

<!-- Roll number: Roll number of the student to be added -->
	नामांक: <input type="text" id="rollNumber" name="rollNumber"><br>

<!-- Name: Name of the student to be added. -->
	नाम: <input type="text" id="name" name="name">	<br>

<!-- Add button: Initiates the command to store the entered details in the database -->
	<input type="submit" value="रिकॉर्ड जोड़्ना">
	
<!-- Clear button: Clears the values entered in the fields  -->
	<input type="button" value="साफ">

<%-- On click clear the value. Check how that can be done --%>
	</form>
</body>
</html>