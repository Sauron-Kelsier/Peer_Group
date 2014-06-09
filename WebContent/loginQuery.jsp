<%--

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	

</body>
</html>

--%>

<%@page import="com.sun.istack.internal.NotNull"%>
<%@ page import="test.Hello" %>

<% 
// Imported the class responsible for connectionis (Hello.class)
// Creating a Hello type of object
//Taking in the parameters from the front end
	Hello obj=new Hello();
	String id=new String(request.getParameter("userId"));
	String pass=new String(request.getParameter("userPassword"));
	try
	{
		Integer id1=Integer.parseInt(id);
	
// Calling a function that will query the database and find whether the required record is present or not
// If correct, then redirected to the next page else comes back to login page
		if(obj.loginQuery(id1,pass))
		{
%>			Congrats! You did it!!
			<meta http-equiv="refresh" content="0;url=http://localhost:9000/teacherOptions.jsp">
		
<%
// proper messages are also given for ease of the user (teacher)
		}
		else
		{
%>		
			Sorry! Your credentials are incorrect!");
			<meta http-equiv="refresh" content="2;url=http://localhost:9000/login.jsp">
<%
		}
	}
	catch (NumberFormatException e)
	{
		out.println("User Id is a number...");
%>
		<meta http-equiv="refresh" content="2;url=http://localhost:9000/login.jsp">
<%

	}

// just to see what was entered by the user. Not be kept in the final version
	System.out.println(id+" "+pass);
%>