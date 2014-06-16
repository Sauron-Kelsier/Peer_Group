<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>View Questions</h1>
	<form name="questionQuery" method="post" action="teacherQuestionQuery.jsp">
		Subject: <input type="text" name="subject" value=""><br>
		Standard: <input type="text" name="standard" value=""><br>
		Level: <input type="text" name="level" value=""><br>
		Keyword: <input type="text" name="keyword" value=""><br>
		From Date: <input type="text" name="fromDate" value=""><br>
		To Date: <input type="text" name="toDate" value=""><br>
		<input type="submit" name="submit" value="Submit">
	</form>
	

	<p id="bottom" align="right">
	<input type="button" value="Back" onclick="javascript:window.location='http://localhost:9000/teacherOptions.jsp'">
</body>
</html>