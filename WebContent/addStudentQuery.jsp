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


<%@ page import="test.Server" %>

<%	
	Server obj=new Server();
//importing the class that establishes connection with the database (Hello)
// taking the parameters (roll number, name, standard) for inserting into the database
	String rollNumber=new String(request.getParameter("rollNumber"));
	String name=new String(request.getParameter("name"));
	String standard=new String((request.getParameter("standard")));

	try
	{
		
// password is generated automatically by concatenating 1st word of the name and roll number
// questions attempted and correct answeres are 0, by default


// Splitting the word into discrete words to form the password
		String[] sub=name.split(" ",2);
		String word=sub[0];
		//System.out.println(word);
		
// creating the password by concatenating the 1st name and the Roll Number
		String pass=new String(word+rollNumber);
		System.out.println(pass);
		
// calling the method that inserts a record in the table
// if insertion is successful, then 'true' is returned and 'Sucessful addition' message is printed
		if(obj.addStudent(rollNumber,name,pass,standard))
		{
			
			out.println("Student added successfully!!");						// record has been added successfully
		}
		else
		{
			out.println("Alas!! The student has not been added into the database!");			// record not inserted successfully
		}
%>
		<meta http-equiv="refresh" content="3;addStudent.html">
<%

	}
	catch(NumberFormatException e)
	{
		System.out.println("Roll Number must be a number");
	}
	
%>
