<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Performance Displaying Interface</title>
</head>
<body>

<!-- Heading: View Performance Interface -->
	<h1>निष्पादन</h1>

<!-- View all performances according to roll number -->
	<input type="button" value="निष्पादन नामांक अनुसार" onclick="javascript:window.location='http://localhost:9000/viewAllPerformanceRollQuery.jsp'"><br>

<!-- View all performances according to date -->
	<input type="button" value="निष्पादन दिनांक अनुसार" onclick="javascript:window.location='http://localhost:9000/viewAllPerformanceDateQuery.jsp'"><br>

<!-- View all performances according to subject -->
	<input type="button" value="निष्पादन विषय अनुसार" onclick="javascript:window.location='http://localhost:9000/viewAllPerformanceSubjectQuery.jsp'"><br>
	
<!-- View all performances of an individual -->
	<input type="button" value="निष्पादन एक छात्र का" onclick="javascript:window.location='http://localhost:9000/viewPerformanceIndividual.jsp'"><br>
	
<!-- View all performances of a date -->
	<input type="button" value="निष्पादन एक दिनांक का" onclick="javascript:window.location='http://localhost:9000/viewPerformanceDate.jsp'"><br>
	
<!-- View all performances of a subject -->
	<input type="button" value="निष्पादन एक विषय का" onclick="javascript:window.location='http://localhost:9000/hindiViewPerformanceSubject.jsp'"><br>
	<p id="bottom" align="right">
		<input type="button" value="वापस" onclick="javascript:window.location='http://localhost:9000/hindiTeacherOptions.jsp'">
	</p>
	
</body>
</html>