<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body> 

<%--

<%@ page import="test.Hello" %>
 
<% Hello obj=new Hello(); %>

--%>

	<form id="loginForm" name="loginForm" method="post" action="loginQuery.jsp">
		User ID: <input type="text" id="userId" name="userId"><br> 
		Password: <input type="password" name="userPassword"><br>  
		<input type="submit" name="submit" value="Submit">
		<p id="bottom" align="right">
		<input type="button" value="Exit">
		</p>
	
	</form>
	
	
</body>
</html>