<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Start a Quiz: Give Parameters</h1>
	
	<!-- action will send the control to a java file and that will send packets to the clients -->
	<form id="startQuiz" name="startQuiz" method="post" action="#">
		Number of students: <input type="text" id="noOfStudents" name="noOfStudents"><br>
		Number of groups: <input type="text" id="noOfGroups" name="noOfGroups"><br>
		Number of students in each group: <input type="text" id="noInEachGroupd" name="noInEachGroup"><br>
		<input type="submit" value="Next">
		<input type="button" value="Clear">
	</form>
</body>
</html>