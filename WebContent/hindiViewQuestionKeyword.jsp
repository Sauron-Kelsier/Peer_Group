<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search question by keyword interface</title>
</head>
<body>

<!-- Heading: View questions according to keyword -->
	<h1>प्रश्न खोज कीवर्ड अनुसार</h1>
	<form id="viewQuestionKeyword" name="viewQuestionKeyword" method="post" action="viewQuestionKeywordQuery.jsp">
		कीवर्ड: <input type="text" id="keyword" name="keyword"><br>
		<input type="submit" value="देखो">
		<input type="button" value="वापस" onclick="javascript:window.location='http://localhost:9000/hindiViewQuestions.jsp'">
	</form>
	
</body>
</html>