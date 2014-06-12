<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- Heading: Start of a quiz: Give parameters -->
	<h1>प्रश्नोत्तरी प्रारंभ: मापदंड दें</h1>
	
	<!-- action will send the control to a java file and that will send packets to the clients -->
	<form id="startQuiz" name="startQuiz" method="post" action="#">

<!-- Number of students -->	
		छात्रों की संख्या: <input type="text" id="noOfStudents" name="noOfStudents"><br>
		समूह की संख्या: <input type="text" id="noOfGroups" name="noOfGroups"><br>
		एक समूह की संख्या: <input type="text" id="noInEachGroupd" name="noInEachGroup"><br>
		<input type="submit" value="अगला">
		<input type="button" value="साफ">
	</form>
</body>
</html>