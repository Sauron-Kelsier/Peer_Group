<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- Heading: Teacher Options -->
	<h1>अध्यापक विकल्प</h1>
	
<!-- Configuring student details (To manage student details in the database -->
	<input type="button" value="छात्र विवरण का विन्यास" onclick="javascript:window.location='http://localhost:9000/hindiConfigureStudent.jsp'"><br>
	
<!-- Start a quiz (To enter the quizzing interface and give details to start the quiz -->
	<input type="button" value="प्रश्नोत्तरी" onclick="javascript:window.location='http://localhost:9000/hindiStartQuiz.jsp'"><br>
	
<!-- View performance: View the performance of the students -->
	<input type="button" value="निष्पादन" onclick="javascript:window.location='http://localhost:9000/hindiViewPerformance.jsp'"><br>
	
<!-- View questions: View the questions from the database -->
	<input type="button" value="संग्रहित प्रश्न" onclick="javascript:window.location='http://localhost:9000/hindiViewQuestions.jsp'"><br>
	
<!-- Upload a document: Uploading any file that the teacher wants the students to read -->
	<input type="button" value="दस्तावेज़" onclick="javascript:window.location='http://localhost:9000/fileUpload.jsp'"><br>
	<p id="bottom" align="right">
	
<!-- Logout: For the teacher to log out -->
	<input type="button" value="लॉग्आऊट" onclick="javascript:window.location='http://localhost:9000/hindiLogin.jsp'">
	</p>
</body>
</html>