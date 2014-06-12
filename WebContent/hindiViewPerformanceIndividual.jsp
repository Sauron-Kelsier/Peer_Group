<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>View Individual Performance</title>
</head>
<body>

<!-- View Individual Performance -->
	<h1>निष्पादन एक छात्र का</h1>
	<form id="viewIndividual" name="viewIndividual" method="post" action="viewPerformanceIndividualQuery.jsp">
	
<!-- Roll Number: Roll number of the student whose performance is to be seen -->
		नामांक: <input type="text" id="rollNumber" name="rollNumber"><br>
		<input type="submit" value="देखो">
		<input type="button" value="वापस" onclick="javascript:window.location='http://localhost:9000/hindiViewPerformance.jsp'">
	</form>

</body>
</html>