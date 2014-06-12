<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Performance of a particular date</title>
</head>
<body>

<!-- Performance of a particular date -->
	<h1>निष्पादन एक दिनांक का</h1>
	<form id="viewDate" name="viewDate" method="post" action="viewPerformanceDateQuery.jsp">
	
<!-- Date for which the performance is to be seen -->
 		दिनांक: <input type="text" name="date" placeholder="yyyy-mm-dd"><br>
 		<input type="submit" value="देखो">
		<input type="button" value="वापस" onclick="javascript:window.location='http://localhost:9000/hindiViewPerformance.jsp'">
	</form>

</body>
</html>