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


<%@ page import="test.Hello" %>

<%	
	Hello obj=new Hello();
//importing the class that establishes connection with the database (Hello)
// taking the parameters (roll number, name, password) for inserting into the database
	String id=new String(request.getParameter("rollNumber"));
	String name=new String(request.getParameter("name"));
	try
	{
		Integer id1=Integer.parseInt(id);
		
// password is generated automatically by concatenating name and roll number
// marks is 0, by default
		String pass=new String(name+id);
		System.out.println(pass);
// calling the method that inserts a record in the table
		if(obj.addStudentRecord(id1,name,pass))
		{
			System.out.println("Student added successfully");
			out.println("Student added successfully!!");
%>
			<meta http-equiv="refresh" content="3;url=http://localhost:9000/configureStudent.jsp">
<%
		}
		else
		{
			System.out.println("Alas!!");
		}
	}
	catch(NumberFormatException e)
	{
		System.out.println("Roll Number must be a number");
	}
	
%>
