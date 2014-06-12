<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>View Question by date interface</title>
</head>
<body>

<!-- Heading: View questions of a particular date -->
	<h1>प्रश्न खोज दिनांक अनुसार</h1>
	<form id="viewQuestionDate" name="viewQuestionDate" method="post" action="viewQuestionDateQuery.jsp">
	
<!-- Date: Enter the date for which the question needs to be viewed -->
		दिनांक: <input type="text" id="date" name="date" placeholder="yyyy-mm-dd"><br>
		<input type="submit" value="देखो">
		<input type="button" value="वापस" onclick="javascript:window.location='http://localhost:9000/hindiViewQuestions.jsp'">
	</form>

</body>
</html>