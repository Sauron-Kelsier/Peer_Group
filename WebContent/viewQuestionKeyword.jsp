<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>View questions by matching keyword</h1>
	<form id="viewQuestionKeyword" name="viewQuestionKeyword" method="post" action="#">
		Keyword: <input type="text" id="keyword" name="keyword"><br>
		<input type="submit" value="View">
		<input type="button" value="Back" onclick="javascript:window.location='http://localhost:9000/viewQuestions.jsp'">
	</form>
	
</body>
</html>