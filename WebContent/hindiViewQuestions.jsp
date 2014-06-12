<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>View Questions Interface</title>
</head>
<body>

<!-- View questions interface -->
	<h1>प्रश्न</h1>
	
<!-- Search question by keyword -->
	<input type="button" value="प्रश्न खोज कीवर्ड अनुसार" onclick="javascript:window.location='http://localhost:9000/hindiViewQuestionKeyword.jsp'"><br>
	<input type="button" value="प्रश्न खोज दिनांक अनुसार" onclick="javascript:window.location='http://localhost:9000/hindiViewQuestionDate.jsp'"><br>
	<input type="button" value="प्रश्न खोज विषय अनुसार" onclick="javascript:window.location='http://localhost:9000/hindiViewQuestionSubject.jsp'"><br>

	<p id="bottom" align="right">
	<input type="button" value="वापस" onclick="javascript:window.location='http://localhost:9000/hindiTeacherOptions.jsp'">
</body>
</html>