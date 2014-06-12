<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>View question according the subject interface</title>
</head>
<body>

<!-- Heading: Search questions of a particular subject -->
	<h1>प्रश्न खोज विषय अनुसार</h1>
	<form id="viewQuestionSubject" name="viewQuestionSubject" method="post" action="viewQuestionSubjectQuery.jsp">
		विषय: <input type="text" id="subject" name="subject"><br>
		<input type="submit" value="देखो">
		<input type="button" value="वापस" onclick="javascript:window.location='http://localhost:9000/hindiViewQuestions.jsp'">
	</form>

</body>
</html>