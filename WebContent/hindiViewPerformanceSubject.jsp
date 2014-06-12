<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Performance of a particular subject</title>
</head>
<body>

<!-- View all the performances of a particular subject -->
	<h1>निष्पादन एक विषय का</h1>
	<form id="viewSubject" name="viewSubject" method="post" action="viewPerformanceSubjectQuery.jsp">

<!-- The subject whose performance is being asked -->
		Subject: <input type="text" id="subject" name="subject"><br>
		<input type="submit" value="देखो">
		<input type="button" value="वापस" onclick="javascript:window.location='http://localhost:9000/hindiViewPerformance.jsp'">
	</form>

</body>
</html>