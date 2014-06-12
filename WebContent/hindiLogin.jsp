
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- Heading: Login Details -->
	<h1>प्रवेश जानकारी</h1>
	<form id="loginForm" name="loginForm" method="post" action="hindiTeacherOptions.jsp">
	
<!--  Login ID -->
		प्रयोक्ता पहचान: <input type="text" id="userId" name="userId"><br>

<!--  Password --> 
		पास्वर्ड: <input type="password" name="userPassword"><br>
		  
<!-- value="Submit" (For submission) -->
		<input type="submit" name="submit" value="प्रस्तुति">
		<p id="bottom" align="right">
		
<!-- value="Exit" (For exiting the interface) -->
		<input type="button" value="निकास">
		</p>
	</form>
</body>
</html>
